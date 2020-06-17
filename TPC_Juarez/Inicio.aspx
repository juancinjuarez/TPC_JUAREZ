<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="TPC_Juarez.Inicio" %>

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
        <div class="bg-primary #3b6978">
        </div>
        <div class="container">
            <div class="row">
                <div class="col-4">
                    <button type="button" class="btn btn-primary">INICIO</button>
                </div>
                <div class="dropdown">
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        REGISTRARSE
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" href="RegistroProveedor.aspx">Registrarse como proveedor</a>
                        <a class="dropdown-item" href="RegistroCliente.aspx">Registrarse como comprador</a>
                        <a class="dropdown-item" href="RegistroVendedor.aspx">Registrarse como vendedor</a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-4">
                    <div class="card-row" style="width: 20rem;">
                        <asp:Repeater runat="server" ID="productosRepeater">
                            <ItemTemplate>
                                <div class="card">
                                    <img src="<%#Eval("ImagenURL") %>" class="card-img-top">
                                    <div class="card-body">
                                        <h5 class="card-title"><%#Eval("Nombre")%></h5>
                                        <p class="card-text"><%#Eval("Descripcion")%></p>
                                        <p class="card-text">STOCK: <%#Eval("Stock")%></p>
                                        <p class="card-text">PRECIO: $<%#Eval("PrecioVenta")%></p>
                                    </div>
                                    <%--<asp:Button ID="btnAgregarArticulo" CssClass="btn btn-primary" Text="Agregar al carrito" CommandArgument='<%#Eval("CodProducto") %>' CommandName="articuloSeleccionado" runat="server"/>--%>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
<%--                        <asp:Button ID="btnComprar" CssClass="btn btn-primary" Text="Finalizar compra" runat="server" OnClick="btnComprar_Click" />--%>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-4">
                </div>
            </div>
        </div>
    </form>
</body>
</html>
