using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class index : System.Web.UI.Page
{

    
   
    SqlConnection con = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["asi"] = "";//variable para guardar los asientos elegidos y mostrarlos en la confirmacion
        
        lblcantEntra.Text = Session["nombre"].ToString(); //despliega cantidad de entradas por comprar
        con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\estadio.mdf;Integrated Security=True;"; //conexion a la base de datos

        //******************************* Despliega precio de entradas VIP***************************************//
        con.Open();
        SqlCommand vip = new SqlCommand(String.Format("Select distinct monto from graderia where id_evento = '{0}' and seccion = '{1}'", Session["EventoEle"], "VIP"), con);
        SqlDataReader leer = vip.ExecuteReader();
        while (leer.Read())
        {
            lblvip.Text = "₡" + leer.GetString(0);
        }
        con.Close();

        //**************************** Despliega precio de entradas generales************************************//
        con.Open();
        SqlCommand gene = new SqlCommand(String.Format("Select distinct monto from graderia where id_evento = '{0}' and seccion = '{1}'", Session["EventoEle"], "General"), con);
        SqlDataReader leer2 = gene.ExecuteReader();
        while (leer2.Read())
        {
            lblgeneral.Text = "₡" + leer2.GetString(0);
        }
        con.Close();

        //**************************** Despliega artista************************************//
        con.Open();
        SqlCommand art = new SqlCommand(String.Format("Select distinct actor from evento where id_evento = '{0}'", Session["EventoEle"]), con);
        SqlDataReader leer3 = art.ExecuteReader();
        while (leer3.Read())
        {
           lblactor.Text = leer3.GetString(0);
        }
        con.Close();

        //**************************** Marca los asientos ocupados rojos/noclickeables**************************//
        con.Open();
        int num = 1;
        SqlCommand comando = new SqlCommand(String.Format("Select asiento from graderia where estado = '{0}' and id_evento = '{1}'",num, Session["EventoEle"]), con);

        SqlDataReader red = comando.ExecuteReader();
        while (red.Read())
        {
            if ((red.GetString(0)) == "A1") { Button1.BackColor = System.Drawing.Color.Red; Button1.Enabled = false; }
            if ((red.GetString(0)) == "A2") { Button2.BackColor = System.Drawing.Color.Red; Button2.Enabled = false; }
            if ((red.GetString(0)) == "A3") { Button3.BackColor = System.Drawing.Color.Red; Button3.Enabled = false; }
            if ((red.GetString(0)) == "A4") { Button4.BackColor = System.Drawing.Color.Red; Button4.Enabled = false; }
            if ((red.GetString(0)) == "A5") { Button5.BackColor = System.Drawing.Color.Red; Button5.Enabled = false; }
            if ((red.GetString(0)) == "A6") { Button6.BackColor = System.Drawing.Color.Red; Button6.Enabled = false; }
            if ((red.GetString(0)) == "A7") { Button7.BackColor = System.Drawing.Color.Red; Button7.Enabled = false; }
            if ((red.GetString(0)) == "A8") { Button8.BackColor = System.Drawing.Color.Red; Button8.Enabled = false; }
            if ((red.GetString(0)) == "A9") { Button9.BackColor = System.Drawing.Color.Red; Button9.Enabled = false; }
        }

        con.Close();


    }
    //******************* Metodo que controla la cantidad de entradas por comprar y el cambio de color de asiento******************//
    protected void eventod(Button nm, String seat)
    {
        int suma = 0;

        if (Button1.BackColor == System.Drawing.Color.Green) { suma = suma + 1; }
        if (Button2.BackColor == System.Drawing.Color.Green) { suma = suma + 1; }
        if (Button3.BackColor == System.Drawing.Color.Green) { suma = suma + 1; }
        if (Button4.BackColor == System.Drawing.Color.Green) { suma = suma + 1; }
        if (Button5.BackColor == System.Drawing.Color.Green) { suma = suma + 1; }
        if (Button6.BackColor == System.Drawing.Color.Green) { suma = suma + 1; }
        if (Button7.BackColor == System.Drawing.Color.Green) { suma = suma + 1; }
        if (Button8.BackColor == System.Drawing.Color.Green) { suma = suma + 1; }
        if (Button9.BackColor == System.Drawing.Color.Green) { suma = suma + 1; }


            if (nm.BackColor == System.Drawing.Color.White)
            {
           
            if (suma < Convert.ToInt32(Session["nombre"]))
            {
                nm.BackColor = System.Drawing.Color.Green;
            } }
        
       else if (nm.BackColor == System.Drawing.Color.Green)
        {
          
            nm.BackColor = System.Drawing.Color.White;

        }
        
    }

    

    protected void Button1_Click(object sender, EventArgs e)
    {

       eventod(Button1, "A1"); 

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        eventod(Button2, "A2");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        eventod(Button3, "A3");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        eventod(Button4, "A4");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        eventod(Button5, "A5");
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        eventod(Button6, "A6");
    }

    protected void Button7_Click(object sender, EventArgs e)
    {

        eventod(Button7, "A7");
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        eventod(Button8, "A8");
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        eventod(Button9, "A9");
    }



    //********************** Metodo que hace update en la base de datos********************//
    protected void test_Click(object sender, EventArgs e)
    {
        
        
        con.Open();
        SqlCommand com;
        if (Button1.BackColor == System.Drawing.Color.Green)
        { com = new SqlCommand("UPDATE graderia  SET estado = 1 where asiento = 'A1' and id_evento = '" + Session["EventoEle"] + "'", con);
            com.ExecuteNonQuery();
            Session["asi"] += "A1,";

        }
            

        if (Button2.BackColor == System.Drawing.Color.Green)
        {
            com = new SqlCommand("UPDATE graderia  SET estado = 1 where asiento = 'A2'and id_evento = '" + Session["EventoEle"] + "'", con);
            com.ExecuteNonQuery();
            Session["asi"] += "A2,";
        }

        if (Button3.BackColor == System.Drawing.Color.Green)
        {
            com = new SqlCommand("UPDATE graderia  SET estado = 1 where asiento = 'A3'and id_evento = '" + Session["EventoEle"] + "'", con);
            com.ExecuteNonQuery(); Session["asi"] += "A3,";
        }

        if (Button4.BackColor == System.Drawing.Color.Green)
        {
            com = new SqlCommand("UPDATE graderia  SET estado = 1 where asiento = 'A4'and id_evento = '" + Session["EventoEle"] + "'", con);
            com.ExecuteNonQuery(); Session["asi"] += "A4,";
        }

        if (Button5.BackColor == System.Drawing.Color.Green)
        {
            com = new SqlCommand("UPDATE graderia  SET estado = 1 where asiento = 'A5'and id_evento = '" + Session["EventoEle"] + "'", con);
            com.ExecuteNonQuery(); Session["asi"] += "A5,";
        }

        if (Button6.BackColor == System.Drawing.Color.Green)
        {
            com = new SqlCommand("UPDATE graderia  SET estado = 1 where asiento = 'A6'and id_evento = '" + Session["EventoEle"] + "'", con);
            com.ExecuteNonQuery(); Session["asi"] += "A6,";
        }

        if (Button7.BackColor == System.Drawing.Color.Green)
        {
            com = new SqlCommand("UPDATE graderia  SET estado = 1 where asiento = 'A7'and id_evento = '" + Session["EventoEle"] + "'", con);
            com.ExecuteNonQuery(); Session["asi"] += "A7,";
        }

        if (Button8.BackColor == System.Drawing.Color.Green)
        {
            com = new SqlCommand("UPDATE graderia  SET estado = 1 where asiento = 'A8'and id_evento = '" + Session["EventoEle"] + "'", con);
            com.ExecuteNonQuery(); Session["asi"] += "A8,";
        }

        if (Button9.BackColor == System.Drawing.Color.Green)
        {
            com = new SqlCommand("UPDATE graderia  SET estado = 1 where asiento = 'A9'and id_evento = '" + Session["EventoEle"] + "'", con);
            com.ExecuteNonQuery(); Session["asi"] += "A9,";
        }

        con.Close();
        Response.Redirect("confirmacion.aspx");
        
    }


    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("elegirEvento.aspx");
    }


}