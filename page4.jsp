<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String name=request.getParameter("name"); 
String collname=request.getParameter("collegename");
String rollno=request.getParameter("rollno"); 
String to=request.getParameter("to"); 
String from=request.getParameter("from"); 
String code=request.getParameter("collcode"); 
String address=request.getParameter("address"); 
String date=request.getParameter("date"); 
String mailid=request.getParameter("mailid"); 
 session.setAttribute("name",name);
 session.setAttribute("collname",collname);
 session.setAttribute("rollno",rollno);
 session.setAttribute("to",to);
 session.setAttribute("from",from);
 session.setAttribute("address",address);
 session.setAttribute("date",date);
 session.setAttribute("collcode",code);
 session.setAttribute("mailid",mailid);
response.sendRedirect("info.jsp");  
%>  

</body>
</html>