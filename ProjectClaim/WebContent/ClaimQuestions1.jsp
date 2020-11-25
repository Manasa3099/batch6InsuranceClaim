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
	<% out.println("Vehicle type?");%><br>
	<input type="radio" value="light" name="light"id="light"/>
	<label for="light">LIGHT</label><br>
	<input type="radio" value="heavy" name="light"id="heavy"/>
	<label for="heavy">HEAVY</label><br>
	<input type="radio" value="truck" name="light"id="truck"/>
	<label for="truck">TRUCK</label><br>
	
		<% out.println("Vehicle Model Year?");%><br>
		<input type="radio" value="less" name="less"id="less"/>
		<label for="less">Less than 2000</label><br>
		<input type="radio" value="between" name="less"id="between"/>
		<label for="between">2001-2010</label><br>
		<input type="radio" value="more" name="less"id="more"/>
		<label for="more">More than 2010</label><br>
	
	<% out.println("Vehicle Model ?");%><br>
		<input type="radio" value="high" name="high"id="high"/>
		<label for="high">High Segment</label><br>
		<input type="radio" value="between" name="high"id="between"/>
		<label for="between">Mid Segment</label><br>
		<input type="radio" value="more" name="high"id="more"/>
		<label for="more">Economy</label><br>	
		<input type="submit" value="NEXT" /> <br/>
</form>
</body>
</html>