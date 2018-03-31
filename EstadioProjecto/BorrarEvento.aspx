<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BorrarEvento.aspx.cs" Inherits="BorrarEvento" %>

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
                <asp:Label ID="lblNombre" runat="server" Text="Digite el nombre del Evento a eliminar"></asp:Label>

            </div>
            <div>
                <asp:TextBox ID="txtNombre" placeholder="Nombre..." runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="btnEliminar" runat="server" Text="Eliminar Evento" />
            </div>
        </div>
    </form>
</body>
</html>
