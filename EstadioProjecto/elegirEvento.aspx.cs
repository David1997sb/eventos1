using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class elegirEvento : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    public void entra() {
        if (DropDownList1.SelectedValue == "1")
        { Session["nombre"] = "1"; }

        if (DropDownList1.SelectedValue == "2")
        { Session["nombre"] = "2"; }

        if (DropDownList1.SelectedValue == "3")
        { Session["nombre"] = "3"; }

    }

   
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

    

    protected void btncomprar_Click(object sender, EventArgs e)
    {
        entra();
        Session["EventoEle"] = DropDownList2.SelectedValue;
        Response.Redirect("asientos.aspx");
    }
}
