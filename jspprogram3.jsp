<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%! int day=3; %>
<%if(day==1 || day==7){%>
<p>Today is weekend</p>
<%}else{%>
<p>Today is not weekend</p><%}%>


</body>
</html>
