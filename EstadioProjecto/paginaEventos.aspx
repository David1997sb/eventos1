<%@ Page Language="C#" AutoEventWireup="true" CodeFile="paginaEventos.aspx.cs" Inherits="paginaEventos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Eventos</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="css/peventos.css" rel="stylesheet" />
</head>
<body>
            <form runat="server">

    <h2>Eventos</h2>
    <div class="container">

        <div id="myCarousel" class="carousel slide" data-ride="carousel">

            <!-- Indicators -->
            <ol id="carouselIndicators" class="carousel-indicators" runat="server">
                
            </ol>

            <!-- Wrapper for slides -->
                <div class="carousel-inner" >
                    <div  id="carouselControls" class= "item active" runat="server">

                      </div>
                </div>
           
            </div>
        
            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
      <p class="bottom-centered">
            Cantidad de Entradas
            <asp:DropDownList ID="DropDownList1" runat="server" Height="28px" Width="116px">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
            </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p>
            ElegirEvento:&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre_evento" DataValueField="id_evento" Height="16px" Width="140px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:stadium_tableConnectionString %>" SelectCommand="SELECT [id_evento], [nombre_evento] FROM [evento]"></asp:SqlDataSource>
        </p>
        <asp:Button ID="btncomprar" runat="server" OnClick="btncomprar_Click" Text="Elegir Asientos" Width="166px" />
        <br />
    </form>
</body>
</html>
