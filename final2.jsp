<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
String number = request.getParameter("no");
String peru = request.getParameter("name");
Connection con = null;
Statement st = null;
String pass = "";
String id="";
try {
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/newrec5";
con = DriverManager.getConnection(url, "root", "chinni");
st = con.createStatement();
ResultSet rs = st.executeQuery("select * from trail2 where no= '"+number  + "'");
if (rs.next()) { 
id = rs.getString("no");
} 

if (id.equals(number)) {
st = con.createStatement();
int i = st.executeUpdate("update trail2 set name='"+ peru + "' where no= '"+number+"'");
st.close();
con.close();
} else {
out.println("enter a valid admission no.");
}
/*}else{
out.println("new password and confirm new password is not matching");
}*/
} catch (Exception e) {
out.println(e);
}
%>
<%
String date1 = request.getParameter("date");
String number1=request.getParameter("no");
Connection con1 = null;
Statement st1 = null;
String pass1 = "";
String id1="";
try {
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/newrec5";
con = DriverManager.getConnection(url, "root", "chinni");
st = con.createStatement();
ResultSet rs = st.executeQuery("select * from trail2 where no= '"+number1  + "'");
if (rs.next()) { 
id = rs.getString("no");
} 

if (id.equals(number)) {
st = con.createStatement();
java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
int i = st.executeUpdate("update trail2 set date='"+ sqlDate + "' where no= '"+number1+"'");
response.sendRedirect("logout4.jsp");
st.close();
con.close();
} else {
out.println("enter a valid admission no.");
}
/*}else{
out.println("new password and confirm new password is not matching");
}*/
} catch (Exception e) {
out.println(e);
}
%>