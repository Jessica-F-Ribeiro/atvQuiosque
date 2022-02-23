<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de Cadastro</title>
</head>
<body>
<table border="1">
	 	<tr>
	 		<th>Id</th>
	 		<th>Nome</th>
	 		<th>Endereço</th>
	 		<th>Telefone</th>
	 		<th>Email</th>
	 		<th>Produto de Interesse</th>
	 		<th>Data de Nascimento</th>
	 		<th>Gênero</th>
	 		<th>Excluir</th>
	 		
	 	</tr>
	 	<c:forEach items="${cadastros }" var="c">
	 	<tr>
	 		<td>${c.id }</td>
	 		<td>${c.nome }</td>
	 		<td>${c.endereco }</td>
	 		<td>${c.telefone }</td>
	 		<td>${c.email }</td>
	 		<td>${c.prodInteresse }</td>
	 		<td><fmt:formatDate pattern="dd/MM/yyyy" value="${c.dataNascimento.time }"/></td>
	 		<td>${c.genero }</td>
	 		<td><a href="alterarCliente?idCliente=${c.id }">Alterar</a></td>
	 		<td><a href="excluirCliente?idCliente=${c.id }" onclick="return confirm('Deseja Excluir')">Excluir</a></td>
	 	</tr>
	 	</c:forEach>
	</table>
</body>
</html>