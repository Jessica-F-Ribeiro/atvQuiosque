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
	 		<th>Alterar</th>
	 		
	 	</tr>
	 	<c:forEach items="${produtos }" var="p">
	 	<tr>
	 		<td>${p.id }</td>
	 		<td>${p.nome }</td>
	 		<td>${p.endereco }</td>
	 		<td>${p.telefone }</td>
	 		<td>${p.email }</td>
	 		<td>${p.prodInteresse }</td>
	 		<td><fmt:formatDate pattern="dd/MM/yyyy" value="${p.dataNascimento.time }"/></td>
	 		<td></td>
	 		<td><a href="excluirCliente?idCliente=${p.id }" onclick="return confirm('Deseja Excluir')">Excluir</a></td>
	 	</tr>
	 	</c:forEach>
	</table>
</body>
</html>