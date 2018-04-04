<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="alert alert-info" role="alert">
            Detalles de la compra</div>
        <div>
    
        <br />
        <br />
    
        Detalles de compra<br />
        <br />
        Artista:<asp:Label ID="lblarti" runat="server" Text="Label"></asp:Label>
        <br />
        Nombre de evento:<asp:Label ID="lblnomevento" runat="server" Text="Label"></asp:Label>
        <br />
        Horario:<asp:Label ID="lblhorario" runat="server" Text="Label"></asp:Label>
        <br />
        Cantidad de entradas:<asp:Label ID="lblcantentra" runat="server" Text="Label"></asp:Label>
        <br />
        Asientos:
        <asp:Label ID="lblas" runat="server" Text="Label"></asp:Label>
        <br />
        <br />

    </div>
    </form>
</body>
</html>
