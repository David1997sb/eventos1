<%@ Page Language="C#" AutoEventWireup="true" CodeFile="paginaEventos.aspx.cs" Inherits="paginaEventos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Eventos</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link href="css/peventos.css" rel="stylesheet" />
</head>
<body runat="server">
    <div id="carouselControls" class="carousel slide" data-ride="carousel" runat="server">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="container">
                    <img class="d-block w-100" src="http://tueventoenbogota.com/wp-content/uploads/2015/07/01_eventos_empresariales-1240x824.jpg" />
                    <div class="centered">
                        <asp:Label ID="eventNamelbl" runat="server" Text="Nombre del evento"></asp:Label>
                    </div>
                    <div class="middle-left">
                        <asp:Label ID="desclbl" runat="server" Text="Descripcion del evento"></asp:Label>
                    </div>
                    <div class="bottom-left">
                        <asp:Label ID="horariolbl" runat="server" Text="Horario del evento"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <div>
    </div>

</body>
</html>
