<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="model.Produto"%>
<%@page import ="java.util.List"%>

<!DOCTYPE html>
<html>
	<head>
		<title> Estoque </title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.0/css/bulma.min.css"/> 
		<link rel="stylesheet"  href="static/css/estilos.css"/>
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
			<h2 class="title is-2"> Estoque </h2>
		<div>
			<table class="steelBlueCols">
				<tr>
					<th>ID</th>
					<th>Produto</th>
					<th>Marca</th>
					<th>Quantidade</th>
					<th>Preço</th>
					<th>Unidade</th>
					<th colspan="2">Descrição</th>
				</tr>

 			<% 
 				List<Produto> produtos = (List)request.getAttribute("produtos");
                for(Produto p: produtos){
                	out.print("<tr>");
                	out.print("<td>" + p.getId() + "</td>");
					out.print("<td>" + p.getNome() + "</td>");
					out.print("<td>" + p.getMarca() + "</td>");
                	out.print("<td>" + p.getQuantidade() + "</td>");
                	out.print("<td>" + p.getPreco() + "</td>");
                	out.print("<td>" + p.getUnidade() + "</td>");
                	out.print("<td>" + p.getDescricao() + "</td>");
                	out.print("<td> <button id='editar' class='editar' onclick=openModal('modalId',"+p.getId()+") value='editar'> Editar </button> </td>");
                	out.print("<td> <button id='remover' class='remover' onclick=remover("+p.getId()+") value='remover'> Excluir </button> </td>");
                	out.print("</tr>");
                }%>
			</table>
		</div>

		<div>
			<button id="addProd" class="confirmar" onclick="window.location.href = 'AddProduto';">Adicionar Produto</button>
		</div>


	<div id="modalId" class="modal">
		<div class="modal-background"></div>
		<div class="modal-card">
    		<header class="modal-card-head">
      			<p class="modal-card-title">Editar</p>
      			<button class="delete" onclick="closeModal('modalId')" aria-label="close"></button>
    		</header>
    		<section class="modal-card-body">
    			<div class="field">
    				<div class="control">
    					<form action="Update.action" method="get">
							<label class="label">ID</label>
							<input id="prodId" class="input" type="number" name="id"  readonly>
							<label class="label">Produto</label>
							<input id="nome" class="input" type="text" name="produto">
							<label class="label">Marca</label>
							<input id="marca" class="input" type="text" name="marca">
							<label class="label">Quantidade</label>
							<input id="quantidade" class="input" type="number" name="quantidade">
							<label class="label">Unidade</label>
							<input id="unidade" class="input" type="text" name="unidade">
							<label class="label">Preço</label>
							<input id="preco" class="input" type="number" step=0.01 name="preco">
							<label class="label">Descrição</label>
							<input id="desc" class="input" type="text" name="descricao">
					</div>
				</div>
    		</section>
    		<footer class="modal-card-foot">
    			<input type="submit" class="aceitar" value="Atualizar">
      			<button class="remover">Cancelar</button>
				</form>
    		</footer>
	 		</div>
	</div>
	<script src="<%=request.getContextPath()%>/js/Methods.js"></script> 
	</body>
</html>

