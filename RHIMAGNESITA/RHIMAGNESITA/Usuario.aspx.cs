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



    }
    //Lista del Rol
    List<clRolE> listaRol = new List<clRolE>();

    private void mtdCargarGrid()
    {
        //Clase Rol junto con el metodo listar
        clRolL objRolL = new clRolL();
        listaRol = objRolL.mtdListarRol();

        //Carga de combo con datos rol
        cmbRol.DataSource = listaRol;
        cmbRol.DataTextField = "NombreArea";
        cmbRol.DataValueField = "IdArea";

    }
    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        clUsuarioE objUsuarioE = new clUsuarioE();
        objUsuarioE.Documento = txtDocumento.Text;
        objUsuarioE.Nombre = txtDocumento.Text;
        objUsuarioE.Apellido = txtDocumento.Text;
        objUsuarioE.Telefono = txtDocumento.Text;
        objUsuarioE.Email = txtDocumento.Text;
        objUsuarioE.Clave = txtDocumento.Text;
        objUsuarioE.Ciudad = txtDocumento.Text;
        objUsuarioE.Direccion = txtDocumento.Text;
        objUsuarioE.IdRol = int.Parse(cmbRol.Text);

        clUsuario objUsuario = new clUsuario();
        int resultsql = objUsuario.mtdRegistrarUsuario(objUsuarioE);

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