<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.org.bank.AccountBean, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Confirmation Page</title>
</head>
<body>

<jsp:useBean id = "account" class = "com.org.bank.AccountBean"> 
         <jsp:setProperty name = "account" property = "name" value = '<%=request.getParameter("name") %>'/>
         <% if(request.getParameter("password") == request.getParameter("confirmPassword")){
        %>
         <jsp:setProperty name = "account" property = "password" value = '<%=request.getParameter("password") %>'/>
         <%} %>
         <jsp:setProperty name = "account" property = "balance" value = '<%= Double.parseDouble(request.getParameter("balance")) %>'/>
         <jsp:setProperty name = "account" property = "creationDate" value = '<%= new Date() %>'/>
      </jsp:useBean>

<%@ include file="MyMsg.jsp"  %>
<h3>New User has been Successfully created. Please click <a href="/BankApp/index.jsp"> here </a> to return to the index page
</body>
</html>