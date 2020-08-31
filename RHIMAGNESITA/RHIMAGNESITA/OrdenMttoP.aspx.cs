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
       /* if (Session["rol"].ToString() != "Admin" && Session["rol"].ToString() != "Supervisor" && Session["rol"].ToString() != "Planificador")
        {
            Response.Redirect("~/ErrorASP.aspx");
        }*/
    }
    protected void Page_Init(object sender, EventArgs e)
    {
        //Listados de los 2 combos
        List<clReporteAveriaServicioE> listaReporteAveriaServicio = new List<clReporteAveriaServicioE>();

        clReporteAveriaServicioL objReporteAveriaServicioL = new clReporteAveriaServicioL();
        listaReporteAveriaServicio = objReporteAveriaServicioL.mtdListarReporteAveriaServicio();

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
        SqlDataSource5.SelectCommand = consulta;
        gvUsuarios.DataSourceID = "SqlDataSource5";
        gvUsuarios.DataBind();
    }

    int filas = 0;

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        fila = gvPlanificacion.SelectedRow.RowIndex;

        //clase Planificacion
        clPlanificacionx objPlanificacion = new clPlanificacionx();

        objPlanificacion.IdPlanificacion = int.Parse(gvPlanificacion.DataKeys[fila].Value.ToString());
        objPlanificacion.FechaPlanificacion = gvPlanificacion.SelectedRow.Cells[1].Text;

        listax.Add(objPlanificacion);
        gvPlanificaciones.DataSource = listax;
        gvPlanificaciones.DataBind();
    }
    static List<clPlanificacionx> listax = new List<clPlanificacionx>();
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
    int fila = 0;
    protected void btnBuscar_Click(object sender, EventArgs e)
    {
        //Busqueda por nombre en la consulta
        SqlDataSource1.SelectCommand = "SELECT [IdPlanificacion], [FechaPlanificacion], [Observaciones], [IdElemento] FROM [Planificacion] WHERE FechaPlanificacion Like '%" + txtBuscarE.Text + "%'";
        //Ejecucion
        SqlDataSource1.DataBind();
    }

    static List<clUsuarioq> lista = new List<clUsuarioq>();
    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        clOrdenMttoPE objOrdenMttoPE = new clOrdenMttoPE();
        objOrdenMttoPE.NumOrden = txtNumOrdenP.Text;
        objOrdenMttoPE.Disciplina = cmbDis.Text;
        objOrdenMttoPE.FechaInicio = txtFechaOI.Text;
        objOrdenMttoPE.HoraInicio = txtHoraI.Text;
        objOrdenMttoPE.FechaFinal = txtFechaOF.Text;
        objOrdenMttoPE.HoraFinal = txtHoraF.Text;
        objOrdenMttoPE.Ejecutado = cmbEjecucionOr.SelectedValue.ToString();
        objOrdenMttoPE.TrabajoIE = cmbTrabajoIE.SelectedValue.ToString();
        objOrdenMttoPE.Observaciones = txtObservaciones.Text;
        objOrdenMttoPE.Revisado = cmbRevisado.SelectedValue.ToString();
        objOrdenMttoPE.IdReporteAS = int.Parse(cmbAveriaServicio.SelectedValue.ToString());

        // Guardar Usuarios
        // Ciclo por cada registro de usuarios en la orden
        for (int i = 0; i < gvListaElegidos.Rows.Count; i++)
        {
            //Campos Registra
            int IdUsuario = int.Parse(gvListaElegidos.Rows[i].Cells[0].Text);

            //Campos No Registra
            int Documento = int.Parse(gvListaElegidos.Rows[i].Cells[1].Text);
            string Nombre = gvListaElegidos.Rows[i].Cells[2].Text;

            //Registro de id
            objOrdenMttoPE.IdUsuario = IdUsuario;
        }
        // Guardar Planificacion
        // Ciclo por cada registro de Planificacion en la orden
        for (int i = 0; i < gvPlanificaciones.Rows.Count; i++)
        {
            //Campos Registra
            int IdPlanificacion = int.Parse(gvPlanificaciones.Rows[i].Cells[0].Text);


            //Registro de id
            objOrdenMttoPE.IdPlanificacion = IdPlanificacion;
        }

        clOrdenMttoP objOrdenMttoP = new clOrdenMttoP();
        int resultsql = objOrdenMttoP.mtdRegistrarOrdenMttoP(objOrdenMttoPE);

        if (resultsql > 0)
        {
            //enviar mensaje
            Response.Write("<script>alert('Se registro una nueva Orden de Mantenimiento Preventiva correctamente!');window.location.href='OrdenMttoP.aspx'</script>");
            //Limpiar Campos de texto
            txtNumOrdenP.Text = "";
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

    public class clPlanificacionx
    {
        //Atributos Tabla Planificacion
        public int IdPlanificacion { get; set; }
        public string FechaPlanificacion { get; set; }


    }
}