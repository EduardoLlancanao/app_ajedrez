<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ajedrez</title>
</head>
<body>
<p>Crea tu tablero</p>


<form action="index.jsp">
	<label>FILAS : </label>	<input type="text" id="filas" name="filas" required>
	<br><br>
	<label>COLUMAS : </label>	<input type="text" id="columnas" name="columnas" required>
	<br><br>
	<button type="submit">Crear Tablero</button>
</form>


<%
	String sFila = request.getParameter("filas");
	String sColumnas = request.getParameter("columnas");
	
	int iFila = 0;
	int iColumnas = 0;
	
	if(null != sFila && !sFila.equals("")){
		iFila = Integer.parseInt(sFila.toString().trim());	
	}
	
	if(null != sColumnas && !sColumnas.equals("")){
		iColumnas = Integer.parseInt(sColumnas.toString().trim());	
	}	
%>

<p> Total Filas: <%= iFila %></p>
<p> Total Columnas: <%= iColumnas %></p>

<br>
<br>
<br>


<table style="border: 1px solid black;">

<%
	for(int i = 0; i < iFila; i++ ){
%>
	<tr>
		<%
		
		for(int e = 0; e < iColumnas; e++ ){
			
			if((i%2)==0){
				if((e%2)==0){  
		%>
				<td style="background-color: black;width: 100px; height: 100px;"></td>
				<%}
				
				if((e%2)!=0){  %>
				<td style="background-color: white;width: 100px; height: 100px;"></td>
				<% } %>
			<%
			}else{
				if((e%2)==0){  
					%>
				<td style="background-color: white;width: 100px; height: 100px;"></td>
				<%}
				
				if((e%2)!=0){  %>
				<td style="background-color: black;width: 100px; height: 100px;"></td>
				<% } 	
			}
		}
		%>
	</tr>
<%
	}
%>

</table>

</body>
</html>