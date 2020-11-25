<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="viewClaim.jsp" method="post" name="claimForm">
	<% out.println("Restaurant type?");%><br>
	<input type="radio" value="light" name="light"id="light"/>
	<label for="light">Only dining</label><br>
	<input type="radio" value="heavy" name="light"id="heavy"/>
	<label for="heavy">Dining with bar</label><br>
	<input type="radio" value="truck" name="light"id="truck"/>
	<label for="truck">Dining with bar and restaurant</label><br>
	
		<% out.println("Restaurant sq ft?");%><br>
		<input type="radio" value="less" name="less"id="less"/>
		<label for="less">Less than 1500</label><br>
		<input type="radio" value="between" name="less"id="between"/>
		<label for="between">1500-5000</label><br>
		<input type="radio" value="more" name="less"id="more"/>
		<label for="more">More than 5000</label><br>
	
	<% out.println("Number of sprinklers ?");%><br>
		<input type="radio" value="high" name="high"id="high"/>
		<label for="high">up to 20</label><br>
		<input type="radio" value="between" name="high"id="between"/>
		<label for="between">21-40</label><br>
		<input type="radio" value="more" name="high"id="more"/>
		<label for="more">more than 40</label><br>	
		<input type="submit" value="NEXT" /> <br/>
</body>
</html>