using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Elemento : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      ////  if (Session["rol"].ToString() != "Admin" && Session["rol"].ToString() != "Supervisor" && Session["rol"].ToString() != "Planificador")
      //  {
         //   Response.Redirect("~/ErrorASP.aspx");
      //  }
    }
    protected void Page_Init(object sender, EventArgs e)
    {
        //Lista del Area
        List<clAreaE> listaArea = new List<clAreaE>();

        //Clase Area junto con el metodo listar
        clAreaL objAreaL = new clAreaL();
        listaArea = objAreaL.mtdListarArea();

        //Carga de combo con datos Area
        cmbArea.DataSource = listaArea;
        cmbArea.DataTextField = "Nombre";
        cmbArea.DataValueField = "IdArea";
        cmbArea.DataBind();
    }
    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        clElementoE objElementoE = new clElementoE();
        objElementoE.Codigo = txtCodigo.Text;
        objElementoE.Nombre = txtNombre.Text;
        objElementoE.Descripcion = txtDescripcion.Text;
        objElementoE.Estado = cmbEstado.Text;
        objElementoE.IdArea = int.Parse(cmbArea.SelectedValue.ToString());

        clElemento objElemento = new clElemento();
        int resultsql = objElemento.mtdRegistrarElemento(objElementoE);

        if (resultsql > 0)
        {
            //enviar mensaje 
            Response.Write("<script>alert('Se registro un nuevo Elemento correctamente!');window.location.href='Elemento.aspx'</script>");
            //Limpiar Campos de texto
            txtCodigo.Text = "";
            txtNombre.Text = "";
            txtDescripcion.Text = "";
        }

    }

    protected void btnLimpiar_Click(object sender, EventArgs e)
    {
        txtCodigo.Text = "";
        txtNombre.Text = "";
        txtDescripcion.Text = "";
    }
}