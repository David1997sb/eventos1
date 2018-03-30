using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class test :  System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    String sql;
    SqlCommand com;
    SqlDataReader reader;

    protected void Page_Load(object sender, EventArgs e)
    {
        conn= databaseConnection("DESKTOP-U5BLV9M\\SQLEXPRESS", "stadium_table", "dsalas", "salasbar97");
        conn.Open();
        selectWhereFromDbInfo("nombre_evento", "event", "id_evento", "3");
    }
    public void selectWhereFromDbInfo(string columnName, string tableName, string whereId, string equalsStatement)
    {
        string eventDbName = "";
        sql = "SELECT " + columnName + " FROM " + tableName + " WHERE " + whereId + " = " + equalsStatement;
        com = conn.CreateCommand();
        com.CommandText = sql;
        reader = com.ExecuteReader();
        while (reader.Read())
        {
            eventDbName = (string)reader[0];
        }

        //return eventDbName;
    }

    public SqlConnection databaseConnection(string serverName, string dataBaseName, string user, string password)
    {
        conn.ConnectionString = "Data Source=" + serverName + ";" +
        "Initial Catalog=" + dataBaseName + ";" +
        "User id=" + user + ";" +
        "Password=" + password + ";";
        return conn;
    }

}