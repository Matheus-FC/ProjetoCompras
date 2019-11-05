<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Mercadorias</title>
    </head>

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

    <body class='content'>
        <div>
            <div>
                <div>
                <a href=''>
                    <label> Mercadorias </label>
                </a>
                <a href='estoque'>
                    <label> Estoque </label>
                </a>
            </div>
        </div>
        <div>
            <div>
                <label> Pesquisa </label>
                <input type='number' placeholder="Código da mercadoria" min='0'>
                <button type='button'> 
                    <label> Pesquisar </label>
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
                    <th> Quantidade</th>
                </tr>

                <tr>
                    <td> 1</td>
                    <td> Camisa</td>
                    <td> ArtRock</td>
                    <td> NaA</td>
                    <td> 20</td>
                    <td> 20 </td>
                    <td>
                        <input type='number' placeholder="Quantidade" min='1'>
                    </td>
                </tr>

                <tr>
                    <td> 2</td>
                    <td> Arroz</td>
                    <td> Saboroso</td>
                    <td> 10 </td>
                    <td> 13</td>
                    <td> 0 </td>
                    <td>
                        <input type='number' placeholder="Quantidade" min='1'>
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <button>
                <a href='relatoriocompra'>
                        <label> Finalizar Compra </label>
                </a>
            </button>
        </div>
    </body>
</html>