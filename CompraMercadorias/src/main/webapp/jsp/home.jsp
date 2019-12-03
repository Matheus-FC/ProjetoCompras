<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html> 
<html>
	<head>
		<title> Vendas </title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.0/css/bulma.min.css"/> 
		<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/estilos.css">
		<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
		<script type="text/javascript" src="html-table-search.js"></script>
		<script type="text/javascript">
			$(document).ready(function(){
				$('table.steelBlueCols').tableSearch({
					searchText:'Search Table',
					searchPlaceHolder:'Input Value'
				});
			});
		</script>
	</head>	

	<body>
			<table class="tabelaEstoque">
					<tr class="font">
						<td><a href="home"> Compra/Busca </a></td>
						<td><a href="estoque"> Estoque </a></td>
					</tr>
				</table>
		
		<div>
			<h2 class="title is-2"> Pesquisar </h2>	
		</div>

		<div>
			<form id="envio_prod" onsubmit="adicionar(event)" method="get">
				<table>
					<th>ID do Produto</th>
					<th>Quantidade</th>
					<th></th>
					<tr>
						<td><input id="idProd" type="number" name="produto" placeholder="Produto ID"/></td>
						<td><input id="qnt" type="number" name="quantidade" required/></td>
						<td><input type="submit" class="aceitar" value="Adicionar"></td>
					</tr>
				</table>
			</form>
		</div>
			<table class="steelBlueCols" id="carrinho">
				<tr>
					<th>ID</th>
					<th>Produto</th>
					<th>Marca</th>
					<th>Quantidade</th>
					<th>Unidade </th>
					<th>Preço</th>
					<th colspan="2">Descrição</th>
				</tr>
			</table>

		<div>
			<b id="ttlProdutos"></b>
			<b id="ttlCarrinho"></b>
		</div>
		<div>
			<form id="form" action="Comprar" method="post"></form>
			<button class="comprar" onclick="comprar()">Comprar</button> 
		</div>
		<script src="<%=request.getContextPath()%>/js/Methods.js"></script>
	</body>
</html>