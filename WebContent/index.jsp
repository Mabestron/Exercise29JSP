<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
    
<%@ page import="com.Exercise29JSP.model.Users" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>First JSP Page</title>
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<link rel="stylesheet" href="css/style.css"> 

</head>
<body>
<h2>First JSP Page</h2>



	<%-- Scriptlet se abre un bloque de código para usar java--%>
	<%
	//se incorpora codigo java dentro del html
	for(int i=0;i<=10;i++)
	{
		
		out.append("<p>");
		out.append (String.format("%d X %d=%d", 4,i,4*i));
		
		out.append("</p>");
	}
	%>
	
	
	<%-- DECLARACION de una variable--%>
	<%! int i=12; %>
	
	
	<%-- EXPRESION de una variable--%>
	<p>
		El valor de i es: <%=i %>
	</p>
	
	<hr/>
		<form class="form-group" action="TableResult.jsp" method="post" >
		<p>
		
		<%Users miUsuario = new Users();  
		
		miUsuario.setId(request.getParameter("txtId"));
		miUsuario.setId(request.getParameter("txtName"));
		
		%>
		
			<label for="txtTable">Table:</label>
			<input class="form-control" type="text" id="txtTable" name="txtTable" value="<%=miUsuario.getId() %>">
		</p>
		
		<p>
			<label for="txtRange">Range:</label>
			<input class="form-control" type="text" id="txtRange" name="txtRange" value="<%=miUsuario.getName() %>">
		</p>
		
		<p>
		<input class="btn btn-success" type="submit" value="Show Table">
		</p>
	</form>
	
	
	<form class="form-group" action="index.jsp" method="post" >
		<p>
			<label for="txtID">ID: </label>
			<input class="form-control" type="text" id="txtID" name="txtID" value="0">
		</p>
		
		<p>
			<label for="txtName">Name:</label>
			<input class="form-control" type="text" id="txtName" name="txtName" value="a">
		</p>
		
		<p>
		<input class="btn btn-success" type="submit" value="Guardar Datos">
		</p>
	
	
	</form>
	
<script src="js/jquery-3.4.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/script.js"></script> 	
</body>
</html>