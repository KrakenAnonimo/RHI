using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VerDatU : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_Init(object sender, EventArgs e)
    {
        DataTable tblDatos = new DataTable();
        tblDatos = ((DataView)SqldsUsuario.Select(DataSourceSelectArguments.Empty)).Table;

        lblIdU.Text = Session["idUsuario"].ToString();
        lblDocumento.Text = tblDatos.Rows[0][1].ToString();
        lblNombre.Text = tblDatos.Rows[0][2].ToString();
        lblApellido.Text = tblDatos.Rows[0][3].ToString();
        lblTelefono.Text = tblDatos.Rows[0][4].ToString();
        lblEmail.Text = tblDatos.Rows[0][5].ToString();
        lblCiudad.Text = tblDatos.Rows[0][6].ToString();
        lblDireccion.Text = tblDatos.Rows[0][7].ToString();
        lblIdR.Text = tblDatos.Rows[0][8].ToString();
    }
    protected void imgbtnAtras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/ListaU.aspx");
    }
}