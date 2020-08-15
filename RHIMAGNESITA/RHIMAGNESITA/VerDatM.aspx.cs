using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VerDatM : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_Init(object sender, EventArgs e)
    {
        DataTable tblDatos = new DataTable();
        tblDatos = ((DataView)SqldsMaterial.Select(DataSourceSelectArguments.Empty)).Table;

        lblIdM.Text = Session["idMaterial"].ToString();
        lblCodigo.Text = tblDatos.Rows[0][1].ToString();
        lblNombreM.Text = tblDatos.Rows[0][2].ToString();
        lblDescripcion.Text = tblDatos.Rows[0][3].ToString();
        lblUnidad.Text = tblDatos.Rows[0][4].ToString();
    }
    protected void imgbtnAtras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/ListaM.aspx");
    }
}