<%@ Page Language="C#" AutoEventWireup="true" CodeFile="elegirEvento.aspx.cs" Inherits="elegirEvento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            Cantidad de Entradas
            <asp:DropDownList ID="DropDownList1" runat="server" Height="28px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="116px">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
            </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p>
            ElegirEvento:&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="actor" DataValueField="id_evento" Height="16px" Width="140px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [id_evento], [actor] FROM [evento]"></asp:SqlDataSource>
        </p>
        <asp:Button ID="btncomprar" runat="server" OnClick="btncomprar_Click" Text="Elegir Asientos" Width="166px" />
        <br />
    </form>
</body>
</html>
