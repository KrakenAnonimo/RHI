using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VerDatOP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_Init(object sender, EventArgs e)
    {
        DataTable tblDatos = new DataTable();
        tblDatos = ((DataView)SqldsOrdenMttoP.Select(DataSourceSelectArguments.Empty)).Table;

        lblIdOP.Text = Session["idOrdenMttoP"].ToString();
        lblNumero.Text = tblDatos.Rows[0][1].ToString();
        lblDisciplina.Text = tblDatos.Rows[0][2].ToString();
        lblFechaI.Text = tblDatos.Rows[0][3].ToString();
        lblHoraI.Text = tblDatos.Rows[0][4].ToString();
        lblFechaF.Text = tblDatos.Rows[0][5].ToString();
        lblHoraF.Text = tblDatos.Rows[0][6].ToString();
        lblEjecutado.Text = tblDatos.Rows[0][7].ToString();
        lblTrabajoIE.Text = tblDatos.Rows[0][8].ToString();
        lblObservaciones.Text = tblDatos.Rows[0][9].ToString();
        lblRevisado.Text = tblDatos.Rows[0][10].ToString();
        lblIdP.Text = tblDatos.Rows[0][11].ToString();
        lblidRAVS.Text = tblDatos.Rows[0][12].ToString();
        lblIdU.Text = tblDatos.Rows[0][13].ToString();
    }
    protected void imgbtnAtras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/ListaOP.aspx");
    }
}