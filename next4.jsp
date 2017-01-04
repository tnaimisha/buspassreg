<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
</head>
<body>
 <body background="http://www.bestpass.co.in/best/onlinepass/image/page_bg.jpg">
<h1 align="center"><font color="blue">FINAL BUSPASS</h1>
<p>NAME: <%=session.getAttribute("name")%><br>FROM DETAILS <%=session.getAttribute("from")%><br>TO DETAILS:   <%=session.getAttribute("to")%><br>BUSPASS CODE:   <%=session.getAttribute("code")%></p>
<p>NOTE:the current bupass is only valid till 2 years ..you have to register buspass after two years</p>
<p><a href="logout4.jsp">Logout</a>
</body>
</html>