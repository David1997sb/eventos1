<%@ Page Language="C#" AutoEventWireup="true" CodeFile="modifyEvent.aspx.cs" Inherits="modifyEvent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1017px;
            height: 695px;
        }
        .auto-style2 {
            text-align: right;
            width: 345px;
            font-size: large;
        }
        .auto-style3 {
            text-align: center;
            width: 272px;
        }
        .auto-style7 {
            text-align: left;
            width: 410px;
            font-size: large;
        }
        .auto-style9 {
            text-align: center;
            width: 410px;
            font-size: large;
            height: 120px;
        }
        .auto-style10 {
            text-align: right;
            width: 345px;
            font-size: large;
            height: 120px;
        }
        .auto-style11 {
            text-align: center;
            width: 272px;
            height: 120px;
        }
        .auto-style12 {
            text-align: center;
            height: 120px;
            width: 13px;
        }
        .auto-style14 {
            text-align: center;
            width: 13px;
        }
        .auto-style15 {
            margin-left: 33
        }
        .auto-style16 {
            width: 997px;
            height: 344px;
        }
        .auto-style17 {
            color: #fff;
            font-size: x-large;
        }
        .auto-style18 {
            height: 1439px;
        }
        </style>
</head>
<body>
    <div class="text-center">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <form id="form1" runat="server">
        <nav class="navbar navbar-dark bg-dark">                    
                <nav class="nav nav-pills  nav-justified">                 
                    <a class="navbar-brand" href="#">
                        <img src="/images/icons/ulacit_icon.jpg" width="40" height="40" class="d-inline-block align-top" alt="">                     
                    </a>                        
                        <div class="auto-style17">Administrador</div>                                                        
                </nav>
                    <div class="container-login100-form-btn m-t-32">
                        <asp:Button ID="btnLogout" runat="server" class="login100-form-btn" Text="Cerrar sesión" OnClick="btnLogout_Click"/>
                    </div>
        </nav>
        <div class="limiter">
        <div class="auto-style18" style="background-image: url('images/backround.jpg'); background-position: 50% 50%; background-attachment: fixed; background-repeat:no-repeat; background-size: cover;">
                
                <br />
                <br />
                <br />
                <br />
                <table align="center" class="auto-style1">
                    <tr>
                        <td class="auto-style7">
                            <strong>
                            <asp:Label ID="lblActor" runat="server" ForeColor="White" Text="ACTOR:"></asp:Label>
                            </strong>
                            <br />
                            <asp:TextBox ID="txtactor" runat="server" Width="322px"></asp:TextBox>
                            <br />
                            <br />
                            <strong>
                            <asp:Label ID="lblHorario" runat="server" ForeColor="White" Text="HORARIO:"></asp:Label>
                            </strong>
                            <br />
                            <asp:TextBox ID="txthorario" runat="server" Width="322px"></asp:TextBox>
                            <br />
                            <br />
                            <strong>
                            <asp:Label ID="lblNombreEvento" runat="server" ForeColor="White" Text="NOMBRE DEL EVENTO:" Font-Bold="True" Font-Overline="False"></asp:Label>
                            </strong>
                            <br />
                            <asp:TextBox ID="txtnomevento" runat="server" Width="322px"></asp:TextBox>
                            <br />
                            <br />
                            <strong>
                            <asp:Label ID="lblDescripción" runat="server" ForeColor="White" Text="DESCRIPCIÓN:"></asp:Label>
                            </strong>
                            <br />
                            <asp:TextBox ID="txtdescripcion" runat="server" Width="322px"></asp:TextBox>
                            <br />
                            <br />
                            <strong>
                            <asp:Label ID="lblPrecioVIP" runat="server" ForeColor="White" Text="PRECIO VIP:"></asp:Label>
                            </strong>
                            <br />
                            <asp:TextBox ID="txtVIP" runat="server" Width="322px"></asp:TextBox>
                            <br />
                            <br />
                            <strong>
                            <asp:Label ID="lblPrecioGeneral" runat="server" ForeColor="White" Text="PRECIO GENERAL:"></asp:Label>
                            </strong>
                            <br />
                            <asp:TextBox ID="txtGeneral" runat="server"  Width="322px"></asp:TextBox>
                            </td>
                        <td class="auto-style2">
                            <strong>
                            <asp:Label ID="lblIDdelEveto" runat="server" ForeColor="White" Text="ID DEL EVENTO:  "></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style3">
                            <asp:TextBox ID="txtidevento" runat="server"></asp:TextBox>
                            </td>
                        <td class="auto-style14">
                            <asp:Button ID="btnbuscar" runat="server" CssClass="auto-style15" Height="33px" Text="MOSTRAR" Width="108px" BackColor="#0066FF" ForeColor="White" OnClick="btnbuscar_Click" />
                                <!--OnClick="btnbuscar_Click"/>-->
                        </td>
                        <td class="auto-style14">
                            <asp:Label ID="lblerror2" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="lblerror" runat="server"></asp:Label>
                            </td>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td class="auto-style3">
                            &nbsp;</td>
                        <td class="auto-style14">
                            &nbsp;</td>
                        <td class="auto-style14">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:Button ID="btnadd" runat="server" CssClass="auto-style15" Height="33px" Text="AGREGAR" Width="108px" BackColor="#0066FF" ForeColor="White" OnClick="btnadd_Click" />
                            <asp:Button ID="btnmodificar" runat="server" CssClass="auto-style15" Height="33px" Text="MODIFICAR" Width="108px" BackColor="#0066FF" ForeColor="White" OnClick="btnmodificar_Click" />
                            <asp:Button ID="btnborrar" runat="server" CssClass="auto-style15" Height="33px" Text="ELIMINAR" Width="108px" BackColor="#0066FF" ForeColor="White" OnClick="btnborrar_Click" />
                        </td>
                        <td class="auto-style10">
                        </td>
                        <td class="auto-style11">
                        </td>
                        <td class="auto-style12">
                        </td>
                        <td class="auto-style12">
                            &nbsp;</td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                <br />
                <br />
                <table align="center" class="auto-style16">
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_evento" DataSourceID="SqlDataSource1" Width="520px" CssClass="auto-style17">
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:stadium_tableConnectionString %>" SelectCommand="SELECT * FROM [evento]"></asp:SqlDataSource>
                            &nbsp;</td>
                    </tr>
        </table>
                </form>
        <br />
        <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </div>
        <div class="card text-center">
            <div class="card-header">
            NO COPYRIGHT INFRIGMENT INTENTED
            </div>
            <div class="card-body">
                <h5 class="card-title">UNIVERSIDAD LATINOAMERICANA DE CIENCIA Y TECNOLOGIA</h5>
                <p class="card-text">DESARROLLO DE APLICACIONES WEB</p>   
            </div>
            <div class="card-footer text-muted">
            San José, Costa Rica
            </div>
        </div>
</body>
</html>
