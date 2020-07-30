using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Material : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        clMaterialE objMaterialE = new clMaterialE();
        objMaterialE.Codigo = txtCodigo.Text;
        objMaterialE.Nombre = txtNombre.Text;
        objMaterialE.Descripcion = txtDescripcion.Text;
        objMaterialE.Unidad = txtUnidadM.Text;
   
        clMaterial objMaterial = new clMaterial();
        int resultsql = objMaterial.mtdRegistrarMaterial(objMaterialE);

        if (resultsql > 0)
        {
            //enviar mensaje 
            //Limpiar Campos de texto
            Response.Write("<script>alert('Se Registro Correctamente')</script>");
            txtCodigo.Text = "";
            txtNombre.Text = "";
            txtDescripcion.Text = "";
            txtUnidadM.Text = "";
            Response.Redirect("~/Material.aspx");
           
        }

    }

    protected void btnLimpiar_Click(object sender, EventArgs e)
    {
        txtCodigo.Text = "";
        txtNombre.Text = "";
        txtDescripcion.Text = "";
        txtUnidadM.Text = "";
    }
}