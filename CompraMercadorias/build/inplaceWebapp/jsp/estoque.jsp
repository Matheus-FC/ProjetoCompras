<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
    <div>
        <label>Pesquisa </label>
        <input type='number' placeholder="Código da mercadoria" min='0'>
        <button type='button'> 
            <label>Pesquisar </label>
        </button>
    </div>
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

        <tr>
            <td> 1</td>
                <td> Camisa</td>
                <td> ArtRock</td>
                <td> NaA</td>
                <td> 20</td>
                <td> 20 </td>
                <td> Camiseta</td>
            <td>
                <button>
                    <a href='atualizar'>
                        <label> Alterar </label>
                    </a>
                </button>
            </td>
            <td>
                <button>
                    <label> Excluir </label>
                </button>
            </td>
        </tr>

        <tr>
            <td> 1</td>
            <td> 2</td>
                <td> Arroz</td>
                <td> Saboroso</td>
                <td> 10 </td>
                <td> 13</td>
                <td> Pacote de Arroz</td>
            <td>
                <button>
                    <a href='atualizar'>
                        <label> Alterar </label>
                    </a>
                </button>
            </td>
            <td>
                <button>
                    <label> Excluir </label>
                </button>
            </td>
        </tr>
    </table>
</div>
</div>