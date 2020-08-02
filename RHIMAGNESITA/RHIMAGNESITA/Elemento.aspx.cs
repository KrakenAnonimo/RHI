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

    }
    protected void Page_Init(object sender, EventArgs e)
    {
        //Lista del Area
        List<clAreaE> listaArea = new List<clAreaE>();

        //Clase Rol junto con el metodo listar
        clAreaL objAreaL = new clAreaL();
        listaArea = objAreaL.mtdListarArea();

        //Carga de combo con datos rol
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

        clUsuario objUsuario = new clUsuario();
        int resultsql = objUsuario.mtdRegistrarUsuario(objElementoE);

        if (resultsql > 0)
        {
            //enviar mensaje 
            //Limpiar Campos de texto
            Response.Write("<script>alert('Se Registro Correctamente')</script>");
            txtCodigo.Text = "";
            txtNombre.Text = "";
            txtDescripcion.Text = "";
            Response.Redirect("~/Elemento.aspx");
        }

    }

    protected void btnLimpiar_Click(object sender, EventArgs e)
    {
        txtCodigo.Text = "";
        txtNombre.Text = "";
        txtDescripcion.Text = "";
    }
}