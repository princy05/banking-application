<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="myprefix" uri="WEB-INF/message.tld"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Banking Application</title>
</head>
<body>
<% 
if(request.getAttribute("value") != null){
	out.print(request.getAttribute("value").toString());
}


%>
<%@ include file="MyMsg.jsp"  %>
We talk about the basic concepts of the Servlet model. This web application contains the following examples from the slide. 

<ol>
<li>This web application also implements the simple banking application explained in the slide. Here is the <a href="/BankApp/login.jsp">Login page</a> for the application<br>
As explained, the usernames/passwords are hard coded in the LoginServlet. You can use any of the following values:<br>
1. ann/aaa<br>
2. john/jjj<br>
3. mark/mmm<br>
<br>
Once you login, you should see the account information of the user.
<br>
<br>
<li>Click here to <a href="/BankApp/registerPage.jsp"> Register </a> for new user.
</ol>
<br>
<a href="/BankApp/changePassword.jsp">Change Password</a>

</body>
</html>