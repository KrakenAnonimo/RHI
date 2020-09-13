using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ListaP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /* if (Session["rol"].ToString() != "Admin" && Session["rol"].ToString() != "Supervisor" && Session["rol"].ToString() != "Planificador")
           {
               Response.Redirect("~/ErrorASP.aspx");
           }*/
    }
    protected void imgbtnAtras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/ListasGenerales.aspx");
    }

    protected void btnBuscar_Click(object sender, EventArgs e)
    {
        //Busqueda por fecha en la consulta
        SqlDataSource1.SelectCommand = SqlDataSource1.SelectCommand = "SELECT Planificacion.* FROM Planificacion WHERE Planificacion.FechaPlanificacion Like '%" + txtBuscar.Text + "%'";
        SqlDataSource1.DataBind();
        txtBuscar.Text = "";
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
         int numFila = GridView1.SelectedRow.RowIndex;
         Session["idPlanificacion"] = GridView1.DataKeys[numFila].Value;
         Response.Redirect("~/VerDatP.aspx");
    }
}