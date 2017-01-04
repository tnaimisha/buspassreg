<%@ page language = "java" contentType = 
  "text/html; charset = ISO-8859-1"
  import = "java.io.*"
  import = "java.sql.*"
  import = "java.util.*"
  import = "javax.sql.*"
  import = "java.sql.ResultSet"
  import = "java.sql.Statement"
  import = "java.sql.Connection"
  import = "java.sql.DriverManager"
  import = "java.sql.SQLException"
%>
<%
Connection con= null,con1=null;
PreparedStatement ps = null,ps1=null,ps2=null;
ResultSet rs = null,rs1=null,rs2=null;
Statement stmt=null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/newrec5";
String user = "root";
String password = "chinni";

String sql = "select * from register2";

  String name = request.getParameter("name");
%>
<html>
<head>
  <title>Updating Database</title>
</head>
<body>
<%
  try {
	  Class.forName("com.mysql.jdbc.Driver");
		con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/newrec5","root","chinni");
		String sql2 = "select pass from register2 where name='"+name+"'";
		ps2 = con1.prepareStatement(sql2);
  ps2.setString(1, name);
  ps2.executeUpdate();
  %>
  Database successfully Updated!<br>
  <%
  if(ps2.executeUpdate()>=1){
  stmt=con.createStatement();
  rs = stmt.executeQuery("SELECT * FROM register2");
  while(rs.next()){
  %>
  <%=rs.getObject(1).toString()%>
  <%=("\t\t\t")%>
  <%=rs.getObject(2).toString()%>
  <%=("<br>")%>
  <%
  }
  }

  } catch (IOException e) {
  throw new IOException("Can not display records.", e);
  } catch (ClassNotFoundException e) {
  throw new SQLException("JDBC Driver not found.", e);
  } finally {
  try {
  if(stmt != null){
  stmt.close();
  stmt = null;
  }
  if(ps2 != null) {
  ps2.close();
  ps2 = null;
  }
  if(con1 != null) {
  con1.close();
  con1 = null;
  }
  } catch (SQLException e) {}
  }
%>
</body>
</html>