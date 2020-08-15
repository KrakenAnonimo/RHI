using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VerDatTAVS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_Init(object sender, EventArgs e)
    {
        DataTable tblDatos = new DataTable();
        tblDatos = ((DataView)SqldsTAVS.Select(DataSourceSelectArguments.Empty)).Table;

        lblIdTAVS.Text = Session["idTareaAVS"].ToString();
        lblNombreTAVS.Text = tblDatos.Rows[0][1].ToString();
        lblDuracion.Text = tblDatos.Rows[0][2].ToString();
        lblFechaTAVS.Text = tblDatos.Rows[0][3].ToString();
        lblIdOC.Text = tblDatos.Rows[0][4].ToString();
        lblIdOP.Text = tblDatos.Rows[0][5].ToString();
    }
    protected void imgbtnAtras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/ListaTAVS.aspx");
    }
}