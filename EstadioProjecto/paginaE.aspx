<%@ Page Language="C#" AutoEventWireup="true" CodeFile="paginaE.aspx.cs" Inherits="paginaE" %>

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
    <h2>Eventos</h2>
    <div class="container">

        <div id="myCarousel" class="carousel slide" data-ride="carousel">

            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <form runat="server">
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="/images/event.jpg" style="width: 100%;" />
                        <div class="centered">
                            <asp:Label ID="eventNamelbl" runat="server" Text="Nombre del evento"></asp:Label>
                        </div>
                        <div class="middle-left">
                            <asp:Label ID="desclbl" runat="server" Text="Descripcion del evento"></asp:Label>
                        </div>
                        <div class="bottom-left">
                            <asp:Label ID="horariolbl" runat="server" Text="Horario del evento"></asp:Label>
                        </div>
                        <div class="bottom-right">
                            <asp:Button ID="btn" runat="server" Text="Comprar" Height="48px" Width="100px" />
                        </div>
                    </div>

                    <div class="item">
                        <img src="/Slider/2.jpg" alt="Chicago" style="width: 100%;" />
                    </div>

                    <div class="item">
                        <img src="/Slider/3.jpg" alt="New york" style="width: 100%;" />
                    </div>
                </div>
            </form>
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
    </div>
</body>
</html>
