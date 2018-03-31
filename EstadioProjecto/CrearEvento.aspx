<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CrearEvento.aspx.cs" Inherits="CrearEvento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
                <asp:TextBox ID="txtNombre" placeholder="Nombre..." runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="lblDesc" runat="server" Text="Descripcion"></asp:Label>
                <asp:TextBox ID="txtDesc" placeholder="Descripcion..." runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="lblActor" runat="server" Text="Actor"></asp:Label>
                <asp:TextBox ID="txtActor" placeholder="Actor..." runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="lblHorario" runat="server" Text="Horario"></asp:Label>
                <asp:TextBox ID="txtHorario" placeholder="Horario..." runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="lblCliente" runat="server" Text="Cliente"></asp:Label>
                <asp:TextBox ID="txtCiente" placeholder="Cliente..." runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="btnCrear" runat="server" Text="Crear Evento" />
            </div>
        </div>
    </form>
</body>
</html>
