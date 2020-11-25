<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<script src="LoginFormValidation.js" type="text/javascript"></script>
</head>
<body>
    <h3>Claim Registration</h3>
        <h3>Login Page</h3>
            <form action="LoginController" method="post" name="loginForm">
            <label for="username"><b>Username</b></label>
                <input type="text" id="username" placeholder="Enter username" name="user_name" required="required"><br>
                <label for="password"><b>Password</b></label>
                <input type="password" id="pass" placeholder="Enter password" name="pass" required="required"><br>
                <input type="submit" value="Submit" onclick='return(validate())'>
            </form>
        
</body>
</html>