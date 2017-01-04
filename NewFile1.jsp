<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>
<body background="http://www.bestpass.co.in/best/onlinepass/image/page_bg.jpg">
<h1 align="center"><font color="blue">TRANSACTION DETAILS</h1>
<p><em>PLEASE ENTER THE CORRECT DETAILS!!</em></font><p>
<hr />
<%
Connection con= null;
PreparedStatement ps = null;
ResultSet rs = null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/newrec5";
String user = "root";
String password = "chinni";

String sql = "select * from register2";

try {
Class.forName(driverName).newInstance();
con = DriverManager.getConnection(url, user, password);
ps = con.prepareStatement(sql);
rs = ps.executeQuery(); 
%>
<form method="post" action="NewFile2.jsp">
<center><h2 style="color:green">JSP Login Example</h2></center>
<table border="1" align="center">
<tr>
<td>Enter the name:</td>
<td><input type="text" name="name"/></td>
</tr>
<% 
}
catch(SQLException sqe)
{
out.println("home"+sqe);
}
%>
<tr>
<td></td>
<td><input type="submit" value="submit"/></td>
</table>
</form>
</body>
</html>