<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Registration Form</title>
<link rel="stylesheet" href = "css/styles.css">
<script type = "text/javascript" src = "js/vali.js"></script>
</head>
<body>
<div class="square">
	<h2>Student Registration Form</h2>	
	<hr>
	<form action = "signup.jsp" method="post" name="StudentRegistration" onsubmit = "return(validate());">
	<table  cellpadding = "10">
	<tr><td>FULL NAME :</td>
	<td><input type="text" name="Full_Name" maxlength="50" size = "35"/> 
	</td>
	</tr>
	<tr><td>EMAIL ID :</td>
	<td><input type="text" name="Email_Id" maxlength="100" size = "35"/></td>
	</tr>
		
	<tr>
		<td>PASSWORD :</td>
		<td>
			<input type="password" name="Password" 	size = "35" />
			</td>
	</tr>		
		
	<tr>
		<td>CONFIRM PASSWORD :</td>
		<td>
			<input type="password" name="Cpassword" size = "35"/>				
			</td>
	</tr>
		
	<tr>
		<td>MOBILE NUMBER :</td>
		<td>
			<input type="number" name="Mobile_Number" maxlength="10" />
				(10 digit number)
			</td>
		</tr>
		
		<tr>
			<td>COLLEGE :</td>
			<td><input type="text" name="College" maxlength="100" size="35"/> 
			</td>
		</tr>
		
		<tr>
			<td>BRANCH :</td>
			<td><input type="text" name="Branch" maxlength="30" size="35"/> 
			</td>
		</tr>
		
		
		
		<tr>
			<td colspan="2" align="center">
				<input type="submit" class ="button"	value="Submit">
				<input type="reset" class = "button"	value="Reset">
			</td>
		</tr>
	</table>
	
	</form>
</div>

<script>
		
			</script>

</body>
</html>