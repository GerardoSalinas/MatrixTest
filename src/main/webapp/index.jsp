<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="Author" content = "Emilo.molina@unah.hn">
		<meta name="Version" content = "0.1.0">
		<meta name="Date" content = "20/02/2024">
		<meta name="Since" content = "05/02/2024">
		<meta name="Description" content = " ">
		<title>Matriz de Pixeles</title>
		<link rel ="stylesheet" href ="assets/css/style.css">
	</head>
	<body>
		<form action = "service.jsp">
			<input id = "width" type="hidden" name="w">
			<input id = "height" type="hidden" name="h">
			<input id = "pixels" type="hidden" name="pixels">
		</form>
		<div>
			<input id = "sendButton" type = "button" value="Enviar">
		</div>
		<script src="assets/js/Action.js"></script>
		<script src="assets/js/main.js"></script>
		
		
		
	
	</body>
</html>