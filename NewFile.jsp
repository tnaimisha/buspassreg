<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<BODY bgcolor="#ffffcc">

<h1 align="center"><font color="blue">BUSPASS</h1>
<p><em>your buspass has been generated!!</em></font><p>
<hr />

<img src="http://i.msdn.microsoft.com/hh534406.TheDevelopersGuideToHTML5Canvas1(en-us,MSDN.10).png" 

alt="paste your photo" width="200" height="200" align="right" display= "block">

<FORM action="NewFile.jsp" method="post">

<table border="1" align="center">

<TR>

<TH width="50%">NAME :</TH>

<TD width="50%"><%=session.getAttribute("name")%></TD>

</tr>
<TR>

<TH width="50%">COLLEGE :</TH>

<TD width="50%"><%=session.getAttribute("collegename")%></TD>

</tr>

<TR>

<TH width="50%">COLLEGE CODE: </TH>

<TD width="50%"><%=session.getAttribute("collcode")%></TD>

</tr>

<TR>

<TH width="50%">FROM :</TH>

<TD width="50%"><%=session.getAttribute("from")%></TD>

</tr>

<TR>

<TH width="50%">TO: </TH>

<TD width="50%"><%=session.getAttribute("to")%></TD>

</tr>

<TR>

<TH width="50%">ADDRESS: </TH>

<TD width="50%"><%=session.getAttribute("address")%></TD>

</tr>

<TR>

<TH width="50%">DATE :</TH>

<TD width="50%"><%=session.getAttribute("date")%></TD>

</tr>

</TABLE>
<BR>
<p>NOTE: THE CURRENT BUSPASS IS VALID ONLY TILL 2 YEARS OF SUBMISSION. YOU HAVE TO APPLY FOR A NEW PASS AGAIN AFTER 2 YEARS. PASTE YOUR PHOTOGRAPH IN THE PLACE PROVIDED IN THE BUSPASS<P>
<p><a href="final.jsp">click here</a>
</FORM>
</html>