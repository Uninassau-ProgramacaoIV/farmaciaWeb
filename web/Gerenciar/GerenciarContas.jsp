<%-- 
    Document   : GerenciarContas
    Created on : 22/11/2014, 15:36:54
    Author     : Filipe
--%>

<%@page import="farmaciaweb.Models.Funcionarios"%>
<%@page import="Persistence.PersistenceFuncionario"%>
<%@page import="Persistence.PersisteCliente"%>
<%@page import="java.util.List"%>
<%@page import="farmaciaweb.Models.Clientes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
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
            jQuery(document).ready(function($) {
                $(".clickableRow").click(function() {
                    var linha = $(this).find("td").text();
                    var res = linha.split(" ");
                    document.getElementById("codigoID").setAttribute("value", res[0]);
                    document.getElementById("loginID").setAttribute("value", res[1]);
                    document.getElementById("senhaID").setAttribute("value", res[2]);
                });
            });
                jQuery(document).ready(function($) {
                $(".clickableRow").click(function() {
                    var linha = $(this).find("td").text();
                    var res = linha.split(" ");
                    document.getElementById("fcodigoID").setAttribute("value", res[0]);
                    document.getElementById("floginID").setAttribute("value", res[1]);
                    document.getElementById("fsenhaID").setAttribute("value", res[2]);
                });
            });

        </script>

    </script>
    <title>Gerenciar Contas</title>
</head>
<body>
    <div id="Principal" style="width: 600px;height: 600px;margin-top: 10px;">
        <div class="bs-example bs-example-tabs" role="tabpanel">
            <ul id="myTab" class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="false">Cliente</a></li>
                <li role="presentation" class=""><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile" aria-expanded="true">Funcionario</a></li>
            </ul>
            <div id="myTabContent" class="tab-content">
                <div role="tabpanel" class="tab-pane fade active in" id="home" aria-labelledby="home-tab">

                    <div class="CSSTableGenerator" style="height: 200px;overflow-y: auto;overflow-x: auto;" id="TabelaCliente">
                        <table name="Clientes" id="Clientes">
                            <thead><center><b>Tabela Clientes</b></center> </thead>
                            <tr>
                                <td style="text-align: center;font-weight: bold;">Nome</td>
                                <td style="text-align: center;font-weight: bold;">Login</td>
                                <td style="text-align: center;font-weight: bold;">Senha</td>
                            </tr>
                            <% Persistence.PersisteCliente clientes = new PersisteCliente();
                                for (Clientes x : clientes.getAllCliente()) {
                            %>
                            <tr class='clickableRow'>
                                <td ><%= x.getCodigo()%> </td> 
                                <td ><%= x.getLoginCliente()%> </td> 
                                <td ><%= x.getSenha()%> </td> 
                            </tr>
                            <% }%>
                        </table>
                    </div>

                    <div id="Formulario" style="position: absolute;margin-top: 15px;">
                        <form class="form-horizontal" method="POST" action="../GerenciarContasController" style="margin-top: 10px;">
                            <div class="form-group">
                                <label for="codigoID" class="col-sm-2 control-label">Código:</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="codigoID"
                                           name="codigoID" readonly="true" style="display:inline;width: 50px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="nomeID" class="col-sm-2 control-label">Login:</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="loginID"
                                           placeholder="Nome" name="loginID">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="sobreNomeID" class="col-sm-2 control-label">Senha:</label>
                                <div class="col-sm-10">
                                    <input type="password" class="form-control" id="senhaID"
                                           placeholder="Sobrenome" name="senhaID">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-primary" name="UpdateCliente" onclick="location.reload();">Update</button>
                                    <button type="submit"  class="btn btn-danger" id="Deletar" name="DeleteCliente" >Deletar</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>  
                <div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">
                    <div class="CSSTableGenerator" style="height: 200px;overflow-y: auto;overflow-x: auto;" id="TabelaCliente">
                        <table name="Clientes" id="Clientes">
                            <thead><center><b>Tabela Clientes</b></center> </thead>
                            <tr>
                                <td style="text-align: center;font-weight: bold;">Nome</td>
                                <td style="text-align: center;font-weight: bold;">Login</td>
                                <td style="text-align: center;font-weight: bold;">Senha</td>
                            </tr>
                            <% Persistence.PersistenceFuncionario funcionarios = new PersistenceFuncionario();
                                for (Funcionarios x : funcionarios.getAllFuncionarios()) {
                            %>
                            <tr class='clickableRow'>
                                <td ><%= x.getCodigo()%> </td> 
                                <td ><%= x.getLoginFuncionario()%> </td> 
                                <td ><%= x.getSenha()%> </td> 
                            </tr>
                            <% }%>
                        </table>
                    </div>

                    <div id="Formulario" style="position: absolute;margin-top: 15px;">
                        <form class="form-horizontal" method="POST" action="../GerenciarContasController" style="margin-top: 10px;">
                            <div class="form-group">
                                <label for="fcodigoID" class="col-sm-2 control-label">Código:</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="fcodigoID"
                                           name="fcodigoID" readonly="true" style="display:inline;width: 50px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="fnomeID" class="col-sm-2 control-label">Login:</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="floginID"
                                           placeholder="Nome" name="floginID">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="sobreNomeID" class="col-sm-2 control-label">Senha:</label>
                                <div class="col-sm-10">
                                    <input type="password" class="form-control" id="fsenhaID"
                                           placeholder="Sobrenome" name="fsenhaID">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-primary" name="UpdateFuncionario">Update</button>
                                    <button type="submit"  class="btn btn-danger" id="Deletar" name="DeletarFuncionario">Deletar</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>  
            </div>
        </div>
    </div>
</div>
</body>
</html>
