using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.ServiceModel.Channels;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class paginaEventos : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    String sql;
    SqlCommand com;
    SqlDataReader reader;
    string imageSrc = "";
    string HTML = "";
    StringBuilder html = new StringBuilder();


    protected void Page_Load(object sender, EventArgs e)
    {
        conn =  databaseConnection("DESKTOP-U5BLV9M\\SQLEXPRESS", "stadium_table", "dsalas", "salasbar97");
        /*string nombreEvento=selectWhereFromDbInfo("nombre_evento", "evento", "id_evento","3");
        eventNamelbl.Text = nombreEvento;
        string horarioEvento =selectWhereFromDbInfo("horario", "evento", "id_evento","3");
        horariolbl.Text = horarioEvento;
        string descEvento = selectWhereFromDbInfo("descripcion", "evento", "id_evento", "3");
        desclbl.Text = descEvento;*/
        //countTables("evento");
        insertPageInfo();
    }

    public void insertPageInfo()
    {
        /*
         string nombreEvento=selectWhereFromDbInfo("nombre_evento", "evento", "id_evento","3");
        eventNamelbl.Text = nombreEvento;
        string horarioEvento =selectWhereFromDbInfo("horario", "evento", "id_evento","3");
        horariolbl.Text = horarioEvento;
        string descEvento = selectWhereFromDbInfo("descripcion", "evento", "id_evento", "3");
        desclbl.Text = descEvento;
         */
        int numberOfRows = countTables("event");
        int tableId = 2;
        for(int i=0; i <= numberOfRows; i++)
        { 
            string nombreEvento = selectWhereFromDbInfo("nombre_evento", "evento", "id_evento", tableId);
            string horarioEvento = selectWhereFromDbInfo("horario", "evento", "id_evento", tableId);
            string descEvento = selectWhereFromDbInfo("descripcion", "evento", "id_evento", tableId);
            insertCarouselHtml("namelbl" + i.ToString(), "desclbl" + i.ToString(), "horariolbl" + i.ToString(),descEvento,nombreEvento,horarioEvento,i);
            tableId++;
        }
        carouselControls.InnerHtml += HTML;

    }

    public int countTables(string tableName)
    {
        conn.Open();
        int numberRows = 0;
        sql = "select count(*) from" + tableName;
        com = conn.CreateCommand();
        com.CommandText = sql;
        reader = com.ExecuteReader();
        while (reader.Read())
        {
            numberRows = (int)reader[0];
        }
        conn.Close();
        return numberRows;

       
    }
    public string selectWhereFromDbInfo(string columnName, string tableName, string whereId, int equalsStatement)
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

    public void insertCarouselHtml(string eventNamelbl, string desclbl, string horariolbl, string descripcionEvento, string nombreEvento, string horarioEvento, int flag)
    {

        if (flag == 0)
        {

            HTML += "<img class=" + "d-block w-100" + " src=" + "http://tueventoenbogota.com/wp-content/uploads/2015/07/01_eventos_empresariales-1240x824.jpg" + ">";
            HTML += "<div class=" + "'centered'" + ">" + "<span ID = " + eventNamelbl + ">" + nombreEvento + "</span>" + "</div>";
            HTML += "<div class=" + "middle-left>" + "<span ID = " + desclbl + ">" + descripcionEvento + "</span>" + "</div>";
            HTML += "<div class=" + "bottom-left>" + "<span ID = " + horariolbl + ">" + horarioEvento + "</span>" + "</div>" + "</div>";

        }
        else
        {
            HTML += "<div class=" + "carousel-item>" + "<img class=" + "d-block w-100" + " src=" + "http://tueventoenbogota.com/wp-content/uploads/2015/07/01_eventos_empresariales-1240x824.jpg" + ">";
            HTML += "<div class=" + "'centered'" + ">" + "<span ID = " + eventNamelbl + ">" + nombreEvento + "</span>" + "</div>";
            HTML += "<div class=" + "middle-left>" + "<span ID = " + desclbl + ">" + descripcionEvento + "</span>" + "</div>";
            HTML += "<div class=" + "bottom-left>" + "<span ID = " + horariolbl + ">" + horarioEvento + "</span>" + "</div>" + "</div>";
        }

        /* html.Append("<div class=" + "carousel - inner" + ">"+"< div class=" + "carousel-item active" + ">" +"<div class=" + "container" + ">");
         html.Append("<img class=" + "d-block w-100" + "src=" + "http://tueventoenbogota.com/wp-content/uploads/2015/07/01_eventos_empresariales-1240x824.jpg" + "/>");
         html.Append("< div class=" + "centered" + ">"+"<asp:Label ID = " + eventNamelbl + " runat=" + "server" + "Text" + "=" + "Nombre del evento" + ">" + "</asp:Label>" +"</div>");
         html.Append("<div class=" + "middle-left>"+"<asp:Label ID = " + desclbl + "runat= " + "server" + "Text=" + "Descripcion del evento>" + "</asp:Label>"+"</div>");
         html.Append("<div class=" + "bottom-left>" +"<asp:Label ID = " + horariolbl + "runat=" + "server" + "Text=" + "Horario del evento>" + "</asp:Label>" +"</div>" +"</div>");*/
    }

}