using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VerDatA : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_Init(object sender, EventArgs e)
    {
        DataTable tblDatos = new DataTable();
        tblDatos = ((DataView)SqldsArea.Select(DataSourceSelectArguments.Empty)).Table;

        lblIdA.Text = Session["idArea"].ToString();
        lblNombreA.Text = tblDatos.Rows[0][1].ToString();
        lblUbicacion.Text = tblDatos.Rows[0][2].ToString();
    }
    protected void imgbtnAtras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/ListaA.aspx");
    }
}