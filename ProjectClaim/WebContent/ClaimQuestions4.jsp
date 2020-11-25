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
	<% out.println("Business Type?");%><br>
		<input type="radio" value="less" name="less"id="less"/>
		<label for="less">General Store</label><br>
		<input type="radio" value="between" name="less"id="between"/>
		<label for="between">Hardware</label><br>
		<input type="radio" value="more" name="less"id="more"/>
		<label for="more">Clothing</label><br>
	
	<% out.println("Asset value?");%><br>
		<input type="radio" value="high" name="high"id="high"/>
		<label for="high">less than 1000000</label><br>
		<input type="radio" value="between" name="high"id="between"/>
		<label for="between">1000001-2500000</label><br>
		<input type="radio" value="more" name="high"id="more"/>
		<label for="more">more than 2500000</label><br>	
		
		<% out.println("Inflammable Objects?");%><br>
		<input type="radio" value="high" name="more"id="high"/>
		<label for="high">Yes</label><br>
		<input type="radio" value="between" name="more"id="between"/>
		<label for="between">No</label><br>
		<input type="radio" value="more" name="more"id="more"/>
		<label for="more">May be</label><br>	
		
			<input type="submit" value="NEXT" /> <br/>

</body>
</html>