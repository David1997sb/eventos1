<%@ Page Language="C#" AutoEventWireup="true" CodeFile="confirmacion.aspx.cs" Inherits="confirmacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
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
        <asp:Button ID="btnvolver" runat="server" OnClick="btnvolver_Click" Text="Volver a eventos" Width="158px" />
    </form>
</body>
</html>
