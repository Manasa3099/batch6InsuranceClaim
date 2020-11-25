<%@page import="com.insurance.claim.service.ClaimServiceImpl"%>
<%@page import="com.insurance.claim.service.ClaimService"%>
<%@page import="com.insurance.claim.dto.Claim"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Claim Handler View</title>
</head>
<body>
	<%
		ClaimService cService = new ClaimServiceImpl();
		String user_name = request.getParameter("usrName");

		// Retrieving the Claim for Handler
		List<Claim> claims = new ArrayList();
		claims = cService.getClaimHandlerCalim(user_name);
		session.setAttribute("HandlerClaimView", claims);
		if (claims.isEmpty()) {
	%>
	<div class="container" style="margin-top: 50px;">
		<div class="card-header alert alert-danger">
			<h5 style="color: red;">No Claim Generated!!</h5>
			<a href="ClaimHandler.jsp">Return to handler home page</a>
		</div>
	</div>
	<%
		} else {
	%>
	<div class="container" style="margin-top: 50px;">
		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th>Claim Number</th>
					<th>Claim Reason</th>
					<th>Street Name</th>
					<th>City</th>
					<th>State</th>
					<th>Pin Code</th>
					<th>Claim Type</th>
					<th>Policy Number</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${HandlerClaimView }" var="Hc">
					<tr>
						<td>${Hc.claimNumber }</td>
						<td>${Hc.claimReason }</td>
						<td>${Hc.incidentLocation }</td>
						<td>${Hc.incidentCity }</td>
						<td>${Hc.incidentState }</td>
						<td>${Hc.incidentZip }</td>
						<td>${Hc.claimType }</td>
						<td>${Hc.policyNumber }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<%
		}
	%>
</body>
</html>