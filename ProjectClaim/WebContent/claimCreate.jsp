<%@page import="com.insurance.claim.service.PolicyServiceImpl"%>
<%@page import="com.insurance.claim.service.PolicyService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%-- <h4>${param.policyNum }</h4> --%>
	<%
		PolicyService pService = new PolicyServiceImpl();
		long policyNumberClaim = Long.parseLong(request.getParameter("policyNum"));

		// Storing the policy number into the application Context
		ServletContext cContext = getServletContext();
		cContext.setAttribute("policyNumber", policyNumberClaim);

		// checking the Claim has Created or not
		boolean checkPolicy = pService.isPolicyNumber(policyNumberClaim);

		if (checkPolicy == false) {
	%>

	
					<h3>Create Claim</h3>
					
						<form action="ClaimQuestions1.jsp" method="post" name="claimForm">
							
								<input type="text" id="claimReason"
									placeholder="Enter Claim Reason" name="claimReason"
									required="required"> <br/>
							
								<input type="text" id="location"
									placeholder="Enter incident Location" name="claimLocation"
									required="required">  <br/>
							
						
								<input type="text" id="city"
									placeholder="Enter incident city" name="incidentCity"
									required="required">  <br/>
							
								<input type="text" id="state"
									placeholder="Enter incident State" name="incidentState"
									required="required">  <br/>
							
								<input type="text" id="zip"
									placeholder="Enter incident Zip Code" name="incidentZip"
									required="required">  <br/>
							
								<select class="custom-select" id="cliamType" name="claimType">
									<option selected>Choose Claim Type .....</option>
									<option value="ClaimQuestions1.jsp">BusinessAuto</option>
									<option value="ClaimQuestions2.jsp">Restaurant</option>
									<option value="ClaimQuestions3.jsp">Apartment</option>
									<option value="ClaimQuestions4.jsp">General Merchant</option>
								</select>
								
							
							<input type="submit" value="NEXT" /> <br/>
						</form>
					
	<%
		} else {
	%>
	
			<h5 style="color: red;">Claim Has Been Created for Policy No:
				${param.policyNum }</h5>
		
	<%
		}
	%>
</body>
</html>