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
<%!

String studentname;

%>
<%
Connection con= null,con1=null;
PreparedStatement ps = null,ps1=null,ps2=null;
ResultSet rs = null,rs1=null,rs2=null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/newrec5";
String user = "root";
String dbpsw = "chinni";

String sql = "select * from register2 where name=? ";

String name = request.getParameter("name");

if((!(name.equals(null) || name.equals(""))))
{
try{
Class.forName(driverName);
con = DriverManager.getConnection(url, user, dbpsw);
ps = con.prepareStatement(sql);
ps.setString(1,name);
rs = ps.executeQuery();
if(rs.next())
{ 
studentname = rs.getString("name");
if(name.equals(studentname))
{
session.setAttribute("name",studentname);
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
<%
String name1=(request.getParameter("name"));
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/newrec5","root","chinni");
	String sql2 = "select pass from register2 where name='"+name1+"'";
	ps2 = con1.prepareStatement(sql2);
	rs2 = ps2.executeQuery();
	String balance1="done";
	while (rs2.next()) {
	balance1=rs2.getString("pass");
	}
if(name.equals(studentname))
{
	String bal1=balance1;
ps2.addBatch("update register2 set pass="+bal1+"");
ps2.executeBatch();
response.sendRedirect("congo.jsp");  
}
else
{
	out.println("start your transaction again!!");
	out.println("possible reasons:");
	out.println("1.your account details are wrong. 2.there is no sufficient balance in your account.");
}
}
	catch (SQLException sqe) 
	{
			out.println(sqe);
	}
%>
</body>
</html>