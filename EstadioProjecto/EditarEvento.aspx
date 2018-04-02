<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditarEvento.aspx.cs" Inherits="EditarEvento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 73px;
        }

        .auto-style2 {
            height: 63px;
        }
        .auto-style3 {
            width: 171px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <asp:Label ID="lblNombre" runat="server" Text="Digite el nombre del Evento a editar"></asp:Label>
            </div>
            <div>
                <asp:TextBox ID="txtNombre" CssClass="form-control" Width="250px" placeholder="Nombre..." runat="server"></asp:TextBox>
            </div>
            <div class="auto-style2">
                <asp:Label ID="lblDesc" runat="server" Text="Descripcion"></asp:Label>
                <asp:TextBox ID="txtDesc" CssClass="form-control" Width="250px" placeholder="Descripcion..." runat="server"></asp:TextBox>
            </div>
            <div class="auto-style2">
                <asp:Label ID="lblActor" runat="server" Text="Actor"></asp:Label>
                <asp:TextBox ID="txtActor" CssClass="form-control" Width="250px" placeholder="Actor..." runat="server"></asp:TextBox>
            </div>
            <div class="auto-style2">
                <asp:Label ID="lblHorario" runat="server" Text="Horario"></asp:Label>
                <asp:TextBox ID="txtHorario" CssClass="form-control" Width="250px" placeholder="Horario..." runat="server"></asp:TextBox>
            </div>
            <div class="auto-style1">
                <asp:Label ID="lblCliente" runat="server" Text="Cliente"></asp:Label>
                <asp:TextBox ID="txtCiente" CssClass="form-control" Width="250px" placeholder="Cliente..." runat="server"></asp:TextBox>
            </div>
            <div>
                <table class="w-100">
                    <tr>
                        <td class="auto-style3">
                            <div>
                                <asp:Button ID="btnBuscar" CssClass="btn btn-info" runat="server" Text="Buscar Evento" />
                            </div>
                        </td>
                        <td>
                            <div>
                                <asp:Button ID="btnGuardar" CssClass="btn btn-info" runat="server" Text="Guardar Evento" />
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
