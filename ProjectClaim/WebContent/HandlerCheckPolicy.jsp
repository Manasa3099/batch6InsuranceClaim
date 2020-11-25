<%@page import="java.util.ArrayList"%>
<%@page import="com.insurance.claim.dto.Policy"%>
<%@page import="java.util.List"%>
<%@page import="com.insurance.claim.service.PolicyServiceImpl"%>
<%@page import="com.insurance.claim.service.PolicyService"%>
<%@page import="com.insurance.claim.service.ClaimServiceImpl"%>
<%@page import="com.insurance.claim.service.ClaimService"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Handler Check Policy</title>
</head>
<body>
	<%
		List<Policy> policies = new ArrayList();
		PolicyService pService = new PolicyServiceImpl();
		String getAccNo = request.getParameter("accNum");
		long accNo = Long.parseLong(getAccNo);
		policies = pService.viewPolicies(accNo);
		session.setAttribute("policiesDetails", policies);
		if (policies.isEmpty()) {
	%>
	
			<h5 style="color: red;">No policy For Account No ${param.accNum}</h5>
		
	<%
		} else {
	%>
			<table>
				<tr>
					<th>Policy Number</th>
					<th>Policy Premium</th>
					<th>Account Number</th>
					<th>CREATE</th>
				</tr>
			
				<c:forEach items="${policiesDetails}" var="p">
					<tr>
						<td>${p.policy_number}</td>
						<td>${p.policyPremium}</td>
						<td>${p.accountNumber}</td>
						<td><a href="claimCreate.jsp?policyNum=${p.policy_number}">CREATE
								CLAIM</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	<%
		}
	%>
</body>
</html>