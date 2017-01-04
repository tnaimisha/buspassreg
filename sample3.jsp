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
out.println("");
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
String name1=request.getParameter("nameing");
	try
	{
		
	Class.forName("com.mysql.jdbc.Driver");
	con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/newrec5","root","chinni");
	String sql2 = "select name from trail where no='"+no1+"'";
	ps2 = con1.prepareStatement(sql2);
	rs2 = ps2.executeQuery();
	String pass="";
	while (rs2.next()) { 
		pass = rs2.getString("name");
		} 
		if(pass!=name1)
		{
ps2.addBatch("update trail set name="+name1+" where no='"+no1+"'");
ps2.executeBatch();
out.println("papa");
out.println("done");
		}
		else
			out.println("not done");
}
	catch (SQLException sqe) 
	{
		out.println("kjjj");
			out.println(sqe);
	}
%>
</body>
</html>