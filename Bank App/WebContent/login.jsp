<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
     <title>Banking Example</title>
</head>

<body>
  <%@ include file="MyMsg.jsp"  %>
<h3>Please enter your userid and password to see your account statement:</h3><p>

<form action="/BankApp/servlet/Login" method="POST">
Userid : <input type="text" name="userid"><br><br>
Password : <input type="password" name="password"><br><br>
<input type=hidden  name="action" id="action" value="login" />
<input type="submit" value="Show Statement">
</form>

</body>
</html>