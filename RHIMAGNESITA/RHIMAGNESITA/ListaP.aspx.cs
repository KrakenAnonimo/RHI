using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ListaP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void imgbtnAtras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/ListasGenerales.aspx");
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int numFila = GridView1.SelectedRow.RowIndex;
        Session["idPlanificacion"] = GridView1.DataKeys[numFila].Value;
        Response.Redirect("~/VerDatP.aspx");
    }
}