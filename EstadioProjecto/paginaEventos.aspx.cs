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

        conn = databaseConnection("DESKTOP-U5BLV9M\\SQLEXPRESS", "stadium_table", "dsalas", "salasbar97");
        /*string nombreEvento=selectWhereFromDbInfo("nombre_evento", "evento", "id_evento","3");
        eventNamelbl.Text = nombreEvento;
        string horarioEvento =selectWhereFromDbInfo("horario", "evento", "id_evento","3");
        horariolbl.Text = horarioEvento;
        string descEvento = selectWhereFromDbInfo("descripcion", "evento", "id_evento", "3");
        desclbl.Text = descEvento;*/
        //countTables("evento");
        carouselIndicatorsHtml();
        insertPageInfo();
    }

    public void insertPageInfo()
    {
        int numberOfRows = countTables("event");

        /*
         string nombreEvento=selectWhereFromDbInfo("nombre_evento", "evento", "id_evento","3");

        eventNamelbl.Text = nombreEvento;
        string horarioEvento =selectWhereFromDbInfo("horario", "evento", "id_evento","3");
        horariolbl.Text = horarioEvento;
        string descEvento = selectWhereFromDbInfo("descripcion", "evento", "id_evento", "3");
        desclbl.Text = descEvento;
         */
        int tableId = 2;
        for (int i = 0; i <= numberOfRows; i++)
        {
            string nombreEvento = selectWhereFromDbInfo("nombre_evento", "evento", "id_evento", tableId);
            string horarioEvento = selectWhereFromDbInfo("horario", "evento", "id_evento", tableId);
            string descEvento = selectWhereFromDbInfo("descripcion", "evento", "id_evento", tableId);
            insertCarouselHtml("namelbl" + i.ToString(), "desclbl" + i.ToString(), "horariolbl" + i.ToString(), "eventobtn" + i.ToString(), descEvento, nombreEvento, horarioEvento, i);
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

    public void carouselIndicatorsHtml()
    {
        int numberOfRows = countTables("event");

        string indicatorHtml = "";
        for (int i = 0; i <= numberOfRows; i++)
        {
            indicatorHtml += " <li data-target=" + "#myCarousel" + " data-slide-to=" + i++ + "></li>";
        }
        carouselIndicators.InnerHtml += indicatorHtml;
    }

    public void insertCarouselHtml(string eventNamelbl, string desclbl, string horariolbl, string eventobtn, string descripcionEvento, string nombreEvento, string horarioEvento, int flag)
    {

        if (flag == 0)
        {

            HTML += "<img src=" + "/images/event.jpg" + " style = " + " width: 100%;" + "/>";
            HTML += " <div class=" + "centered>" + "<span ID = " + eventNamelbl + ">" + nombreEvento + "</span></div>";
            HTML += " <div class=" + "middle-left>" + "<span ID = " + desclbl + ">" + descripcionEvento + "</span></div>";
            HTML += "<div class=" + "bottom-left>" + "<span ID = " + horariolbl + ">" + horarioEvento + "</span>" + "</div>";
            HTML += "<input type=" + " submit" + " name= " + eventobtn + " value= Comprar " + "id=" + eventobtn + "style= height: 48px; width: 100px > " + "</div>";

        }
        else
        {
            HTML += "<div class=" + "item" + ">" + "<img src=" + "/images/event.jpg" + " style = " + " width: 100%;" + "/>";
            HTML += " <div class=" + "centered>" + "<span ID = " + eventNamelbl + ">" + nombreEvento + "</span></div>";
            HTML += " <div class=" + "middle-left>" + "<span ID = " + desclbl + ">" + descripcionEvento + "</span></div>";
            HTML += "<div class=" + "bottom-left>" + "<span ID = " + horariolbl + ">" + horarioEvento + "</span>" + "</div>";
            HTML += "<input type=" + " submit" + " name= " + eventobtn + " value= Comprar " + "id=" + eventobtn + "style= height: 48px; width: 100px > " + "</div>";

        }
    }
}