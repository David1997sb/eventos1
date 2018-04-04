<%@ Page Language="C#" AutoEventWireup="true" CodeFile="modifyEvent.aspx.cs" Inherits="modifyEvent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 159px;
        }
        .auto-style3 {
            width: 159px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            width: 342px;
        }
        .auto-style6 {
            height: 26px;
            width: 176px;
        }
        .auto-style7 {
            width: 176px;
        }
        .auto-style8 {
            height: 26px;
            width: 108px;
        }
        .auto-style9 {
            width: 108px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Actor:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtactor" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style8">Id de Evento:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtidevento" runat="server" Width="83px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Horario:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txthorario" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td>
                    <div class="auto-style13" role="group" aria-label="Opciones">             
                              <asp:Button ID="btnbuscar" runat="server" OnClick="btnbuscar_Click" Text="Mostrar" Width="91px" />                          
                    </div>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Nombre de Evento:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtnomevento" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Descripcion:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtdescripcion" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Precio VIP:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtVIP" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td>Precio General:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtGeneral" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <asp:Button ID="btnadd" runat="server" OnClick="btnadd_Click" Text="Agregar" Width="96px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnmodificar" runat="server" OnClick="btnmodificar_Click" Text="Modificar" Width="88px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnborrar" runat="server" Text="Borrar" OnClick="btnborrar_Click" />
        
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_evento" DataSourceID="SqlDataSource1" Width="520px">
            <Columns>
                <asp:BoundField DataField="id_evento" HeaderText="id_evento" InsertVisible="False" ReadOnly="True" SortExpression="id_evento" />
                <asp:BoundField DataField="actor" HeaderText="actor" SortExpression="actor" />
                <asp:BoundField DataField="horario" HeaderText="horario" SortExpression="horario" />
                <asp:BoundField DataField="nombre_evento" HeaderText="nombre_evento" SortExpression="nombre_evento" />
                <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                <asp:BoundField DataField="entrada_general" HeaderText="entrada_general" SortExpression="entrada_general" />
                <asp:BoundField DataField="entrada_vip" HeaderText="entrada_vip" SortExpression="entrada_vip" />
            </Columns>
        </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [evento]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
        <br />
     <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="id_graderia" DataSourceID="SqlDataSource2" Width="280px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="id_graderia" HeaderText="id_graderia" InsertVisible="False" ReadOnly="True" SortExpression="id_graderia" />
                <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" />
                <asp:BoundField DataField="seccion" HeaderText="seccion" SortExpression="seccion" />
                <asp:BoundField DataField="monto" HeaderText="monto" SortExpression="monto" />
                <asp:BoundField DataField="id_evento" HeaderText="id_evento" SortExpression="id_evento" />
                <asp:BoundField DataField="asiento" HeaderText="asiento" SortExpression="asiento" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [graderia]"></asp:SqlDataSource>
    </form>
</body>
</html>
