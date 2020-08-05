using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Planificacion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_Init(object sender, EventArgs e)
    {


    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        clPlanificacionE objPlanificacionE = new clPlanificacionE();
        objPlanificacionE.FechaPlanificacion = txtFechaP.Text;
        objPlanificacionE.Observaciones = txtObservaciones.Text;
        objPlanificacionE.Estado = cmbEstado.SelectedValue.ToString();
        //objPlanificacionE.IdElemento = int.Parse(gvElement.DataKeys[fila].Value.ToString());

        clPlanificacion objPlanificacion = new clPlanificacion();
        int resultsql = objPlanificacion.mtdRegistrarPlanificacion(objPlanificacionE);


        if (resultsql > 0)
        {
            //enviar mensaje 
            Response.Write("<script>alert('Se Registro Correctamente')</script>");
            //Limpiar Campos de texto
            txtFechaP.Text = "";
            txtObservaciones.Text = "";
            //Redireccion de Pagina
            Response.Redirect("~/Planificacion.aspx");
        }

    }

    protected void btnLimpiar_Click(object sender, EventArgs e)
    {
        //Limpiar Campos de texto
        txtFechaP.Text = "";
        txtObservaciones.Text = "";
    }

    int fila = 0;

    protected void gvUsuario_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Mostrar usuario elegido en tabala y label
        lblUsuario.Text = gvUsuario.SelectedRow.Cells[1].Text + " " + gvUsuario.SelectedRow.Cells[2].Text;
        fila = gvUsuario.SelectedRow.RowIndex;

        //clase usuario
        clUsuarios objUsuarios = new clUsuarios();

        //Objeto y variable a cargar
        objUsuarios.IdUsuario = int.Parse(gvUsuario.DataKeys[fila].Value.ToString());
        objUsuarios.Documento = gvUsuario.SelectedRow.Cells[1].Text;
        objUsuarios.Nombre = gvUsuario.SelectedRow.Cells[2].Text;

        //lista y grid tomando datos
        lista.Add(objUsuarios);
        gvElegidos.DataSource = lista;
        gvElegidos.DataBind();
    }

    //Lista de la Clase
    static List<clUsuarios> lista = new List<clUsuarios>();

    //Combo de Roles
    protected void cmbRoles_SelectedIndexChanged(object sender, EventArgs e)
    {
        int idRol = int.Parse(cmbRoles.SelectedValue.ToString());
        string consulta = "select * from Usuario where IdRol=" + idRol;
        SqldsRol.SelectCommand = consulta;
        gvUsuario.DataSourceID = "SqldsRol";
        gvUsuario.DataBind();
    }
}
public class clUsuarios
{
    //Atributos Tabla Usuarios
    public int IdUsuario { get; set; }
    public string Documento { get; set; }
    public string Nombre { get; set; }
}