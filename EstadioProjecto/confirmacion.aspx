<%@ Page Language="C#" AutoEventWireup="true" CodeFile="confirmacion.aspx.cs" Inherits="confirmacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 495px;
            height: 340px;
        }
        .auto-style2 {
            text-align: justify;
            height: 93px;
        }
        .auto-style3 {
            width: 187px;
        }
    </style>
</head>
<body>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <form id="form1" runat="server">
        <div class="auto-style18" style="background-image: url('images/backround.jpg'); background-position: 50% 50%; background-attachment: fixed; background-repeat:no-repeat; background-size: cover;">  
            <br />
            <br />
            <br />
        <br />
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style2">
            <button type="button" class="btn btn-lg btn-light" data-toggle="popover" title="Popover title" data-content="" style="width: 480px; margin-left: 0">Detalles de la compra</button>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table class="table table-dark">
                        <thead>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="auto-style3"><strong>Artista:</strong></td>
                                <td>
                                     <asp:Label ID="lblarti" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3"><strong>Nombre del evento:</strong></td>
                                <td>
                                    <asp:Label ID="lblnomevento" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3"><strong>Horario:</strong></td>
                                <td>
                                    <asp:Label ID="lblhorario" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3"><strong>Cantidad de entradas:</strong></td>
                                <td>
                                    <asp:Label ID="lblcantentra" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3"><strong>Asientos:</strong></td>
                                <td>
                                    <asp:Label ID="lblas" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="text-center">
                        <asp:Button ID="btnvolver" runat="server" OnClick="btnvolver_Click" Text="Volver a eventos" Width="213px" BackColor="#0066FF" BorderColor="Black" Font-Bold="False" Font-Size="Large" Height="43px" />
                    </td>
                </tr>
            </table>
        <br />
        <div>
        <br />

            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
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
    </form>
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
