<%@ Page Language="C#" AutoEventWireup="true" CodeFile="asientos.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 30%;
            height: 191px;
        }
        .auto-style2 {
            width: 79px;
        }
        .auto-style3 {
            width: 89px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <center>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" BackColor="White" OnClick="Button1_Click" Text="A1" />
                </td>
                <td class="auto-style2">
                    <asp:Button ID="Button2" runat="server" BackColor="White" OnClick="Button2_Click" Text="A2" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button3" runat="server" BackColor="White" OnClick="Button3_Click" Text="A3" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button4" runat="server" BackColor="White" OnClick="Button4_Click" Text="A4" />
                </td>
                <td class="auto-style2">
                    <asp:Button ID="Button5" runat="server" BackColor="White" OnClick="Button5_Click" Text="A5" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button6" runat="server" BackColor="White" OnClick="Button6_Click" Text="A6" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button7" runat="server" BackColor="White" OnClick="Button7_Click" Text="A7" />
                </td>
                <td class="auto-style2">
                    <asp:Button ID="Button8" runat="server" BackColor="White" OnClick="Button8_Click" Text="A8" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button9" runat="server" BackColor="White" OnClick="Button9_Click" Text="A9" />
                </td>
            </tr>
        </table>
    </center>
    </div>
        <p>
            &nbsp;</p>
        <p>
            Cantidad de entradas:
            <asp:Label ID="lblcantEntra" runat="server" Text="Label"></asp:Label>
            </p>
        <p>
            Zona VIP&nbsp; (A1 , A2,&nbsp; A3) Precio:<asp:Label ID="lblvip" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            General (A4,A5,A6,A7,A8,A9) Precio:
            <asp:Label ID="lblgeneral" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <asp:Button ID="test" runat="server" OnClick="test_Click" Text="Comprar" Height="23px" Width="128px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
        <p>
            <asp:Button ID="btnback" runat="server" OnClick="btnback_Click" Text="Volver" Width="126px" Height="24px" />
        &nbsp;&nbsp;
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
