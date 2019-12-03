<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<title> Adicionar Produto </title>
		<meta charset="utf8"> 
		<link type="text/css" rel="stylesheet" href="static/css/estilos.css"/>
	</head>
	<body class="color">
		<div>
			<ul>
				<li><a href="home"> Busca </a></li>
				<li><a href="estoque"> Estoque </a></li>
			</ul>	
		</div>

		<h2 style="text-align: center;"> Adicionar Produtos </h2>

		<form id="add_prod" action="Addprod.action" method="get">
			<div>
				<input type="number" name="id" placeholder="id" disabled>
			</div>
			<div>
				<input type="text" name="produto" placeholder="Produto">
			</div>
			<div>
				<input type="text" name="marca" placeholder="Marca">
			</div>
			<div>
				<input type="number" name="quantidade" placeholder="Quantidade">
			</div>
			<div>
				<input type="text" name="unidade" placeholder="Unidade">
			</div>
			<div>	
				<input type="number" step=0.01 name="preco" placeholder="Preço">
			</div>
			<div>
				<input type="text" name="descricao" placeholder="Descrição">
			</div>
			<div>
				<table>
					<td><input id="confirmar" type="submit" class="aceitar" value="Adicionar"></td>
					<td><input id="cancelar" type="reset" class="remover" value="Cancelar" ></td>
				</table>
			</div>
		</form>
	</body>
</html>