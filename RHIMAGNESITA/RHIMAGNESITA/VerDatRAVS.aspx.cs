using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VerDatRAVS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_Init(object sender, EventArgs e)
    {
        DataTable tblDatos = new DataTable();
        tblDatos = ((DataView)SqldsRAVS.Select(DataSourceSelectArguments.Empty)).Table;

        lblIdR.Text = Session["idReporteAVS"].ToString();
        lblNumeroR.Text = tblDatos.Rows[0][1].ToString();
        lblTitulo.Text = tblDatos.Rows[0][2].ToString();
        lblDescripcion.Text = tblDatos.Rows[0][3].ToString();
        lblFechaR.Text = tblDatos.Rows[0][4].ToString();
        lblIdE.Text = tblDatos.Rows[0][5].ToString();
        lblIdU.Text = tblDatos.Rows[0][6].ToString();
    }
    protected void imgbtnAtras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/ListaRAVS.aspx");
    }
}