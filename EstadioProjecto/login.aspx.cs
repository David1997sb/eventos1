using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    String sql;
    SqlCommand com;
    SqlDataReader rs;

    protected void Page_Load(object sender, EventArgs e)
    {
        databaseConnection("DESKTOP-U5BLV9M\\SQLEXPRESS", "stadium_table", "dsalas", "salasbar97");
    }
        public SqlConnection databaseConnection (string serverName, string dataBaseName, string user, string password)
    {
        conn.ConnectionString = "Data Source="+serverName+";" +
        "Initial Catalog="+dataBaseName+";"+
        "User id="+ user + ";" +
        "Password="+ password + ";";
        return conn;
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        conn.Open();
        sql = "select rol from cliente where usario = '" + txtUsername.Text + "'and PWDCOMPARE('" + txtPassword.Text + "',contrasena)=1";
        com = conn.CreateCommand();
        com.CommandText = sql;
        //executenonquery para insert, delete y update
        rs = com.ExecuteReader();
        com.CommandText = String.Format(
        @"select {0}
            from cliente 
           where rol = @userRol", "rol");
        com.Parameters.AddWithValue("@userRol", txtUsername.Text);
        while (rs.Read())
        {
            String value = (rs[0]).ToString();
            if (value.Equals("admin"))
            {
                var userRols = Session["admin"];
                //Response.Redirect("modifyEvent.aspx");
                Response.Redirect("paginaEventos.aspx");


            }
            else
            {
                var userRols = Session["normal"];
                Response.Redirect("paginaEventos.aspx");
            }
        }
    }
}