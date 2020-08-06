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
        cmbAveriaServicio.DataTextField = "Titulo";
        cmbAveriaServicio.DataValueField = "IdReporteAS";
        cmbAveriaServicio.DataBind();
    }

    //radio butons filtrados a roles
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int idRol = int.Parse(RadioButtonList1.SelectedValue.ToString());
        string consulta = "select * from Usuario where IdRol=" + idRol;
        SqlDataSource4.SelectCommand = consulta;
        gvUsuarios.DataSourceID = "SqlDataSource4";
        gvUsuarios.DataBind();
    }

    int fila = 0;

    protected void gvUsuario_SelectedIndexChanged(object sender, EventArgs e)
    {
        fila = gvUsuarios.SelectedRow.RowIndex;

        //clase usuario
        clUsuarioq objUsuarios = new clUsuarioq();

        objUsuarios.IdUsuario = int.Parse(gvUsuarios.DataKeys[fila].Value.ToString());
        objUsuarios.Documento = gvUsuarios.SelectedRow.Cells[1].Text;
        objUsuarios.Nombre = gvUsuarios.SelectedRow.Cells[2].Text;

        lista.Add(objUsuarios);
        gvListaElegidos.DataSource = lista;
        gvListaElegidos.DataBind();
    }

    static List<clUsuarioq> lista = new List<clUsuarioq>();
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

            //Redirecionar la pagina
            Response.Redirect("~/OrdenMttoP.aspx");
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

    public class clUsuarioq
    {
        //Atributos Tabla Usuarios
        public int IdUsuario { get; set; }
        public string Documento { get; set; }
        public string Nombre { get; set; }
    }
}