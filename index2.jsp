
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link href="css.css" rel="stylesheet" type="text/css"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body bgcolor="#C0C0C0">
<h1 align="center"><font color="black">WELCOME TO NET BANKING</h1>
<img src="C:\Users\Naimasha\Pictures\india.jpg"

alt="bankimages" width="480" height="128"align ="left">

<div id="container">
<marquee>welcome guest!!</marquee>
<hr />
<div id="header">
</div>
            	<div id="content">
<img src="C:\Users\Naimasha\Pictures\bank2.jpg"

alt="busimages" width="480" height="128"align ="left">
<img src="C:\Users\Naimasha\Pictures\bank4.jpg"

alt="bankimages" width="480" height="128" align="right">
</div>
<div id="aside">
<form method="post" action="login4.jsp">
<center><h2 style="color:green"> Login </h2></center>
<table border="1" align="center">
<tr>
<td>Enter Your Name :</td>
<td><input type="text" name="name"/></td>
</tr>
<tr>
<td>Enter Your password :</td>
<td><input type="password" name="password"/></td>
</tr>
<td></td>
<td><input type="submit" value="submit"/></td>
</table>
</form>
</div>
<div id="navigation">
		<ul>
                    
			<li><b></b><a href="index.jsp">Home</a><b></b></li>
			<li><b></b><a href="about.jsp">About</a><b></b></li>
			<li><b></b><a href="contact.jsp">Contact</a></b></li>
                      		</ul>
    
        
            	</div>
<a href="new.jsp">click here if admin</a>
</body>
<div id="footer">
		Copyright &#169; <b>The Indian Bank</b> -
		Developed By <b><a href="http://www.thecrazyprogrammer.com" target="_blank" style="color: yellow;">The Crazy Programmer</a></b>
	</div>
	</div>

</html>