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

String sql = "select * from trail2";

try {
Class.forName(driverName).newInstance();
con = DriverManager.getConnection(url, user, password);
ps = con.prepareStatement(sql);
rs = ps.executeQuery(); 
%>
<form method="post" action="final2.jsp">
<p>enter the status of the buspass as 'yes' if your buspass is generated,if not enter 'no'</p>
<table border="1" align="center">
<tr>
<td>Enter the addno :</td>
<td><input type="text" name="no"/></td>
</tr>
<tr>
<td>Enter the status of the pass :</td>
<td><input type="text" name="name"/></td>
</tr>
<tr>
<td> </td>
<td><input type="submit" name="Submit" value="Save"></td>
</tr>
<% 
}
catch(SQLException sqe)
{
out.println("home"+sqe);
}
%>
</table>
</form>
</body>
</html>