<%-- 
    Document   : Main
    Created on : 22/11/2014, 10:23:10
    Author     : Filipe
--%>

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
<style type="text/css">
.ajustar-grid {
	margin-top: 20px;
	margin-left: 10px;
	width: 485px;
	height: 400px;
}

.form-control.melhora {
	width: 10px;
}

.titulo
{
    padding: 10px 15px;
    border-bottom: 1px solid transparent;
    border-top-left-radius: 3px;
    border-top-right-radius: 3px;
    background-color: #337ab7;
    color: #fff;
}

</style>

        <title>Farmacia Online</title>
    </head>
    <body>
       
      <div class="titulo">
        <h3 class="panel-title"><center><b>Projeto Farmacia</b></center></h3>
    </div>
<nav class="navbar navbar-default" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Farmacia Online</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="Pedidos/Pedidos.jsp" target="content">Realizar Pedidos<span class="sr-only">(current)</span></a></li>
        <li><a href="Gerenciar/GerenciarContas.jsp" target="content">Gerenciar Contas</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Cadastros<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="Cadastros/CadastroClientes.jsp" target="content">Cadastrar Cliente</a></li>
            <li><a href="Cadastros/CadastroFuncionarios.jsp" target="content">Cadastrar Funcionario</a></li>
            <li><a href="Cadastros/CadastroProdutos.jsp" target="content">Cadastrar Produto</a></li>
            <li><a href="Cadastros/CadastroFornecedores.jsp" target="content">Cadastrar Fornecedor</a></li>
          </ul>
        </li>
      </ul>
        <ul class="nav navbar-nav navbar-right">
         <li><a href="#">Logado como: ${Login}</a></li>
         <li><a href="Login/Login.jsp" onclick="<% session.setAttribute("Login", "NaoLoagado"); %>"> <span class="glyphicon glyphicon-off" aria-hidden="true"/></a></li>
        </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
       <iframe name="content" style="width: 1300px;height: 950px;margin-left: 10px;border-style: none">
                
       </iframe>
    </body>
</html>
