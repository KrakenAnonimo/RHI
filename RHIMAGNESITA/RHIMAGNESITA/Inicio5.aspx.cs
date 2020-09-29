using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Inicio5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["rol"].ToString() == "Admin")
        {
            Response.Redirect("~/Inicio1.aspx");
        }
        else if (Session["rol"].ToString() == "Supervisor" && Session["rol"].ToString() == "Planificador")
        {
            Response.Redirect("~/Inicio2.aspx");
        }
        else if (Session["rol"].ToString() == "Tecnico" && Session["rol"].ToString() == "Soldador")
        {
            Response.Redirect("~/Inicio3.aspx");
        }
        else if (Session["rol"].ToString() == "Siso")
        {
            Response.Redirect("~/Inicio4.aspx");
        }
        else if (Session["rol"].ToString() == "NN")
        {
            Response.Redirect("~/Inicio5.aspx");
        }
    }
}