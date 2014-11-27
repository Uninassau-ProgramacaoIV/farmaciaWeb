<%-- 
    Document   : CadastroProdutos
    Created on : 22/11/2014, 10:19:22
    Author     : Filipe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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

        <title>Cadastrar Produtos</title>
    </head>
    <body>
        <div class="panel panel-primary">
            <div class="panel-heading">
                <center class="panel-title">Cadastro de Produtos</center>
            </div>
            <div class="panel-body">
                <div class="ajustar-grid">
                    <form class="form-horizontal" role="form" method="POST" action="../CadastrarProdutoController">
                        <div class="form-group">
                            <label for="nomeID" class="col-sm-2 control-label">Nome:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="nomeID"
                                       placeholder="Nome do produto" name="nomeID">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="precoID" class="col-sm-2 control-label">Preço:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="nomeID"
                                       placeholder="Nome do produto" name="precoID">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="validadeID" class="col-sm-2 control-label">Validade:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="validadeID"
                                       placeholder="Validade" name="validadeID">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="quantidadeID" class="col-sm-2 control-label">Quantidade:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="quantidadeID"
                                       placeholder="Quantidade" name="quantidadeID">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="categoriaID" class="col-sm-2 control-label">Categoria:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="categoriaID"
                                       placeholder="Categoria" name="categoriaID">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="fornecedorID" class="col-sm-2 control-label">Fornecedor:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="fornecedorID"
                                       placeholder="Fornecedor" name="fornecedorID">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-primary">Cadastrar</button>
                                <button type="reset" class="btn btn-warning">Limpar</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
</body>
</html>
