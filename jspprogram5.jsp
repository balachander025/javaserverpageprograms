<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%! int fontSize; %>
<html>
 <head><title>FOR LOOP Example</title></head>

 <body>
 <%for ( fontSize = 1; fontSize <= 3; fontSize++){ %>
 <font color = "green" size = "<%= fontSize %>">
 JSP Tutorial
 </font><br />
 <%}%>
 </body>
</html>
