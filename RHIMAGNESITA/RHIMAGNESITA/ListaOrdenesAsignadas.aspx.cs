using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ListaOrdenesAsignadas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int numFila = GVOrdenP.SelectedRow.RowIndex;
        Session["idOrdenMttoP"] = GVOrdenP.DataKeys[numFila].Value;
        Response.Redirect("~/ROrdenMttoP.aspx");
    }
}