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
    protected void btnLimpiar_Click(object sender, EventArgs e)
    {
        //Limpiar Campos de texto
        txtFechaP.Text = "";
        txtObservaciones.Text = "";
    }

    int fila = 0;

    int filas = 0;
    protected void gvElemento_SelectedIndexChanged(object sender, EventArgs e)
    {
        filas = gvElemento.SelectedRow.RowIndex;

        //clase Elemento
        clElementop objElemento = new clElementop();

        objElemento.IdElemento = int.Parse(gvElemento.DataKeys[filas].Value.ToString());
        objElemento.Nombre = gvElemento.SelectedRow.Cells[1].Text;

        listax.Add(objElemento);
        gvElementoS.DataSource = listax;
        gvElementoS.DataBind();
    }
    static List<clElementop> listax = new List<clElementop>();

    protected void btnBuscar_Click(object sender, EventArgs e)
    {
        //Busqueda por nombre en la consulta
        SqlDataSource1.SelectCommand = SqlDataSource4.SelectCommand = "SELECT Elemento.IdElemento, Elemento.Codigo, Elemento.Nombre, Planificacion.IdPlanificacion, Planificacion.FechaPlanificacion, Planificacion.Estado FROM Elemento INNER JOIN Planificacion ON Elemento.IdElemento = Planificacion.IdElemento WHERE Elemento.Nombre Like '%" + txtBuscarE.Text + "%'";
        SqlDataSource1.DataBind();
        txtBuscarE.Text = "";
    }
    public class clUsuarios
    {
        //Atributos Tabla Usuarios
        public int IdUsuario { get; set; }
        public string Documento { get; set; }
        public string Nombre { get; set; }
    }
    public class clElementop
    {
        //Atributos Tabla Elementos
        public int IdElemento { get; set; }

        public string Nombre { get; set; }


    }
    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        clPlanificacionE objPlanificacionE = new clPlanificacionE();
        objPlanificacionE.FechaPlanificacion = txtFechaP.Text;
        objPlanificacionE.Observaciones = txtObservaciones.Text;
        objPlanificacionE.Estado = cmbEstado.SelectedValue.ToString();

            for (int i = 0; i < gvElementoS.Rows.Count; i++)
            {
                //Campos Registra
                int IdElemento = int.Parse(gvElementoS.Rows[i].Cells[0].Text);

                //No Registra
                string Nombre = gvElementoS.Rows[i].Cells[1].Text;

                //Registro de id
                objPlanificacionE.IdElemento = IdElemento;
            }

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
}
