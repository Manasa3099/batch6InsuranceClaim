<%@page import="com.insurance.claim.dto.PolicyDetails"%>
<%@page import="com.insurance.claim.service.PolicyServiceImpl"%>
<%@page import="com.insurance.claim.service.PolicyService"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.insurance.claim.dto.Claim"%>
<%@page import="java.util.List"%>
<%@page import="com.insurance.claim.service.ClaimServiceImpl"%>
<%@page import="com.insurance.claim.service.ClaimService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Report Generation</title>
</head>
<body>
	<!-- 	<h4>Final Report will be print here!! progress is going
		on...........</h4> -->
	<%
		String policyNo = request.getParameter("policyNumber");
			long policyNumber = (long) Long.parseLong(policyNo);

			Claim claim = new Claim();
			ClaimService cService = new ClaimServiceImpl();
			claim = cService.getClaimDetails(policyNumber);
			session.setAttribute("claimObj", claim);

			// retrieving the Questions Id and answers from the policyDetails
			List<PolicyDetails> pList = new ArrayList();
			PolicyService pService = new PolicyServiceImpl();
			pList = pService.getPolicyDetails(policyNumber);
			session.setAttribute("policyDetails", pList);

			// retrieving the questions from the database
	%>

	<jsp:useBean id="claimObj" class="com.insurance.claim.dto.Claim" scope="session"></jsp:useBean>
	<table>
				<tr>
					<th>CLAIM REPORT</th>
					<th></th>
				</tr>
			
				<tr>
					<td>Claim Number</td>
					<td>${claimObj.claimNumber }</td>
				</tr>
				<tr>
					<td>Claim Reason</td>
					<td>${claimObj.claimReason }</td>
				</tr>
				<tr>
					<td>Claim Location</td>
					<td>${claimObj.incidentLocation }</td>
				</tr>
				<tr>
					<td>Claim City</td>
					<td>${claimObj.incidentCity }</td>
				</tr>
				<tr>
					<td>Claim State</td>
					<td>${claimObj.incidentState }</td>
				</tr>
				<tr>
					<td>Pin Code</td>
					<td>${claimObj.incidentZip }</td>
				</tr>
				<tr>
					<td>Calim Type</td>
					<td>${claimObj.claimType }</td>
				</tr>
				<tr>
					<td>Policy Number</td>
					<td>${claimObj.policyNumber }</td>
				</tr>
			</tbody>
		
	
		
				<tr>
					<%
						for (PolicyDetails pDetails : pList) {
							out.println("<td>" + pDetails.getQuestionId() + "</td>");
							String question = cService.getClaimQuestions(pDetails.getQuestionId());
							out.println("<td>" + question + "</td>");
							out.println("<td>" + pDetails.getAnswer() + "</td>");
						}
					%>
				</tr>
			</table>

</body>
</html>