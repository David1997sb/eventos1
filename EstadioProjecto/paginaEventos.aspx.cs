using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.ServiceModel.Channels;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class paginaEventos : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    String sql;
    SqlCommand com;
    SqlDataReader reader;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        conn =  databaseConnection("DESKTOP-U5BLV9M\\SQLEXPRESS", "stadium_table", "dsalas", "salasbar97");
        string nombreEvento=selectWhereFromDbInfo("nombre_evento", "evento", "id_evento","3");
        eventNamelbl.Text = nombreEvento;
        string horarioEvento =selectWhereFromDbInfo("horario", "evento", "id_evento","3");
        horariolbl.Text = horarioEvento;
        string descEvento = selectWhereFromDbInfo("descripcion", "evento", "id_evento", "3");
        desclbl.Text = descEvento;
    }

    public string selectWhereFromDbInfo(string columnName, string tableName, string whereId, string equalsStatement)
    {
        conn.Open();
        string eventDbName = "";
        sql = "SELECT " + columnName + " FROM " + tableName + " WHERE " + whereId + " = " + equalsStatement;
        com = conn.CreateCommand();
        com.CommandText = sql;
        reader = com.ExecuteReader();
        while (reader.Read())
        {
            eventDbName = (string)reader[0];
        }
        conn.Close();
        return eventDbName;
    }

    public SqlConnection databaseConnection(string serverName, string dataBaseName, string user, string password)
    {
        conn.ConnectionString = "Data Source=" + serverName + ";" +
        "Initial Catalog=" + dataBaseName + ";" +
        "User id=" + user + ";" +
        "Password=" + password + ";";
        return conn;
    }

    public void innerCarouselHtml()
    {
        carouselControls.InnerHtml = ("<div class=" +"carousel - inner" + ">"
      "< div class=" + "carousel-item active"+">"
      "<div class="+"container"+">" 
          "<img class=" + "d-block w-100" + "src=" + "http://tueventoenbogota.com/wp-content/uploads/2015/07/01_eventos_empresariales-1240x824.jpg" + "/>"
          "<div class=" + "centered" + ">"
              "<asp:Label ID = " + "eventNamelbl" + "runat=" + "server" Text="Nombre del evento"></asp:Label>
          </div>
          <div class="middle-left">
              <asp:Label ID = "desclbl" runat="server" Text="Descripcion del evento"></asp:Label>
          </div>
          <div class="bottom-left">
              <asp:Label ID = "horariolbl" runat="server" Text="Horario del evento"></asp:Label>
          </div>
      </div>");
    }

}