using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ListaU : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void imgbtnAtras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/ListasGenerales.aspx");
    }

    protected void Unnamed1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int numFila = GridView1.SelectedRow.RowIndex;
        Session["idUsuario"] = GridView1.DataKeys[numFila].Value;
        Response.Redirect("~/VerDatU.aspx");
    }

    protected void btnBuscar_Click(object sender, EventArgs e)
    {
        //Busqueda por documento en la consulta
        SqlDataSource1.SelectCommand = SqlDataSource1.SelectCommand = "SELECT Usuario.* FROM Usuario WHERE Usuario.Documento Like '%" + txtBuscar.Text + "%'";
        SqlDataSource1.DataBind();
        txtBuscar.Text = "";
    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int idRol = int.Parse(RadioButtonList1.SelectedValue.ToString());
        string consulta = "select * from Usuario where IdRol=" + idRol;
        SqlDataSource1.SelectCommand = consulta;
        GridView1.DataSourceID = "SqlDataSource1";
        GridView1.DataBind();
    }
}