<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
<head>
<title>Database Connection Example</title>
</head>
<body>
<%
// JDBC database URL, username, and password of MySQL server

String url = "jdbc:mysql://localhost:3306/mydb";
String user = "root";
String password = "bala";
try {

// Load the JDBC driver
Class.forName("com.mysql.cj.jdbc.Driver");
// Establish a connection 
Connection connection = DriverManager.getConnection(url, user, password);
// Create a statement
Statement statement = connection.createStatement();
// Execute a query
ResultSet resultSet = statement.executeQuery("SELECT id, last FROM employee");
// Display the data from the result set
out.println("<table border='1'>");
out.println("<tr><th>ID</th><th>Name</th></tr>");
while (resultSet.next()) {
    int id = resultSet.getInt("id");
    String name = resultSet.getString("last");
    out.println("<tr><td>" + id + "</td><td>" + name + "</td></tr>");
}
out.println("</table>");
// Close the result set, statement, and connection
resultSet.close();
statement.close();
connection.close();
} catch (Exception e) {
    out.println("Error: " + e.getMessage());
}
%>
</body>
</html>
