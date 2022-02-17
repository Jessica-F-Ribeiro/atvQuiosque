<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="estilo_quiosque.css">
<meta charset="ISO-8859-1">
<title>Cadastro de Cliente</title>
</head>
<body>
<body>
    <div class="principal">
        <header>
            <div class="totais">
                <ul>
                    <li id="liTotGeral"><label id="labelTotalGeral">Total Geral:</label><input type="text"
                            id="inputTotalGeral" disabled></li>
                    <li id="liTotDia"><label id="labelTotalDia">Total do Dia:</label><input type="text"
                            id="inputTotalDia" disabled></li>
                </ul>
            </div>
            <nav>
                <ul>
                    <li id="home">home</li>
                    <li id="estatisticas">estatísticas</li>
                </ul>
            </nav>
            <img src="imagens/logo.png" class="logo">
        </header>
        <div class="formulario">
            <form action="salvarCadastro">
                <section>
                    <input type="text" name="nome" required placeholder="NOME" class="inputs_form" value="${cadastro.nome }">
                </section>
                <br>
                <br>
                <section>
                    <input type="email" name="email" required placeholder="EMAIL" class="inputs_form">
                </section>
                <br>
                <br>
                <section>
                    <input type="number" name="telefone" required placeholder="CELULAR" class="inputs_form">
                </section>
                <br>
                <br>
                <section>
                    <input type="text" name="endereco" required placeholder="ENDEREÇO" class="inputs_form">
                </section>
                <br>
                <br>
                <section class="section_genero">
                    <div style="font-size: 15px;">
                    <label style="color: rgba(0, 0, 0, 0.562);">gênero:</label>
                        <input type="radio" name="genero" class="radio" style="color: black;"> Masculino
                        <input type="radio" name="genero" class="radio"> Feminino
                    </div>
                </section>
                <br>
                <br>
                <section>
                    <input type="date" name="dataNascimento" required>
                </section>
                <br>
                <br>
                <section>
                    <input type="text" name="prodInteresse" required placeholder="PRODUTO" class="inputs_form">
                </section>

                <button type="submit" id="botao_cadastrar">CADASTRAR</button>
            </form>
        </div>
    </div> <!-- fechamento da div principal -->
</body>
</html>