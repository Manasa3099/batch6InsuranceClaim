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
	<% out.println("Apartment sq ft?");%><br>
		<input type="radio" value="less" name="less"id="less"/>
		<label for="less">upto 1500</label><br>
		<input type="radio" value="between" name="less"id="between"/>
		<label for="between">from 1500 to 5000</label><br>
		<input type="radio" value="more" name="less"id="more"/>
		<label for="more">More than 5000</label><br>
	
	<% out.println("Number of sprinklers ?");%><br>
		<input type="radio" value="high" name="high"id="high"/>
		<label for="high">up to 5</label><br>
		<input type="radio" value="between" name="high"id="between"/>
		<label for="between">6-10</label><br>
		<input type="radio" value="more" name="high"id="more"/>
		<label for="more">more than 10</label><br>	
		
		<% out.println("Build Year ?");%><br>
		<input type="radio" value="high" name="high"id="high"/>
		<label for="high">before 2000</label><br>
		<input type="radio" value="between" name="high"id="between"/>
		<label for="between">2000-2010</label><br>
		<input type="radio" value="more" name="high"id="more"/>
		<label for="more">after 2010</label><br>	
		
			<input type="submit" value="NEXT" /> <br/>
</body>
</html>