<%@page import="com.insurance.claim.dto.Accounts"%>
<%@page import="java.util.List"%>
<%@page import="com.insurance.claim.dto.UserRole"%>
<%@page import="com.insurance.claim.service.ClaimServiceImpl"%>
<%@page import="com.insurance.claim.service.ClaimService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Claim Creation</title>
</head>
<body>
	<%
		ClaimService cService = new ClaimServiceImpl();
		String userRole = request.getParameter("usrName");
		/* out.print(userRole); */
		List<Accounts> accDetails = cService.getHandlerPolicyDetails(userRole);
		if(accDetails.size()>1){
			System.out.println(accDetails.toString());
		}
		
		session.setAttribute("accDetails", accDetails);
		if (accDetails.isEmpty()) {
	%>
	
			<h5 style="color: red;">No Insured registered!</h5>
		
	<%
		} else {
	%>
	
			<h5 style="color: blue;">Welcome "${param.usrName}" Your Insured
				Person's are</h5>
		
	<table>
	
				<tr>
					<th>Account Number</th>
					<th>Insured Name</th>
					<th>Handler Name</th>
					<th></th>
				</tr>
		
		
		<%
		for(Accounts p:accDetails){
			System.out.println(p.toString());
			System.out.println(p.getAccNo());
			long acNo=p.getAccNo();
			
			out.write("<tr><td>"+acNo+" </td>");
			out.write("<td>"+p.getIncName()+" </td>");
			out.write("<td>"+p.getUserName()+" </td>");
			
			out.write("<td><a href='HandlerCheckPolicy.jsp?accNum="+acNo+"'>CheckPolicy</a></td></tr>");
		
		}
		
	
		%>
		
		</table>
			

				<!--<c:forEach items="${accDetails }" var="vc">
					<tr>
						<td>${vc.accNo }</td>
						<td>${vc.incName }</td>
						<td>${vc.userName }</td>
						<td><a href="HandlerCheckPolicy.jsp?accNum=${vc.accNo}">Check Policy</a><br/></td>
						
					</tr>
				</c:forEach>-->
		
					
	<%
		}
	%>
	
</body>
<a href="ClaimHandler.jsp">Return to handler home page</a>
</html>