<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<%! String userdbName;
String userdbColl;
String userdbRoll;
String userdbMail;
String dbUsertype;
String userdbAdno;
%>
<%
Connection con= null;
PreparedStatement ps = null;
ResultSet rs = null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/newrec5";
String user = "root";
String dbpsw = "chinni";

String sql = "select * from register where name=? and collegename=? and rollno=? and mailid=? and adno=?";

String name = request.getParameter("name");
String collegename = request.getParameter("collegename");
String rollno=request.getParameter("rollno");
String mailid=request.getParameter("mailid");
String adno=request.getParameter("adno");

if((!(name.equals(null) || name.equals("")) && !(collegename.equals(null) || collegename.equals("")) && !(rollno.equals(null) || rollno.equals("")) 

&& !(mailid.equals(null) || mailid.equals("")) && !(adno.equals(null) || adno.equals(""))))
{
try{
Class.forName(driverName);
con = DriverManager.getConnection(url, user, dbpsw);
ps = con.prepareStatement(sql);
ps.setString(1, name);
ps.setString(2, collegename);
ps.setString(3,rollno);
ps.setString(4,mailid);
ps.setString(5,adno);
rs = ps.executeQuery();
if(rs.next())
{ 
userdbName = rs.getString("name");
userdbColl = rs.getString("collegename");
userdbRoll = rs.getString("rollno");
userdbMail = rs.getString("mailid");
userdbAdno = rs.getString("adno");
if(name.equals(userdbName) && collegename.equals(userdbColl) && rollno.equals(userdbRoll) && mailid.equals(userdbMail) && adno.equals(userdbAdno))
{
session.setAttribute("name",userdbName);
session.setAttribute("collegename",userdbColl);
session.setAttribute("rollno",userdbRoll);
session.setAttribute("mailid", userdbMail); 
session.setAttribute("adno", userdbAdno);
response.sendRedirect("verify2.jsp"); 
} 
}
else
response.sendRedirect("error4.jsp");
rs.close();
ps.close(); 
}
catch(SQLException sqe)
{
out.println(sqe);
} 
}
else
{
%>
<center><p style="color:red">Error In Login</p></center>
<% 
getServletContext().getRequestDispatcher("/home.jsp").include(request, response);
}
%>
</body>
</html>