<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Voce Esta Logado</h1>	
	<form action="${pageContext.request.contextPath}/logout" >
	<input type="submit" value="sair" />
	</form>
</body>
</html>