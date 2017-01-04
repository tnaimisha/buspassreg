<%@ page import="java.sql.*" %>

<%@ page import="java.io.*" %>

<%! static int count=1; %>
<%! String a[][]; %>
<%! int rowcnt; %>

<HTML>

<HEAD>

<TITLE>Navigating in a Database Table </TITLE>

</HEAD>


<BODY bgcolor="#ffffcc">

<font size="+3" color="red"><br>Welcome Guest !</font>

<FORM action="modify.jsp" method="get">

<TABLE style="background-color: #ECE5B6;" WIDTH="30%" >

<TR>

<TH width="50%">Name</TH>

<TD width="50%"><INPUT TYPE="text" NAME="name"></TD>

</tr>

<TR>

<TH width="50%">amount</TH>

<TD width="50%"><INPUT TYPE="text" NAME="amount"></TD>

</tr>



<TR>

<TH></TH>

<TD width="50%"><INPUT TYPE="submit" VALUE="submit"></TD>

</tr>

</TABLE>

<%






String name = request.getParameter("name");

String amount = request.getParameter("amount");

String connectionURL ="jdbc:mysql://localhost:3306/newrec5";

Connection connection = null;

PreparedStatement pstatement = null;

ResultSet myResultSet = null;

Class.forName("com.mysql.jdbc.Driver").newInstance();

int updateQuery = 0;

if(name!=null && amount!=null){

if(name!="" && amount!="") {
	
	
		
	

try {
	
	if(count<=10)
	{
	

connection = DriverManager.getConnection(connectionURL,"root","chinni");



	

String queryString = "INSERT INTO demo(name,amount) VALUES (?, ?)";


session.setAttribute(name,"name");
session.setAttribute(amount,"amount");
count++;

pstatement = connection.prepareStatement(queryString);





pstatement.setString(1, name);

pstatement.setString(2, amount);


updateQuery = pstatement.executeUpdate();

	


if (updateQuery != 0) { %>



<%

}
	}
	
	else if(count>10)
	{ %>
	<br>

<TABLE style="background-color: #E3E4FA;" WIDTH="30%" border="1">

<tr><th>count exceeded.Data is not inserted successfully in database.</th></tr>

</table>

<%
		
	}

}

	

catch (Exception ex) {

out.println(ex);

}

finally {

//pstatement.close();

//connection.close();

}

}

}

%>

</FORM>

<a href="view.jsp">click here to view all the members</a>

</body>

</html>