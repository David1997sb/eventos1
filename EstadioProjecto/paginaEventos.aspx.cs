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
        carouselIndicatorsHtml();
        insertPageInfo();
    }

    public void insertPageInfo()
    {
        int numberOfRows = countTables("event");
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
        numberOfRows++;
        string indicatorHtml = "";
        for (int i = 0; i <= numberOfRows; i++)
        {
            if (i == 0)
            {
                indicatorHtml += " <li data-target=" + "#myCarousel" + " data-slide-to=" + i++ + " class=active" + "></li>";

            }
            else
            {
                indicatorHtml += " <li data-target=" + "#myCarousel" + " data-slide-to=" + i++ + "></li>";

            }
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
            HTML += "<div class=" + "bottom-left>" + "<span ID = " + horariolbl + ">" + horarioEvento + "</span>" + "</div>" + "</div>";
           
        }
        else
        {
            HTML += "<div class=" + "item" + " runat = server" + ">" + "<img src=" + "/images/event.jpg" + " style = " + " width: 100%;" + "/>";
            HTML += " <div class=" + "centered>" + "<span ID = " + eventNamelbl + ">" + nombreEvento + "</span></div>";
            HTML += " <div class=" + "middle-left>" + "<span ID = " + desclbl + ">" + descripcionEvento + "</span></div>";
            HTML += "<div class=" + "bottom-left>" + "<span ID = " + horariolbl + ">" + horarioEvento + "</span>" + "</div>" + "</div>";
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        int numberOfRows = countTables("event");
        numberOfRows++;
        string htmlElement = "namelbl";
        for (int i = 0; i <= numberOfRows; i++)
        {
           // HtmlDocument doc = webBrowser1.Document;
            //var links = carouselControls.Document.GetElementsByTagName("a");
            Control myControl1 = FindControl(htmlElement + i.ToString());
            htmlElement = myControl1.ToString();
            if (htmlElement.Contains("active"))
            {
                conn.Open();
                sql = "SELECT id_evento  FROM evento WHERE nombre_evento = " + htmlElement;
                com = conn.CreateCommand();
                com.CommandText = sql;
                reader = com.ExecuteReader();
                while (reader.Read())
                {
                    Session["eventId"]= (int)reader[0];
                }
                conn.Close();
            }

        }

    }


}