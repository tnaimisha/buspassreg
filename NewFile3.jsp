<%@ page import="java.sql.*" %>

<%@ page import="java.io.*" %>

<HTML>

<HEAD>

<TITLE>Navigating in a Database Table </TITLE>

</HEAD>

<BODY bgcolor="#ffffcc">

<font size="+3" color="red"><br>Welcome Guest !</font>

<FORM action="NewFile3.jsp" method="get">

<TABLE style="background-color: #ECE5B6;" WIDTH="30%" >

<TR>

<TH width="50%">Name</TH>

<TD width="50%"><INPUT TYPE="text" NAME="name"></TD>

</tr>

<TR>

<TH width="50%">college name</TH>

<TD width="50%"><INPUT TYPE="text" NAME="collegename"></TD>

</tr>

<TR>

<TH width="50%">rollno</TH>

<TD width="50%"><INPUT TYPE="text" NAME="rollno"></TD>

</tr>
<TR>

<TH width="50%">mailid</TH>

<TD width="50%"><INPUT TYPE="text" NAME="mailid"></TD>

</tr>

<TR>

<TH width="50%">pass</TH>

<TD width="50%"><INPUT TYPE="text" NAME="pass"></TD>

</tr>

<TR>

<TH></TH>

<TD width="50%"><INPUT TYPE="submit" VALUE="submit"></TD>

</tr>

</TABLE>

<%

String name = request.getParameter("name");

String collegename = request.getParameter("collegename");

String rollno = request.getParameter("rollno");

String mailid = request.getParameter("mailid");

String pass = request.getParameter("pass");

String connectionURL ="jdbc:mysql://localhost:3306/newrec5";

Connection connection = null;

PreparedStatement pstatement = null;

Class.forName("com.mysql.jdbc.Driver").newInstance();

int updateQuery = 0;

if(name!=null && collegename!=null && rollno!=null && mailid!=null && pass!=null){

if(name!="" && collegename!="" && rollno!="" && mailid!="" && pass!="") {

try {

connection = DriverManager.getConnection(connectionURL,"root","chinni");

String queryString = "INSERT INTO register2(name,collegename,rollno,mailid,pass) VALUES (?, ?, ?,?,?)";

pstatement = connection.prepareStatement(queryString);

pstatement.setString(1, name);

pstatement.setString(2, collegename);

pstatement.setString(3, rollno);

pstatement.setString(4,mailid);

pstatement.setString(5,pass);

updateQuery = pstatement.executeUpdate();

if (updateQuery != 0) { %>

<br>

<TABLE style="background-color: #E3E4FA;" WIDTH="30%" border="1">

<tr><th>Data is inserted successfully in database.</th></tr>

</table>

<%

}

}

catch (Exception ex) {

out.println("Unable to connect to Database.");

}

finally {

pstatement.close();

connection.close();

}

}

}

%>

</FORM>

<a href="verify1.jsp">click here to proceed for registration</a>

</body>

</html>