<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
	function validate(){
		var uname=document.myForm.uname.value;
		if(uname==""){
				alert("Please Enter username of 8 characters");
				document.myForm.uname.focus();
				return false;
			}
		if(uname.length != 8){
			alert("Please Enter username of 8 characters");
			document.myForm.uname.focus();
			return false;
			}
		var pass=document.myForm.pass.value;
		var illegalChar = /[w_]/;
		if(pass==""){
				alert("password cannot be empty");
				document.myForm.pass.focus();
				return false;
			}
		else if(illegalChar.test(pass)){
			alert("Password contains illegal characters");
			document.myForm.pass.focus();
			return false;
			}
		
	}
	
</script>
</head>
<body>
	
	<form action="Login" method="post" name="myForm">
		Enter Username: <input type="text" name="uname"><br>
		Enter Password:	<input type="password" name="pass">
		<input type="submit" value="login" onclick="return validate();">
	</form>

</body>
</html>