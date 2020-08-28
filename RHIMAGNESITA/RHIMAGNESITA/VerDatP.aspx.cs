using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VerDatP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["rol"].ToString() != "Admin" && Session["rol"].ToString() != "Supervisor" && Session["rol"].ToString() != "Planificador")
        {
            Response.Redirect("~/ErrorASP.aspx");
        }
    }
    protected void Page_Init(object sender, EventArgs e)
    {
        DataTable tblDatos = new DataTable();
        tblDatos = ((DataView)SqldsPlanificacion.Select(DataSourceSelectArguments.Empty)).Table;

        lblIdP.Text = Session["idPlanificacion"].ToString();
        txtFechaP.Text = tblDatos.Rows[0][1].ToString();
        lblObservaciones.Text = tblDatos.Rows[0][2].ToString();
        cmbEstadoP.Text = tblDatos.Rows[0][3].ToString();
        lblIdE.Text = tblDatos.Rows[0][4].ToString();
    }

    protected void imgbtnAtras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/ListaP.aspx");
    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        clPlanificacionE objPlanificacionE = new clPlanificacionE();
        objPlanificacionE.IdPlanificacion = int.Parse(lblIdP.Text);
        objPlanificacionE.FechaPlanificacion = txtFechaP.Text;
        objPlanificacionE.Estado = cmbEstadoP.Text;

        clPlanificacion objPlanificacion = new clPlanificacion();
        int resultsql = objPlanificacion.mtdActualizarPlanificacion(objPlanificacionE);

        if (resultsql > 0)
        {
            //enviar mensaje 
            Response.Write("<script>alert('Datos actualizados de la Planificacion!.');window.location.href='ListaP.aspx'</script>");
        }
    }

    protected void btnEliminar_Click(object sender, EventArgs e)
    {
        clPlanificacionE objPlanificacionE = new clPlanificacionE();
        objPlanificacionE.IdPlanificacion = int.Parse(lblIdP.Text);

        clPlanificacion objPlanificacion = new clPlanificacion();
        int resultsql = objPlanificacion.mtdEliminarPlanificacion(objPlanificacionE);

        if (resultsql > 0)
        {
            //enviar mensaje 
            Response.Write("<script>alert('Detos de la planificacion eliminados!.');window.location.href='ListaP.aspx'</script>");
        }
    }
}