<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register New User</title>
</head>
<body>
  <%@ include file="MyMsg.jsp"  %>
<form action="/BankApp/confirmationPage.jsp" method="POST" id="newUser">
<br>Username : <input type="text" name="name" id="name" required><br><br>
Password : <input type="password" name="password" id="password" required><br><br>
Confirm Password : <input type="password" name="confirmPassword" id="confirmPassword" required> <br><br>
Deposit Amount: <input type="text" name="balance" id="balance" required><br>
<br>
<input type=hidden  name="action" id="action" value="registerPage" />
<input type="submit" value="Submit"> 
<input type="reset" value="Reset" id="reset" >

<br><br><a href="/BankApp/index.jsp">Main Page</a> for the application
</form>

</body>
</html>