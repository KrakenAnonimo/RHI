using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OrdenesAsignadas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void gvOrdenesA_SelectedIndexChanged(object sender, EventArgs e)
    {
        int numerFila = gvOrdenesA.SelectedRow.RowIndex;
        Session["idOrdenMttoP"] = gvOrdenesA.DataKeys[numerFila].Value;
        Response.Redirect("~/ROrdenMttoP.aspx");
    }
    protected void imgbtnAtras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Perfil.aspx");
    }
}