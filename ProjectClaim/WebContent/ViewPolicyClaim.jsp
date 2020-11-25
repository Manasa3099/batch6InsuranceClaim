<%@page import="java.util.ArrayList"%>
<%@page import="com.insurance.claim.dto.Policy"%>
<%@page import="java.util.List"%>
<%@page import="com.insurance.claim.service.PolicyServiceImpl"%>
<%@page import="com.insurance.claim.service.PolicyService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Policy</title>
</head>
<body>
	<%
		PolicyService pService = new PolicyServiceImpl();
		List<Policy> pList = new ArrayList();

		String userName = request.getParameter("usrName");
		out.print(userName);
		pList = pService.viewInsuredPolicy(userName);

		session.setAttribute("pDetails", pList);
		if (pList.isEmpty()) {
	%>
	
			<h5 style="color: red;">{param.PolicyNotFoundException}</h5>
		
	<%
		} else {
	%>
	<br>
	<table>
				<tr>
					<th>Policy Number</th>
					
					<th>Policy Premium</th>
					<th>Account Number</th>
					<th>CREATE</th>
				</tr>
			<br>
				<c:forEach items="${pDetails}" var="p">
					<tr>
						<td>${p.policy_number}</td>
						
						<td>${p.policyPremium}</td>
						<td>${p.accountNumber}</td>
						<td><a
							href="claimCreate.jsp?policyNum=${p.policy_number}">CREATE
								CLAIM</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	<%
		}
	%>
	<a href="insuredPage.jsp">Return to admin home page</a>
</body>
</html>