<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Multiplication Table</title>
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<link rel="stylesheet" href="css/style.css"> 
</head>


<body>
	<h2>Multiplication Table</h2>
	<%
	int table= Integer.parseInt(request.getParameter("txtTable")); 
	int range= Integer.parseInt(request.getParameter("txtRange")); 
	
	
			for(int i=0;i<=range;i++)
			{
				
				out.append("<p>");
				out.append (String.format("%d X %d=%d", table,i,table*i));
				
				out.append("</p>");
			}
	
	%>
 
<script src="js/jquery-3.4.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/script.js"></script> 
</body>
</html>