<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.util.*" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.util.logging.Level" %>
<%@ page import="java.util.logging.Logger" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int acc1=Integer.parseInt(request.getParameter("no"));
int bal=Integer.parseInt(request.getParameter("amount"));
Connection con=null;
PreparedStatement ps=null,ps1=null;
ResultSet rs = null,rs1=null;
	try
	{
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/newrec5","root","chinni");
	String sql = "select balance from bank where accountno='"+acc1+"'";
	ps = con.prepareStatement(sql);
	rs = ps.executeQuery();
	String str = "select balance from bank where accountno='"+5678+"'";
	ps1 = con.prepareStatement(str);
	rs1 = ps1.executeQuery();
int balance1=0;
while (rs.next()) {
balance1=rs.getInt("balance");
}
int balance2=0;
while (rs1.next()) {
balance2=rs1.getInt("balance");
}
int bal1=balance1-bal;
int bal2=balance2+bal;
ps.addBatch("update bank set balance="+bal1+" where accountno='"+acc1+"'");
ps.executeBatch();
ps1.addBatch("update bank set balance="+bal2+" where accountno='"+5678+"'");
ps1.executeBatch();
}
	catch (SQLException sqe) 
	{
			out.println(sqe);
	}
%>
<p><a href="next4.jsp">Logout</a>
</body>
</html>