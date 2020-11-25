<%@page import="com.insurance.claim.service.PolicyServiceImpl"%>
<%@page import="com.insurance.claim.service.PolicyService"%>
<%@page import="com.insurance.claim.dto.Policy"%>
<%@page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
</head>
<%
    PolicyService psService = new PolicyServiceImpl();
%>
<body>
    <%
        List<Policy> policiesList = new ArrayList<Policy>();
        policiesList = psService.getPolicyList();
        session.setAttribute("policyList", policiesList);
    %>
        <table>
                <tr>
                    <th>Policy Number</th>
                    <th>Policy Premium</th>
                    <th>Account Number</th>
                    <th>CREATE</th>
                </tr>
           
                <c:forEach items="${policyList}" var="p">
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
</body>
</html>