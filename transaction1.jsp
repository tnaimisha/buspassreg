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

String sql = "select * from bank";

try {
Class.forName(driverName).newInstance();
con = DriverManager.getConnection(url, user, password);
ps = con.prepareStatement(sql);
rs = ps.executeQuery(); 
%>
<form method="post" action="valid.jsp">
<table border="1" align="center">
<tr>
<td>Enter the accountno :</td>
<td><input type="text" name="no"/></td>
</tr>
<tr>
<td>Enter the name of the accountholder :</td>
<td><input type="text" name="name"/></td>
</tr>
<tr>
<td>Enter the pin :</td>
<td><input type="password" name="pin"/></td>
</tr>
<tr>
<td>last date of validation(D M Y):</td>
<td>
<select>
  <option value="1" name="d">1</option>  <option value="2" name="d">2</option>
  <option value="3" name="d">3</option>  <option value="4" name="d">4</option>
  <option value="5" name="d">5</option>  <option value="6" name="d">6</option>
  <option value="7" name="d">7</option>  <option value="8" name="d">8</option>
  <option value="9" name="d">9</option>  <option value="10" name="d">10</option>
  <option value="12" name="d">12</option>  <option value="13" name="d">13</option>
  <option value="14" name="d">14</option>  <option value="15" name="d">15</option>
  <option value="16" name="d">16</option>  <option value="17" name="d">17</option>
  <option value="18" name="d">18</option>  <option value="19" name="d">19</option>
  <option value="20" name="d">20</option>  <option value="21" name="d">21</option>
  <option value="22" name="d">22</option>  <option value="23" name="d">23</option>
  <option value="24" name="d">24</option>  <option value="25" name="d">25</option>
  <option value="26" name="d">26</option>  <option value="27" name="d">27</option>
  <option value="28" name="d">28</option>  <option value="29" name="d">29</option>



 <option value="30" name="d">30</option>  <option value="31" name="d">31</option>
</select> 
<select>
<option value="1" name="m">1</option>  <option value="2" name="m">2</option>
<option value="3" name="m">3</option>  <option value="4" name="m">4</option>
<option value="5" name="m">5</option>  <option value="6" name="m">6</option>
<option value="7" name="m">7</option>  <option value="8" name="m">8</option>
<option value="9" name="m">9</option>  <option value="10" name="m">10</option>
<option value="11" name="m">11</option>  <option value="12" name="m">12</option>
</select> 
<select>
<option value="2015" name="y">2015</option>  <option value="2018" name="y">2018</option> 
<option value="2016" name="y">2016</option>  <option value="2019" name="y">2019</option> 
<option value="2017" name="y">2017</option>  <option value="2020" name="y">2020</option> 
</select> 
</td>
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