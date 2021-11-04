<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	
	body {
		font-family: 'Roboto Condensed', sans-serif;
	}
	
	h2, a {
		margin-left: 5px;
	}
	div.item {
		margin-left: 45px;
		border: solid 1px;
		margin: 5px 15px 5px 5px;
	}
	
	form {
		margin-top: 15px;
		margin-left: 5px;
	}
	
	p{
		clear: both;
	    display: block;
	}
	
	input[type="text"], input[type="number"], input[type="date"] {
		margin-bottom: 15px;
	    clear: both;
	    display: block;
	    width: 150px;
	}
	
	input[type="radio"]  {
	}
	
</style>

</head>

<body>

	<form method="get" action="Formulario" enctype="multipart/form-data">
		
		<!-- NOME -->
		<label for="nome-id">name: </label>
		<input id="nome-id" type="text" name="campo_nome"  />
		
		
		<!-- NASCIMENTO -->
		<label for="idade-id">data nascimento: </label>
		<input type="date" name="campo_data_nascimento" />
		
		<!-- Checkbox -->
		Você aceita os termos?<br />
		<input type="checkbox" value="marcado" name="campo_aceita"><label for="">li e aceito os termos</label>
		
		<!-- Radio -->
		<label for="" style="margin-top: 15px; display: block;">Selecione seu Idioma:</label>
		<input type="radio" checked="checked" name="idioma" value="Inglês"><label>Inglês</label><br />
		<input type="radio" name="idioma" value="Espanhol"><label>Espanhol</label><br />
		<input type="radio" name="idioma" value="Português"><label>Português</label><br />
		
		<!-- Multiplos campos marcados --> <br />
		<label for="nome-id">Quais sãos as suas habilidades: </label><br />
		<input type="checkbox" name="habilidades" value="Java"> Java <br />
		<input type="checkbox" name="habilidades" value="JavaScript"> JavaScript <br />
		<input type="checkbox" name="habilidades" value="HTML e CSS" > HTML e CSS <br />
		
		<br /><br />
		
		<input type="submit" value="enviar dados" />
		
	
	</form>

</body>
</html>