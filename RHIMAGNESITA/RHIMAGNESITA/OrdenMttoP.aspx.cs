using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OrdenMttoP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_Init(object sender, EventArgs e)
    {
        //Listados de los 2 combos
        List<clPlanificacionE> listaPlanificacion = new List<clPlanificacionE>();
        List<clReporteAveriaServicioE> listaReporteAveriaServicio = new List<clReporteAveriaServicioE>();

        //Clases con sus metodos
        clPlanificacionL objPlanificacionL = new clPlanificacionL();
        listaPlanificacion = objPlanificacionL.mtdListarPlanificacion();

        clReporteAveriaServicioL objReporteAveriaServicioL = new clReporteAveriaServicioL();
        listaReporteAveriaServicio = objReporteAveriaServicioL.mtdListarReporteAveriaServicio();

        //Carga de combos con sus datos
        cmbPlanificacion.DataSource = listaPlanificacion;
        cmbPlanificacion.DataTextField = "FechaPlanificacion";
        cmbPlanificacion.DataValueField = "IdPlanificacion";
        cmbPlanificacion.DataBind();

        cmbAveriaServicio.DataSource = listaReporteAveriaServicio;
        cmbAveriaServicio.DataTextField = "NumReporte";
        cmbAveriaServicio.DataValueField = "IdReporteAS";
        cmbAveriaServicio.DataBind();
    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        clOrdenMttoPE objOrdenMttoPE = new clOrdenMttoPE();
        objOrdenMttoPE.NumOrden = txtNumOrdenP.Text;
        objOrdenMttoPE.Disciplina = txtDisciplina.Text;
        objOrdenMttoPE.FechaInicio = txtFechaOI.Text;
        objOrdenMttoPE.HoraInicio = txtHoraI.Text;
        objOrdenMttoPE.FechaFinal = txtFechaOF.Text;
        objOrdenMttoPE.HoraFinal = txtHoraF.Text;
        objOrdenMttoPE.Ejecutado = cmbEjecucionOr.SelectedValue.ToString();
        objOrdenMttoPE.TrabajoIE = cmbTrabajoIE.SelectedValue.ToString();
        objOrdenMttoPE.Observaciones = txtObservaciones.Text;
        objOrdenMttoPE.Revisado = cmbRevisado.SelectedValue.ToString();
        objOrdenMttoPE.IdPlanificacion = int.Parse(cmbPlanificacion.SelectedValue.ToString());
        objOrdenMttoPE.IdReporteAS = int.Parse(cmbAveriaServicio.SelectedValue.ToString());
        objOrdenMttoPE.IdUsuario = int.Parse(chxblRoles.SelectedValue.ToString());

        clOrdenMttoP objOrdenMttoP = new clOrdenMttoP();
        int resultsql = objOrdenMttoP.mtdRegistrarOrdenMttoP(objOrdenMttoPE);

        if (resultsql > 0)
        {
            //enviar mensaje
            Response.Write("<script>alert('Se Registro Correctamente la Orden de Mtto Preventivo')</script>");

            //Limpiar Campos de texto
            txtNumOrdenP.Text = "";
            txtDisciplina.Text = "";
            txtFechaOI.Text = "";
            txtHoraI.Text = "";
            txtFechaOF.Text = "";
            txtHoraF.Text = "";
            txtObservaciones.Text = "";
        }

    }

    protected void btnLimpiar_Click(object sender, EventArgs e)
    {
        txtNumOrdenP.Text = "";
        txtDisciplina.Text = "";
        txtFechaOI.Text = "";
        txtHoraI.Text = "";
        txtFechaOF.Text = "";
        txtHoraF.Text = "";
        txtObservaciones.Text = "";
       
    }
}