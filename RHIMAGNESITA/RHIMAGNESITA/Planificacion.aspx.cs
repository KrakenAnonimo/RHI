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
        //Listado de Elemento
        //List<clElementoE> listaElemento = new List<clElementoE>();
      
       

        //Clase Rol junto con el metodo listar
        //clElementoL objElementoL = new clElementoL();
        //listaElemento = objElementoL.mtdListarElemento();

   


        //Carga de combo con datos 
        //cmbElemento.DataSource = listaElemento;
        //cmbElemento.DataTextField = "Nombre";
        //cmbElemento.DataValueField = "IdElemento";
        //cmbElemento.DataBind();

    }
    int fila = 0;
    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        fila = gvElement.SelectedRow.RowIndex;



        clPlanificacionE objPlanificacionE = new clPlanificacionE();
        objPlanificacionE.FechaPlanificacion = txtFechaP.Text;
        objPlanificacionE.Observaciones = txtObservaciones.Text;
        objPlanificacionE.Estado = cmbEstado.SelectedValue.ToString();
        objPlanificacionE.IdElemento = int.Parse(gvElement.DataKeys[fila].Value.ToString());

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
}