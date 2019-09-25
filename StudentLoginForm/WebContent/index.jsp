<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href = "css/loginform.css">
<script type ="text/javascript">
	function loginValidate() {
		if(document.StudentLogin.Email.value=="")
		{
			alert("Please provide your Email id");
			document.StudentLogin.Email.focus();
			return false;	
		}
		
		if(document.StudentLogin.Password.value=="")
		{
			alert("Please provide your Password");
			document.StudentLogin.Password.focus();
			return false;	
		}
		return true;
}
</script>
</head>
<body>
	<div class="square">
	<h2>Student Login Form</h2>
	<hr>
	<form action = "login.jsp" method="post" name = StudentLogin onsubmit = "return(loginValidate());">
	<label>Email </label>
	<input type="text" name="Email">
	<label>Password </label>
	<input type="password" name="Password">
	<input type="submit" class ="button" name="login" value="Login">	
	</form>	
	<p style= "font-family:Century Gothic" align ="center">Not a Member? 
	<a href="Registration.jsp">Register here</a> 
</p>
	
	</div>


</body>
</html>