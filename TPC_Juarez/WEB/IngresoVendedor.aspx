<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IngresoVendedor.aspx.cs" Inherits="TPC_Juarez.WEB.IngresoVendedor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="form-group">
                <label for="ingresar nombre">Codigo de vendedor: </label>
                <input type="text" class="form-control" id="codVendedor" aria-describedby="CodUsuario" placeholder="Ingresar Codigo Vendedor" />
            </div>
            <div class="form-group">
                <label for="ingresar">Contraseña:</label>
                <input type="password" class="form-control" id="password" placeholder="Contraseña" />
            </div>
            <asp:button type="button" Text="Iniciar Sesion" CssClass="btn btn-primary" CommandName="inicio" CommandArgument="iniciarSesion" runat="server"/>
        </div>
    </form>
</body>
</html>
