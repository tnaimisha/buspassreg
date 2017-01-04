<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <body background="http://www.bestpass.co.in/best/onlinepass/image/page_bg.jpg">
<h2 align="center">Registration</h2>
<form method="post" action="page4.jsp">
<table border="1" align="center">

<TR>

<TH width="50%"> name: </TH>

<TD width="50%"><%=session.getAttribute("name")%></TD>

</tr>
<TR>

<TH width="50%"> college name: </TH>

<TD width="50%"><%=session.getAttribute("collegename")%></TD>

</tr>
<TR>

<TH width="50%"> roll no: </TH>

<TD width="50%"><%=session.getAttribute("rollno")%></TD>

</tr>
<TR>

<TH width="50%"> mailid: </TH>

<TD width="50%"><%=session.getAttribute("mailid")%></TD>

</tr>

<TR>

<TH width="50%">enter the college code</TH>

<TD width="50%"><INPUT TYPE="text" NAME="collcode"></TD>

</tr>
<TR>

<TH width="50%">enter address</TH>

<TD width="50%"><INPUT TYPE="text" NAME="address"></TD>

</tr>
<TR>

<TH width="50%">enter your bus journey from :</TH>

<TD width="50%"><INPUT TYPE="text" NAME="from"></TD>

</tr>
<TR>

<TH width="50%">enter your bus journey to :</TH>

<TD width="50%"><INPUT TYPE="text" NAME="to"></TD>

</tr>
<TR>

<TH width="50%">enter your buspass code: </TH>

<TD width="50%"><INPUT TYPE="text" NAME="code"></TD>

</tr>
<TR>

<TH width="50%">enter todays date :</TH>

<TD width="50%"><INPUT TYPE="text" NAME="date"></TD>

</tr>

<tr>
<td></td>
<td><input type="submit" value="submit"/></td>
</body>
</html>