using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EjecucionesAsignadas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int numerFila = gvM.SelectedRow.RowIndex;
        Session["idEjecucionM"] = gvM.DataKeys[numerFila].Value;
        Response.Redirect("~/REjecucionM.aspx");
    }
    protected void imgbtnAtras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Perfil.aspx");
    }
}