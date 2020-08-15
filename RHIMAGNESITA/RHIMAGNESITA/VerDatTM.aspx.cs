using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VerDatTM : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_Init(object sender, EventArgs e)
    {
        DataTable tblDatos = new DataTable();
        tblDatos = ((DataView)SqldsTareaM.Select(DataSourceSelectArguments.Empty)).Table;

        lblIdTM.Text = Session["idTareaMtto"].ToString();
        lblNombreTM.Text = tblDatos.Rows[0][1].ToString();
        lblDuracion.Text = tblDatos.Rows[0][2].ToString();
        lblDescripcion.Text = tblDatos.Rows[0][3].ToString();
        lblIdE.Text = tblDatos.Rows[0][4].ToString();
    }
    protected void imgbtnAtras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/ListaTM.aspx");
    }
}