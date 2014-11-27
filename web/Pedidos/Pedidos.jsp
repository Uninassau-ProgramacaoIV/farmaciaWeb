<%-- 
    Document   : Pedidos
    Created on : 22/11/2014, 20:18:22
    Author     : Filipe
--%>

<%@page import="farmaciaweb.Models.Produtos"%>
<%@page import="Persistence.PersistenceProduto"%>
<%@page import="Persistence.PersisteCliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">

        <!-- Optional theme -->
        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">

        <!-- Latest compiled and minified JavaScript -->
        <script
        src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
        <style>
            .CSSTableGenerator {
                margin:0px;padding:0px;
                width:100%;
                border:1px solid #000000;

                -moz-border-radius-bottomleft:0px;
                -webkit-border-bottom-left-radius:0px;
                border-bottom-left-radius:0px;

                -moz-border-radius-bottomright:0px;
                -webkit-border-bottom-right-radius:0px;
                border-bottom-right-radius:0px;

                -moz-border-radius-topright:0px;
                -webkit-border-top-right-radius:0px;
                border-top-right-radius:0px;

                -moz-border-radius-topleft:0px;
                -webkit-border-top-left-radius:0px;
                border-top-left-radius:0px;
            }.CSSTableGenerator table{
                border-collapse: collapse;
                border-spacing: 0;
                width:100%;
                height:100%;
                margin:0px;padding:0px;
            }.CSSTableGenerator tr:last-child td:last-child {
                -moz-border-radius-bottomright:0px;
                -webkit-border-bottom-right-radius:0px;
                border-bottom-right-radius:0px;
            }
            .CSSTableGenerator table tr:first-child td:first-child {
                -moz-border-radius-topleft:0px;
                -webkit-border-top-left-radius:0px;
                border-top-left-radius:0px;
            }
            .CSSTableGenerator table tr:first-child td:last-child {
                -moz-border-radius-topright:0px;
                -webkit-border-top-right-radius:0px;
                border-top-right-radius:0px;
            }.CSSTableGenerator tr:last-child td:first-child{
                -moz-border-radius-bottomleft:0px;
                -webkit-border-bottom-left-radius:0px;
                border-bottom-left-radius:0px;
            }.CSSTableGenerator tr:hover td{

            }
            .CSSTableGenerator tr:nth-child(odd){ background-color:#ffaa56; }
            .CSSTableGenerator tr:nth-child(even)    { background-color:#ffffff; }.CSSTableGenerator td{
                vertical-align:middle;


                border:1px solid #000000;
                border-width:0px 1px 1px 0px;
                text-align:left;
                padding:7px;
                font-size:10px;
                font-family:Arial;
                font-weight:normal;
                color:#000000;
            }.CSSTableGenerator tr:last-child td{
                border-width:0px 1px 0px 0px;
            }.CSSTableGenerator tr td:last-child{
                border-width:0px 0px 1px 0px;
            }.CSSTableGenerator tr:last-child td:last-child{
                border-width:0px 0px 0px 0px;
            }
            .CSSTableGenerator tr:first-child td{
                background:-o-linear-gradient(bottom, #00007f 5%, #005fbf 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #00007f), color-stop(1, #005fbf) );
                background:-moz-linear-gradient( center top, #00007f 5%, #005fbf 100% );
                filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#00007f", endColorstr="#005fbf");	background: -o-linear-gradient(top,#00007f,005fbf);

                background-color:#00007f;
                border:0px solid #000000;
                text-align:center;
                border-width:0px 0px 1px 1px;
                font-size:14px;
                font-family:Arial;
                font-weight:bold;
                color:#ffffff;
            }
            .CSSTableGenerator tr:first-child:hover td{
                background:-o-linear-gradient(bottom, #00007f 5%, #005fbf 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #00007f), color-stop(1, #005fbf) );
                background:-moz-linear-gradient( center top, #00007f 5%, #005fbf 100% );
                filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#00007f", endColorstr="#005fbf");	background: -o-linear-gradient(top,#00007f,005fbf);

                background-color:#00007f;
            }
            .CSSTableGenerator tr:first-child td:first-child{
                border-width:0px 0px 1px 0px;
            }
            .CSSTableGenerator tr:first-child td:last-child{
                border-width:0px 0px 1px 1px;
            }
        </style>
        <script>
            function addRow(tableID) {
 
            var table = document.getElementById(tableID);
 
            var rowCount = table.rows.length;
            var row = table.insertRow(rowCount);
 
            var colCount = table.rows[0].cells.length;
 
            for(var i=0; i<colCount; i++) {
 
                var newcell = row.insertCell(i);
 
                newcell.innerHTML = table.rows[0].cells[i].innerHTML;
                var cell1 = row.insertCell(0);
                var cell2 = row.insertCell(1);
                var cell3 = row.insertCell(2);
                var cell4 = row.insertCell(3);
                var cell5 = row.insertCell(4);
                var cell6 = row.insertCell(5);
                cell1.innerHTML = $("#codigoID").val();
                cell2.innerHTML = $("#nomeID").val();
                cell3.innerHTML = $("#categoriaID").val();
                cell4.innerHTML = $("#precoID").val();
                cell5.innerHTML = $("#validadeID").val();
                cell6.innerHTML = $("#quantidadeID").val();
                var preco = document.getElementById("precoID").value;
                var valor_total = document.getElementById("valorTotal").value || 0;
                if(valor_total != 0){
                valor_total = valor_total.replace("R$ ","");
                }
                var soma =  parseFloat(preco) + parseFloat(valor_total);
                document.getElementById("valorTotal").setAttribute("value","R$ " + soma);
               }
        }
           jQuery(document).ready(function($) {
                $(".clickableRow").click(function() {
                    var linha = $(this).find("td").text();
                    var res = linha.split(" ");
                    document.getElementById("codigoID").setAttribute("value", res[0]);
                    document.getElementById("nomeID").setAttribute("value", res[1]);
                    document.getElementById("categoriaID").setAttribute("value", res[2]);
                    document.getElementById("precoID").setAttribute("value", res[3]);
                    document.getElementById("validadeID").setAttribute("value", res[4]);
                });
            });

        </script>
        <title>Pedidos</title>
    </head>
    <body>
        <div class="CSSTableGenerator" style="height: 200px;overflow-y: auto;overflow-x: auto;" id="TabelaCliente">
            <table name="Clientes" id="Clientes">
                <thead><center><b>Tabela Produtos</b></center> </thead>
                <tr>
                    <td style="text-align: center;font-weight: bold;">Codigo</td>
                    <td style="text-align: center;font-weight: bold;">Nome</td>
                    <td style="text-align: center;font-weight: bold;">Categoria</td>
                    <td style="text-align: center;font-weight: bold;">Preço</td>
                    <td style="text-align: center;font-weight: bold;">Validade</td>
                </tr>
                <% Persistence.PersistenceProduto produtos = new PersistenceProduto();
                    for (Produtos x : produtos.getAllProdutos()) {
                %>
                <tr class='clickableRow'>
                    <td ><%= x.getCodigo()%> </td> 
                    <td ><%= x.getNome()%> </td> 
                    <td ><%= x.getCategoria()%> </td> 
                    <td ><%= x.getPreco()%> </td>
                    <td ><%= x.getValidade()%> </td> 
                </tr>
                <% }%>
            </table>
        </div>
        <div id="Formulario" style="position: absolute;margin-top: 15px;">
            <form class="form-horizontal" style="margin-top: 10px;">
                <div class="form-group">
                    <label for="codigoID" class="col-sm-2 control-label">Código:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="codigoID"
                               name="codigoID" readonly="true" style="display:inline;width: 50px;">
                    </div>
                </div>
                <div class="form-group">
                    <label for="nomeID" class="col-sm-2 control-label">Nome:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="nomeID"
                               placeholder="Nome" name="nomeID">
                    </div>
                </div>
                <div class="form-group">
                    <label for="categoriaID" class="col-sm-2 control-label">Categoria:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="categoriaID"
                               placeholder="Sobrenome" name="categoriaID">
                    </div>
                </div>
                  <div class="form-group">
                    <label for="precoID" class="col-sm-2 control-label">Preço:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="precoID"
                               placeholder="Sobrenome" name="precoID">
                    </div>
                </div>
                 <div class="form-group">
                    <label for="validadeID" class="col-sm-2 control-label">Validade:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="validadeID"
                               placeholder="Sobrenome" name="validadeID">
                    </div>
                </div>
                   <div class="form-group">
                    <label for="quantidadeID" class="col-sm-2 control-label">Quantidade:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="quantidadeID"
                               placeholder="Digite a quantidade" name="quantidadeID">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="button" class="btn btn-primary" name="UpdateCliente" onclick="addRow('dataTable')">Adicionar</button>
                        <button type="submit"  class="btn btn-danger" id="Deletar" name="DeleteCliente" >Remover</button>
                    </div>
                </div>
            </form>
             <div style="width:600px;position: absolute;left: 600px;top: 10px;">
            <table id="dataTable" class="table">
           <thead><center><b>Carrinho</b></center> </thead>
            <td style="width:100px;"></td>
            </table>
           </div>
            <b>Valor Total: </b><input type="text" id="valorTotal" readonly="true" name="valorTotal" style="color: red;font-size: larger;border-style: none;" size="5"/>
    </body>
</html>
