<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<head>
    <title>Controle de Mercadorias</title>
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
            <label> Alteração e Cadastro </label>
        </a>
        <a href='relatorioestoque'>
            <label> Relatório </label>
        </a>
    </div>
</div>
<div>
    <form>
        <table>
            <tr>
                <td><label>Código</label></td>
                <td><input type='number' placeholder="Código do Produto" min='0'></td>
            </tr>
            <tr>
                <td><label>Nome</label></td>
                <td><input type='text' placeholder="Nome"></td>
            </tr>
            <tr>
                <td><label>Unidade</label></td>
                <td><input type='text' placeholder="Unidade"></td>
            </tr>
            <tr>
                <td><label>Preço R$</label></td>
                <td><input type='number' placeholder="Preço Unitário" min='0'></td>
            </tr>
            <tr>
                <td><label>Quantidade no Estoque</label></td>
                <td><input type='number' placeholder="Mercadoria no Estoque" min='1'></td>
            </tr>
            <tr>
                <td><label>Descrição</label></td>
                <td><input type='text' placeholder="Descrição"></td>
            </tr>
        </table>
    </form>
    <div>
        <button>
            Salvar 
        </button>
    </div>
</div>
</div>