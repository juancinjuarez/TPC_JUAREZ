<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroProveedor.aspx.cs" Inherits="TPC_Juarez.RegistroProveedor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>PROVEEDOR</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="form-group">
                <label for="ingresar nombre">Nombre: </label>
                <input type="text" class="form-control" id="nombre" aria-describedby="emailHelp" placeholder="Ingresar nombre" />
            </div>
            <div class="form-group">
                <label for="ingresar cuit">CUIT: </label>
                <input type="text" class="form-control" id="cuit" aria-describedby="cuit" placeholder="Ingresar CUIT" />
            </div>
            <div class="form-group">
                <label for="ingresar telefono">Teléfono: </label>
                <input type="tel" class="form-control" id="telefono" aria-describedby="telefono" placeholder="Ingresar telefono" />
            </div>
            <div class="form-group">
                <label for="ingresar mail">e-Mail: </label>
                <input type="email" class="form-control" id="email" aria-describedby="email" placeholder="Ingresar e-mail" />
            </div>
            <div class="form-group">
                <label for="ingresar">Contraseña:</label>
                <input type="password" class="form-control" id="password" placeholder="Contraseña" />
            </div>
            <div class="form-group">
                <label for="ingresar">Reingresar contraseña:</label>
                <input type="password" class="form-control" id="password2" placeholder="ReingresoContraseña" />
            </div>
            <button type="submit" class="btn btn-primary">Registrarme</button>
        </div>
    </form>
</body>
</html>
