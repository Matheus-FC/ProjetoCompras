<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<head>
    <title>Relatório de Compra</title>
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
    <label>Relatório de Compra</label>
</div>
<div>
    <table>
        <tr>
            <th> Código</th>
            <th> Nome</th>
            <th> Marca</th>
            <th> Unidade</th>
            <th> Preço R$ unitário</th>
            <th> Quantidade</th>
            <th> Total item</th>
        </tr>

        <tr>
            <td> 1</td>
            <td> Camisa</td>
            <td> ArtRock</td>
            <td> NaA</td>
            <td> 20</td>
            <td> 3 </td>
            <td> 60</td>
        </tr>
    </table>
    <div>
        <label><b>Total da Compra: </b></label>
        <label>60</label>
    </div>
</div>
</div>
    