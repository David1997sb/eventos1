using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class modifyEvent : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\estadio.mdf;Integrated Security=True;";
    }

    protected void btnadd_Click(object sender, EventArgs e)
    {
        /*Inserta nuevo evento*/
        con.Open();
        SqlCommand com;
        com = new SqlCommand("INSERT into evento (actor,horario,nombre_evento,descripcion,entrada_general,entrada_vip) VALUES (@actor, @horario, @nombre, @descr,@general,@vip)", con);
        com.Parameters.AddWithValue("@actor", txtactor.Text);
        com.Parameters.AddWithValue("@horario", txthorario.Text);
        com.Parameters.AddWithValue("@nombre", txtnomevento.Text);
        com.Parameters.AddWithValue("@descr", txtdescripcion.Text);
        com.Parameters.AddWithValue("@general", txtGeneral.Text);
        com.Parameters.AddWithValue("@vip", txtVIP.Text);
        com.ExecuteNonQuery();
        con.Close();
        /*Rescata el id creado para ese evento y lo guarda en una variable*/
        int evento = 0;
        con.Open();
        SqlCommand addGra = new SqlCommand(String.Format("Select id_evento from evento where actor = '{0}' and horario = '{1}' and nombre_evento ='{2}' and descripcion = '{3}'", txtactor.Text, txthorario.Text, txtnomevento.Text, txtdescripcion.Text), con);
        SqlDataReader leer = addGra.ExecuteReader();
        while (leer.Read())
        {
            evento = Convert.ToInt32(leer["id_evento"]);
        }
        con.Close();

        /*Inserta la graderia para ese nuevo evento*/
        con.Open();
        SqlCommand coma1 = new SqlCommand("INSERT into graderia (estado,seccion,monto,id_evento,asiento) VALUES ('" + (0) + "','" + "VIP" + "','" + txtVIP.Text + "', '" + evento + "','" + "A1" + "')", con);
        coma1.ExecuteNonQuery();
        SqlCommand coma2 = new SqlCommand("INSERT into graderia (estado,seccion,monto,id_evento,asiento) VALUES ('" + (0) + "','" + "VIP" + "','" + txtVIP.Text + "', '" + evento + "','" + "A2" + "')", con);
        coma2.ExecuteNonQuery();
        SqlCommand coma3 = new SqlCommand("INSERT into graderia (estado,seccion,monto,id_evento,asiento) VALUES ('" + (0) + "','" + "VIP" + "','" + txtVIP.Text + "', '" + evento + "','" + "A3" + "')", con);
        coma3.ExecuteNonQuery();
        SqlCommand coma4 = new SqlCommand("INSERT into graderia (estado,seccion,monto,id_evento,asiento) VALUES ('" + (0) + "','" + "General" + "','" + txtGeneral.Text + "', '" + evento + "','" + "A4" + "')", con);
        coma4.ExecuteNonQuery();
        SqlCommand coma5 = new SqlCommand("INSERT into graderia (estado,seccion,monto,id_evento,asiento) VALUES ('" + (0) + "','" + "General" + "','" + txtGeneral.Text + "', '" + evento + "','" + "A5" + "')", con);
        coma5.ExecuteNonQuery();
        SqlCommand coma6 = new SqlCommand("INSERT into graderia (estado,seccion,monto,id_evento,asiento) VALUES ('" + (0) + "','" + "General" + "','" + txtGeneral.Text + "', '" + evento + "','" + "A6" + "')", con);
        coma6.ExecuteNonQuery();
        SqlCommand coma7 = new SqlCommand("INSERT into graderia (estado,seccion,monto,id_evento,asiento) VALUES ('" + (0) + "','" + "General" + "','" + txtGeneral.Text + "', '" + evento + "','" + "A7" + "')", con);
        coma7.ExecuteNonQuery();
        SqlCommand coma8 = new SqlCommand("INSERT into graderia (estado,seccion,monto,id_evento,asiento) VALUES ('" + (0) + "','" + "General" + "','" + txtGeneral.Text + "', '" + evento + "','" + "A8" + "')", con);
        coma8.ExecuteNonQuery();
        SqlCommand coma9 = new SqlCommand("INSERT into graderia (estado,seccion,monto,id_evento,asiento) VALUES ('" + (0) + "','" + "General" + "','" + txtGeneral.Text + "', '" + evento + "','" + "A9" + "')", con);
        coma9.ExecuteNonQuery();

        con.Close();
        Response.Redirect("modifyEvent.aspx");
    }



    protected void btnbuscar_Click(object sender, EventArgs e)
    {
        Session["eventoid"] = txtidevento.Text;
        con.Open();
        SqlCommand comando = new SqlCommand(String.Format("Select actor,horario,nombre_evento,descripcion,entrada_general,entrada_vip from evento where  id_evento = '{0}'", int.Parse(txtidevento.Text)), con);
        SqlDataReader red = comando.ExecuteReader();
        while (red.Read())
        {
            txtactor.Text = red.GetString(0);
            txthorario.Text = red.GetString(1);
            txtnomevento.Text = red.GetString(2);
            txtdescripcion.Text = red.GetString(3);
            txtGeneral.Text = red.GetString(4);
            txtVIP.Text = red.GetString(5);
        }
        con.Close();
    }


    protected void btnmodificar_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand com;
        com = new SqlCommand("UPDATE evento SET actor=@a1, horario=@a2, nombre_evento=@a3, descripcion=@a4, entrada_general=@a5,entrada_vip=@a6 WHERE id_evento=@a7", con);
        com.Parameters.AddWithValue("a1", txtactor.Text);
        com.Parameters.AddWithValue("a2", txthorario.Text);
        com.Parameters.AddWithValue("a3", txtnomevento.Text);
        com.Parameters.AddWithValue("a4", txtdescripcion.Text);
        com.Parameters.AddWithValue("a5", txtGeneral.Text);
        com.Parameters.AddWithValue("a6", txtVIP.Text);
        com.Parameters.AddWithValue("a7", Session["eventoid"]);
        com.ExecuteNonQuery();
        con.Close();

        con.Open();
        SqlCommand com1;
        com1 = new SqlCommand("UPDATE graderia SET monto=@a1 WHERE id_evento=@a2 and seccion=@a3", con);
        com1.Parameters.AddWithValue("a1", txtVIP.Text);
        com1.Parameters.AddWithValue("a2", Session["eventoid"]);
        com1.Parameters.AddWithValue("a3", "VIP");
        com1.ExecuteNonQuery();
        con.Close();

        con.Open();
        SqlCommand com2;
        com2 = new SqlCommand("UPDATE graderia SET monto=@a1 WHERE id_evento=@a2 and seccion=@a3", con);
        com2.Parameters.AddWithValue("a1", txtGeneral.Text);
        com2.Parameters.AddWithValue("a2", Session["eventoid"]);
        com2.Parameters.AddWithValue("a3", "General");
        com2.ExecuteNonQuery();
        con.Close();

        Response.Redirect("modifyEvent.aspx");
    }

    protected void btnborrar_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("DELETE FROM graderia WHERE id_evento=@Id ", con);
        cmd1.Parameters.AddWithValue("@Id", Session["eventoid"]);
        cmd1.ExecuteNonQuery();
        con.Close();

        con.Open();
        SqlCommand cmd = new SqlCommand("DELETE FROM evento WHERE id_evento=@Id ", con);
        cmd.Parameters.AddWithValue("@Id", Session["eventoid"]);
        cmd.ExecuteNonQuery();
        con.Close();

        Response.Redirect("modifyEvent.aspx");

    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}