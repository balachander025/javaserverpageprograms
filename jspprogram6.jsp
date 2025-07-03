<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! int fontSize; %>
<html>
 <head><title>WHILE LOOP Example</title></head>

 <body>
 <%while ( fontSize <= 3){ %>
 <font color = "green" size = "<%= fontSize %>">
 JSP Tutorial
 </font><br />
 <%fontSize++;%>
 <%}%>
 </body>
</html>
