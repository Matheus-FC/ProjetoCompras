<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Produto"%>
<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>

<head>
        <title>Gerenciamento de Estoque</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            table, th, td{
            border: 1px solid black;
            font-family: 'Courier New', Courier, monospace;
            }
            label{
                padding: 10px;
                text-align: center;
                font-family: 'Courier New', Courier, monospace;
            }
            .content {
                max-width: 500px;
                margin: auto;
            }
        </style>

</head>
    <div class='content'>
    <div>
        <div>
            <div>
            <a href='mercadoria'>
                <label> Mercadorias </label>
            </a>
            <a href='estoque'>
                <label> Estoque </label>
            </a>
        </div>
    </div>
    <div>
        <div>
            <div>
            <a href='estoque'>
                <label> Gerenciamento </label>
            </a>
            <a href='cadastrar'>
                <label>  Alteração e Cadastro </label>
            </a>
            <a href='relatorioestoque'>
                <label> Relatório </label>
            </a>
        </div>
    </div>






    <div>
        <label> Total de Items no Estoque</label>
        <label> 2 </label>
    </div>
    <div>
        <table>
            <tr>
                <th> Código</th>
                <th> Nome</th>
                <th> Marca</th>
                <th> Unidade</th>
                <th> Preço R$</th>
                <th> Quantidade no Estoque</th>
                <th> Descrição</th>
            </tr>
            <%
                List<Produto> produtos = (List)request.getAttribute("produtos");
                for(Produto p: produtos){
                    out.print("<tr>");
                    out.print("<td>"+ p.getId() +"</td>");
                    out.print("<td>"+ p.getNome() +"</td>");
                    out.print("<td>"+ p.getMarca() +"</td>");
                    out.print("<td>"+ p.getUnidade() +"</td>");
                    out.print("<td>"+ p.getPreco() +"</td>");
                    out.print("<td>"+ p.getQuantidade() +"</td>");
                    out.print("<td>"+ p.getDescricao() +"</td>");
                    out.print("</tr>");
                }
            %>

        </table>
    </div>
</div>
    