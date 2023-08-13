<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Change Password</title>

</head>

<body>
  <%@ include file="MyMsg.jsp"  %>
Change Password 
<form action="/BankApp/servlet/Login" method="POST" id="changePwdForm">
<br>Username : <input type="text" name="username" id="username" required><br><br>
Old Password : <input type="password" name="password" id="password" required><br><br>
New Password : <input type="password" name="newPassword" id="newPassword" required><br><br>
Confirm New Password : <input type="password" name="confirmNewPassword" id="confirmNewPassword" required> <br><br>
<br>
<input type=hidden  name="action" id="action" value="changePassword" />
<input type="submit" value="Submit"> 
<input type="reset" value="Reset" id="reset" >

<br><br><a href="/BankApp/index.jsp">Main Page</a> for the application
</form>
</body>
</html>