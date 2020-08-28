using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ReporteAveriaServicio : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["rol"].ToString() != "Admin" && Session["rol"].ToString() != "Supervisor" && Session["rol"].ToString() != "Planificador" && Session["rol"].ToString() != "Siso")
        {
            Response.Redirect("~/ErrorASP.aspx");
        }
    }
    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        clReporteAveriaServicioE objReporteAveriaServicioE = new clReporteAveriaServicioE();
        objReporteAveriaServicioE.NumReporte = int.Parse(txtNumReporte.Text);
        objReporteAveriaServicioE.Titulo = txtTitulo.Text;
        objReporteAveriaServicioE.Descripcion = txtDescripcion.Text;
        objReporteAveriaServicioE.FechaReporte = txtFechaReporte.Text;
        objReporteAveriaServicioE.IdElemento = int.Parse(cmbElemento.SelectedValue.ToString());
        objReporteAveriaServicioE.IdUsuario = int.Parse(cmbUsuario.SelectedValue.ToString());

        clReporteAveriaServicio objReporteAveriaServicio = new clReporteAveriaServicio();
        int resultsql = objReporteAveriaServicio.mtdRegistrarReporteAS(objReporteAveriaServicioE);

        if (resultsql > 0)
        {
            //Mostrar mensaje 
            Response.Write("<script>alert('Se Registro Correctamente el Reporte Averia Servicio')</script>");

            //Limpiar campos de texto 
            txtNumReporte.Text = "";
            txtTitulo.Text = "";
            txtDescripcion.Text = "";
            txtFechaReporte.Text = "";
            cmbElemento.Text = "";
            cmbUsuario.Text = "";

            //Redirecionar la pagina
            Response.Redirect("~/ReporteAveriaServicio.aspx");
        }
    }

    protected void btnLimpiar_Click(object sender, EventArgs e)
    {
        txtNumReporte.Text = "";
        txtTitulo.Text = "";
        txtDescripcion.Text = "";
        txtFechaReporte.Text = "";
        cmbElemento.Text = "";
        cmbUsuario.Text = "";
    }
}