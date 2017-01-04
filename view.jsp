<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%! String[][]  namesarray = new String[20][20]; %>
<%! String[]  amountarray = new String[20]; %>
<%! static int i=0; %>
<%! static int j=0; %>
<%! static int t=10; %>
<%! static int r=15;%>
<%! int z; %>
<%! int q=0; %>

<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "newrec5";
String userId = "root";
String password = "chinni";



try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Retrieve the list of members</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>name</b></td>
<td><b>amount</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM demo";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<%
q++;
namesarray[i][0] = resultSet.getString("name");
namesarray[i][1] = resultSet.getString("amount");
%>
 
<td><%=namesarray[i][0] %></td>


<td><%=namesarray[i][1] %></td>
<%z=i++; %>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</hr>
<h2 align="center"><font><strong>Retrieve the list of members</strong></font></h2>
<h2><%=q %></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>name</b></td>
<td><b>amount</b></td>
</tr>
<%
int i=0,k,a=0,I,w;
int total=100000;
int p= Integer.parseInt(namesarray[0][1]);

	for(i=0;i<10;i++)
	{
		w=i;
		a=a+2;
		if(a==10)
		{
			a=a%(10-1);
		}
		if(a>10)
		{
			a=a%(10+1);
		}
		i=a;
		I=p*t*r/100;
		namesarray[i][1]=String.valueOf(total-I);%>
		<tr>
		<td><%=namesarray[i][0] %></td>
		<td><%=namesarray[i][1] %></td>
		</tr>
		<%
		for(k=0;k<10;k++)
		{
			if(k==i)
				continue;
			else
			{
				namesarray[k][1]=String.valueOf(I/(10-1));%>
				<tr>
				<td><%=namesarray[k][0] %></td>
				<td><%=namesarray[k][1] %></td>
				</tr>
				<%
			}
		}
	%>
		<tr><td>end of month</td></tr>
		<%t=t-1;
		i=w;	
		
	}
	
%>