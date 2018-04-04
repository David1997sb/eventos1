using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.ServiceModel.Channels;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
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
    Label eventlbl = new Label();

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
        numberOfRows++;
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
        numberOfRows++;
        for (int i = 0; i <= numberOfRows; i++)
        {
            if (i == 0)
            {
                indicatorHtml += " <li data-target=" + "#myCarousel" + " data-slide-to=" + i + " class=active" + "></li>";

            }
            else
            {
                indicatorHtml += " <li data-target=" + "#myCarousel" + " data-slide-to=" + i + "></li>";

            }
        }
        carouselIndicators.InnerHtml += indicatorHtml;
    }


    public void insertCarouselHtml(string eventNamelbl, string desclbl, string horariolbl, string eventobtn, string descripcionEvento, string nombreEvento, string horarioEvento, int flag)
    {
        eventlbl.ID = eventNamelbl;
        var eventlblId = eventlbl.ID;
        eventlbl.Text = nombreEvento;
        var nombreEvent = eventlbl.Text;

        if (flag == 0)
        { 
            
            HTML += "<img src=" + "/images/event.jpg" + " style = " + " width: 100%;" + "/>";
            HTML += " <div class=" + "centered>" + "<label ID = " + eventlblId.ToString()+  ">" + nombreEvent.ToString()+ "</label></div>";
            HTML += " <div class=" + "middle-left>" + "<label ID = " + desclbl + ">" + descripcionEvento + "</label></div>";
            HTML += "<div class=" + "bottom-left>" + "<label ID = " + horariolbl + ">" + horarioEvento + "</label>" + "</div>" + "</div>";
           
        }
        else
        {
            HTML += "<div  id=carouselControls" + flag.ToString() + " class=" + "item"  + ">" + "<img src=" + "/images/event.jpg" + " style = " + " width: 100%;" + "/>";
            HTML += " <div class=" + "centered>" + "<label ID = " + eventlblId.ToString() + ">" + nombreEvent.ToString() + "</label></div>";
            HTML += " <div class=" + "middle-left>" + "<label ID = " + desclbl + ">" + descripcionEvento + "</label></div>";
            HTML += "<div class=" + "bottom-left>" + "<label ID = " + horariolbl + ">" + horarioEvento + "</label>" + "</div>" + "</div>";
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        int numberOfRows = countTables("event");
        string htmlName = "namelbl";
        for (int i = 0; i <= numberOfRows; i++)
         {
            htmlName="namelbl"+i.ToString();
            if (i ==0)
            {
                /*Label myLabel = (Label)eventlbl.FindControl(htmlName);
                string classname = myLabel.Attributes["class"].ToString();*/
                string htmlElement = "carouselControls";
                Control myControl1 = FindControl(htmlName);
                HtmlGenericControl div = ((HtmlGenericControl)myControl1.FindControl(htmlName));
               string classname= div.Attributes["class"].ToString();
                if (classname.Contains("active"))
                {
                    /*htmlName += i.ToString();
                    Control mylbl = FindControl(htmlElement);
                    HtmlGenericControl label = ((HtmlGenericControl)myControl1.FindControl("namelbl0"));

                    string descText = label.Attributes["text"];
                    conn.Open();
                    sql = "SELECT id_evento  FROM evento WHERE nombre_evento = " + htmlName;
                    com = conn.CreateCommand();
                    com.CommandText = sql;
                    reader = com.ExecuteReader();
                    while (reader.Read())
                    {
                        Session["eventId"] = (int)reader[0];
                    }
                    conn.Close();*/
                }

            }
            else
            {
                string htmlElement = "carouselControls";
                Control myControl1 = FindControl(htmlElement);
                HtmlGenericControl div = ((HtmlGenericControl)myControl1.FindControl(htmlElement));
                string divClassName = div.Attributes["class"].ToString();
                {
                    conn.Open();
                    sql = "SELECT id_evento  FROM evento WHERE nombre_evento = " + htmlElement;
                    com = conn.CreateCommand();
                    com.CommandText = sql;
                    reader = com.ExecuteReader();
                    while (reader.Read())
                    {
                        Session["eventId"] = (int)reader[0];
                    }
                    conn.Close();
                }

            }

        }

    }

    
    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (RadioButton1.Checked == true)
        {
            Session["nombre"] = "1";
        }
        else if (RadioButton2.Checked == true)
        {
            Session["nombre"] = "2";
        }
        else
        {
            Session["nombre"] = "3";
        }
    }
}