<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Account Statement</title>

</head>
<body>
  <%@ include file="MyMsg.jsp"  %>
<h3>Account Status for ${userid} at the start of previous three months...</h3><p>
<% String[] records = (String[]) request.getAttribute("records");
 
for(int i=0; i<records.length; i++)
			{
				out.print(records[i]+"<br>");
			}
out.print("<br>Monthly Interest Calculation");
for(int i=0; i<records.length; i++)
{
	String str[] = records[i].split(":");
	out.println("<br>" + str[0].trim() + " : " ); 
	pageContext.setAttribute("resp", str[1]);
%>
	${resp * 0.25} 
<%	 
}

out.print("<br> <br> <a href=\"/BankApp/index.jsp\">Main Page</a> for the application");
					
%>

</body>
</html>