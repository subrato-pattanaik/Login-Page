function validate(){

	if(document.StudentRegistration.Full_Name.value=="")
	{
		alert("Please provide your name");
		document.StudentRegistration.Full_Name.focus();
		return false;	
	}
	
var email = document.StudentRegistration.Email_Id.value;
  atpos = email.indexOf("@");
  dotpos = email.lastIndexOf(".");
 if (email == "" || atpos < 1 || ( dotpos - atpos < 2 )) 
 {
     alert("Please enter correct email ID")
     document.StudentRegistration.Email_Id.focus() ;
     return false;
 }
 
 var pass = document.StudentRegistration.Password.value;
 var cpass = document.StudentRegistration.Cpassword.value;
 
 	if(pass.length<6)
	 {
 		alert("Password must be at least 6 characters long.");  
 		return false;  
	 }
 	if(pass!=cpass)
	 {
 		alert("Confirm Password doesn't matched with Password"); 
 		return false;
	 }
 
	 if( document.StudentRegistration.Mobile_Number.value == "" ||  isNaN( document.StudentRegistration.Mobile_Number.value) ||
           document.StudentRegistration.Mobile_Number.value.length != 10 )
   {
     alert( "Please provide a Mobile No in the format 123. and max length is 10" );
     document.StudentRegistration.Mobile_Number.focus() ;
     return false;
   }
		
	
	
	if(document.StudentRegistration.College.value=="")
	{
		alert("Please provide your College");
		document.StudentRegistration.College.focus();
		return false;	
	}
	
	if(document.StudentRegistration.Branch.value=="")
	{
		alert("Please provide your Branch");
		document.StudentRegistration.Branch.focus();
		return false;	
	}
	

	return true;
}