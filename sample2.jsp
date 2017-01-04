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
String fromaccount;
String accountname;
String accountpin;
%>
<%
Connection con= null,con1=null;
PreparedStatement ps = null,ps1=null,ps2=null;
ResultSet rs = null,rs1=null,rs2=null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/newrec5";
String user = "root";
String dbpsw = "chinni";

String sql = "select * from trail where no=? and name=? ";

String no = request.getParameter("no");
String name = request.getParameter("name");


if((!(name.equals(null) || name.equals(""))  && !(no.equals(null) || no.equals(""))))
{
try{
Class.forName(driverName);
con = DriverManager.getConnection(url, user, dbpsw);
ps = con.prepareStatement(sql);
ps.setString(1,no);
ps.setString(2,name);
rs = ps.executeQuery();
if(rs.next())
{ 
fromaccount = rs.getString("no");
accountname = rs.getString("name");
if(no.equals(fromaccount) && name.equals(accountname))
{
session.setAttribute("no",fromaccount);
session.setAttribute("name",accountname);
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
int no1=Integer.parseInt(request.getParameter("no"));
String name1=request.getParameter("name");
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/newrec5","root","chinni");
	String sql2 = "select name from trail where no='"+no1+"'";
	ps2 = con1.prepareStatement(sql2);
	rs2 = ps2.executeQuery();
int balance1=0;
while (rs2.next()) {
balance1=rs2.getInt("no");
}
if(balance1>0)
{
int bal1=balance1-1;
ps2.addBatch("update trail set no="+bal1+" where name='"+name1+"'");
ps2.executeBatch();
out.println("done");
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