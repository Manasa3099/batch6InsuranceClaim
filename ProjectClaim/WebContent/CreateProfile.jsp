<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Profile</title>
<script src="LoginFormValidation.js" type="text/javascript"></script>
</head>
<body>
        <h3>Create Profile</h3>
        <form action="ProfileCreationController" method="post" name="loginForm">
                <input type="text"id="username"
                    placeholder="Enter username" name="user_name"
                    required="required"> <br>
                <input type="password" id="pass"
                    placeholder="Enter password" name="pass" required="required">
                <br>
                <select id="roleCode" name="roleCode">
                    <option selected>Choose Roles .....</option>
                    <option value="Handler">CLAIM HANDLER</option>
                    <option value="Insured">INSURED</option>
                 
                </select>
            <input type="submit" value="Submit" onclick='return(validate())'>
        </form>
        
</body>
</html>