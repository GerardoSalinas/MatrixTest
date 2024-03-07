<%@ page import = "programLibraries.ImageMakerMonocrome" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<%
	ImageMakerMonocrome mk = new ImageMakerMonocrome();
%>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<meta name="Author" content = "Emilo.molina@unah.hn">
		<meta name="Version" content = "0.1.0">
		<meta name="Date" content = "20/02/2024">
		<meta name="Since" content = "05/02/2024">
		<meta name="Description" content = " ">
	<title>Matrix de Pixeles</title>
	</head>
	<body>
	
		<%=mk.make(request)%>  
	
	</body>
</html>