using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Usuario :  System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        mtdCargarCombo();

    }
    //Lista del Rol
    List<clRolE> listaRol = new List<clRolE>();

    private void mtdCargarCombo()
    {
        //Clase Rol junto con el metodo listar
        clRolL objRolL = new clRolL();
        listaRol = objRolL.mtdListarRol();

        //Carga de combo con datos rol
        cmbRol.DataSource = listaRol;
        cmbRol.DataTextField = "Rol";
        cmbRol.DataValueField = "IdRol";

        cmbRol.DataBind();
        
        cmbRol.SelectedIndex = 0;

    }
    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        clUsuarioE objUsuarioE = new clUsuarioE();
        objUsuarioE.Documento = txtDocumento.Text;
        objUsuarioE.Nombre = txtNombre.Text;
        objUsuarioE.Apellido = txtApellido.Text;
        objUsuarioE.Telefono = txtTelefono.Text;
        objUsuarioE.Email = txtEmail.Text;
        objUsuarioE.Clave = txtClave.Text;
        objUsuarioE.Ciudad = txtCiudad.Text;
        objUsuarioE.Direccion = txtDireccion.Text;
        objUsuarioE.IdRol = int.Parse(cmbRol.Text);

        clUsuario objUsuario = new clUsuario();
        int resultsql = objUsuario.mtdRegistrarUsuario(objUsuarioE);

        if (resultsql > 0)
        {
            mtdCargarCombo();
            //enviar mensaje 
            Response.Write("<script>alert('Se Registro Correctamente');</script>");
            txtDocumento.Text = "";
            txtNombre.Text = "";
            txtApellido.Text = "";
            txtTelefono.Text = "";
            txtEmail.Text = "";
            txtClave.Text = "";
            txtCiudad.Text = "";
            txtDireccion.Text = "";
        }
    
    }

    protected void btnLimpiar_Click(object sender, EventArgs e)
    {
        txtDocumento.Text = "";
        txtNombre.Text = "";
        txtApellido.Text = "";
        txtTelefono.Text = "";
        txtEmail.Text = "";
        txtClave.Text = "";
        txtCiudad.Text = "";
        txtDireccion.Text = "";
    }
}