using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class confirmacion : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Data Source=DESKTOP-U5BLV9M\\SQLEXPRESS;" +
        "Initial Catalog=user_table;" +
        "User id=dsalas;" +
        "Password=salasbar97;";
        //******************************* Despliega artista***************************************//
        con.Open();
        SqlCommand vip = new SqlCommand(String.Format("Select actor,horario,nombre_evento from evento where id_evento = '{0}' ", Session["EventoEle"]), con);
        SqlDataReader leer = vip.ExecuteReader();
        while (leer.Read())
        {
            lblarti.Text = leer.GetString(0);
            lblhorario.Text = leer.GetString(1);
            lblnomevento.Text = leer.GetString(2);
        }
        con.Close();


        lblas.Text = Session["asi"].ToString();
        lblcantentra.Text = Session["nombre"].ToString();
    }

    protected void btnvolver_Click(object sender, EventArgs e)
    {
        Response.Redirect("elegirEvento.aspx");
    }
}