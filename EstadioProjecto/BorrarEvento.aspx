<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BorrarEvento.aspx.cs" Inherits="BorrarEvento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <title>Borrar Evento</title>
    <style type="text/css">
        .auto-style1 {
            height: 55px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <br />
                <asp:Label ID="lblNombre" runat="server" Text="Digite el nombre del Evento a eliminar"></asp:Label>

            </div>
            <div class="auto-style1">
                <asp:TextBox ID="txtNombre" CssClass="form-control"  Width="250px" placeholder="Nombre..." runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="btnEliminar" CssClass="btn btn-info" runat="server" Text="Eliminar Evento" />
            </div>
        </div>
    </form>
</body>
</html>
