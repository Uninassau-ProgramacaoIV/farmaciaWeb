<%-- 
    Document   : CadastroClientes
    Created on : 22/11/2014, 10:20:40
    Author     : Filipe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
</style>

        <title>Cadastrar Clientes</title>
    </head>
    <body>
     <div class="panel panel-primary">
		<div class="panel-heading">
			<center class="panel-title">Cadastro de cliente</center>
		</div>
		<div class="panel-body">
			<div class="ajustar-grid">
				<form class="form-horizontal" method="POST" action="../CadastrarClienteController">
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
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-primary">Cadastrar</button>
							<button type="reset"  class="btn btn-warning">Limpar</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	</div>
	</div>
    </body>
</html>
