<%-- 
    Document   : Login
    Created on : 22/11/2014, 13:11:54
    Author     : Filipe
--%>

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
        <script type="text/javascript">
            $(document).ready(function() {
                $('.fadeOnLoad').fadeIn(5000);
            });
        </script>
        <style>
@keyframes cf3FadeInOut {
  100% {
  opacity:1;
}
55% {
opacity:1;
}
45% {
opacity:0;
}
1% {
opacity:0;
}
}

#cf3 img.top {
animation-name: cf3FadeInOut;
animation-timing-function: ease-in-out;
animation-iteration-count: 1;
animation-duration: 5s;
animation-direction: alternate;
}
        </style>
        <title>Login Farmacia Online</title>
    </head>
    <body>
         </div>
         <div id="titulo" style="position: absolute;top:10px;left:550px; ">
        <img class="top" src="<%= request.getContextPath()%>/Images/farmacia.jpg" alt="" style="width:600px;" />
        </div>
        <div id="cf3" style="left:20px;position: absolute;top:150px;">
            <img class="top" src="<%= request.getContextPath()%>/Images/aspirina.jpg" alt="" style="width:600px;" />
        </div>
         <div id="cf3" style="left:1200px;position: absolute;top:170px;">
        <img class="top" src="<%= request.getContextPath()%>/Images/remedio.jpg" alt="" style="width:600px;" />
        </div>
        <br><br><br><br>
        <div id="Principal" style="width: 500px;position: absolute;left: 610px;top:300px;"> 
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <center class="panel-title">Login</center>
                </div>
                <div class="panel-body">
                    <div class="ajustar-grid">
                        <form class="form-horizontal" role="form" method="POST" action="/farmaciaweb/LoginController">
                            <div class="form-group">
                                <label for="nomeID" class="col-sm-2 control-label">Login:</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="nomeID"
                                           placeholder="Digite seu Login" name="nomeID">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="passwordID" class="col-sm-2 control-label">Senha:</label>
                                <div class="col-sm-10">
                                    <input type="password" class="form-control" id="passwordID"
                                           placeholder="Digite sua senha" name="passwordID">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-10">
                                    <label style="margin-right: 15px;">Eu sou:</label>
                                    <input type="radio" id="nomeID" name="RadTipo" value="Cliente">
                                    <label style="margin-right: 5px;">Cliente</label>

                                    <input type="radio" id="nomeID" name="RadTipo" value="Funcionario">
                                    <label style="margin-right: 5px;">Funcionario</label>

                                    <input type="radio" id="nomeID" name="RadTipo" value="Administrador">
                                    <label>Administrador</label>
                                </div>
                                <br><br>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn btn-primary">Login</button>
                                        <button type="reset" class="btn btn-warning">Limpar</button>
                                        <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal" onclick="<% session.setAttribute("Login", "NaoLogado"); %>">Não estou Registrado</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <!-- Modal -->
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title" id="myModalLabel">Cadastrar Cliente</h4>
                        </div>
                        <div class="modal-body">
                            <form class="form-horizontal" method="POST" action="/farmaciaweb/CadastrarClienteController">
                                <div class="form-group">
                                    <label for="nomeID" class="col-sm-2 control-label">Nome:</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="nomeID"
                                               placeholder="Nome" name="nomeID">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="sobreNomeID" class="col-sm-2 control-label">Sobrenome:</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="sobreNomeID"
                                               placeholder="Sobrenome" name="sobreNomeID">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="idadeID" class="col-sm-2 control-label">Idade:</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="idadeID"
                                               placeholder="Idade" name="idadeID">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="cidadeID" class="col-sm-2 control-label">Cidade:</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="cidadeID" name="cidadeID"
                                               placeholder="Cidade">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="bairroID" class="col-sm-2 control-label">Bairro:</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="bairroID"
                                               placeholder="Bairro" name="bairroID">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="ruaID" class="col-sm-2 control-label">Rua:</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="ruaID"
                                               placeholder="Rua" name="ruaID">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="numeroID" class="col-sm-2 control-label">Numero:</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control.melhora" id="numeroID"
                                               placeholder="Numero da Residência" name="numeroID" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="telefoneID" class="col-sm-2 control-label">Telefone:</label>
                                    <div class="col-sm-10">
                                        <input type="tel" class="form-control.melhora" id="telefoneID"
                                               placeholder="Numero do Telefone"  name="telefoneID"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="loginID" class="col-sm-2 control-label">Login:</label>
                                    <div class="col-sm-10">
                                        <input type="password" class="form-control.melhora" id="passwordID"
                                               placeholder="Digite seu Login	" name="loginID"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="telefoneID" class="col-sm-2 control-label">Senha:</label>
                                    <div class="col-sm-10">
                                        <input type="password" class="form-control.melhora" id="passwordID"
                                               placeholder="Digite sua senha	" name="passwordID"/>
                                    </div>
                                </div>
                        </div>
                        <div class="modal-footer">
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-primary">Cadastrar</button>
                                    <button type="reset"  class="btn btn-warning">Limpar</button>
                                </div>
                            </div>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
