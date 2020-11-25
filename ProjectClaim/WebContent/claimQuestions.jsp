<%@page import="com.insurance.claim.dto.Claim"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.insurance.claim.dto.ClaimQuestions"%>
<%@page import="java.util.List"%>
<%@page import="com.insurance.claim.service.ClaimServiceImpl"%>
<%@page import="com.insurance.claim.service.ClaimService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		// getting the policy number from servletContext
		
		ServletContext cContext = getServletContext();
		long policyNumber = (long) cContext.getAttribute("policyNumber");
		
		// retrieving the claim questions
		
		ClaimService cService = new ClaimServiceImpl();
		List<ClaimQuestions> questionsDetails = new ArrayList<ClaimQuestions>();
		questionsDetails = cService.getAllClaimQuestions(policyNumber);
		session.setAttribute("Questions", questionsDetails);
	%>
	
		<form action="QuestionHandler" method="post" >
			
					<tr>
						<th>QUES ID</th>
						<th>Question</th>
						<th>Choice 1</th>
						<th>Choice 2</th>
					</tr>
				
					<c:forEach items="${Questions}" var="c">
						<tr>
							<td>${c.quesId}</td>
							<td>${c.quesDesc}</td>
							<td>
								
									<input type="radio" id="check1"
										value="yes" name="${c.quesId}">
								
								<div style="margin-left: 30px;">${c.quesAns1}</div>
							</td>
							<td>
								<div class="form-check">
									<input type="radio" class="form-check-input" id="check2"
										value="no" name="${c.quesId}" />
								</div>
								<div style="margin-left: 30px;">${c.quesAns2}</div>
							</td>
						</tr>
					</c:forEach>
				
			<input type="submit" value="CREATE CLAIM">
		</form>

	
			<h5 style="color: red;">Claim Has Been Created for Policy No:
				${param.policyNum} and Claim Number: ${param.claim_no }</h5>
		
</body>
</html>