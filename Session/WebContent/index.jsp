<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<% String erro =(String) request.getAttribute("erro"); %>
	<% String sucesso =(String) request.getAttribute("sucesso"); %>
	<% String aviso = (String) request.getAttribute("nao_logado");%>
	<form action="${pageContext.request.contextPath}/login" >
		
		<input type="text" name="campo_login"  />
		<input type="password" name="campo_password"  />
		
		<input type="submit" value="logar" />
	
	</form>
	<%if(erro != null) {%>
	<strong><%= erro %></strong>
	<%} %>
	<%if(sucesso != null) {%>
	<strong><%= sucesso %></strong>
	<%} %>
	<%if(aviso != null) {%>
	<strong><%= aviso %></strong>
	<%} %>
</body>
</html>