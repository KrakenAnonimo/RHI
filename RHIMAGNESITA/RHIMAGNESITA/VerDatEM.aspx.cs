using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VerDatEM : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_Init(object sender, EventArgs e)
    {
        DataTable tblDatos = new DataTable();
        tblDatos = ((DataView)SqldsEjecucionM.Select(DataSourceSelectArguments.Empty)).Table;

        lblIdEM.Text = Session["idEjecucionM"].ToString();
        lblEstado.Text = tblDatos.Rows[0][1].ToString();
        lblFechaTAVS.Text = tblDatos.Rows[0][2].ToString();
        lblDuracion.Text = tblDatos.Rows[0][3].ToString();
        lblObservaciones.Text = tblDatos.Rows[0][4].ToString();
        lblIdTM.Text = tblDatos.Rows[0][5].ToString();
        lblIdOP.Text = tblDatos.Rows[0][6].ToString();
    }
    protected void imgbtnAtras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/ListaEM.aspx");
    }
}