using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SimpleCrypto;

public partial class Usuario :  System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    protected void Page_Init(object sender, EventArgs e)
    {
        //Lista del Rol
        List<clRolE> listaRol = new List<clRolE>();

        //Clase Rol junto con el metodo listar
        clRolL objRolL = new clRolL();
        listaRol = objRolL.mtdListarRol();

        //Carga de combo con datos rol
        cmbRol.DataSource = listaRol;
        cmbRol.DataTextField = "Rol";
        cmbRol.DataValueField = "IdRol";
        cmbRol.DataBind();
    }


    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        ICryptoService cryptoService = new PBKDF2();

        //Algoritmo de encriptacion
        string salt = cryptoService.GenerateSalt();

        string contraseniaencriptada = cryptoService.Compute(txtClave.Text);
        //fin del algoritmo

        clUsuarioE objUsuarioE = new clUsuarioE();
        objUsuarioE.Documento = txtDocumento.Text;
        objUsuarioE.Nombre = txtNombre.Text;
        objUsuarioE.Apellido = txtApellido.Text;
        objUsuarioE.Telefono = txtTelefono.Text;
        objUsuarioE.Email = txtEmail.Text;
        objUsuarioE.Clave = txtClave.Text;
        objUsuarioE.Ciudad = txtCiudad.Text;
        objUsuarioE.Direccion = txtDireccion.Text;
        objUsuarioE.IdRol = int.Parse(cmbRol.SelectedValue.ToString());

        clUsuario objUsuario = new clUsuario();
        int resultsql = objUsuario.mtdRegistrarUsuario(objUsuarioE);

        if (resultsql > 0)
        {
            clCorreo objCorreo = new clCorreo(txtEmail.Text, "Registro Correcto!", "Registro Exitoso!");
            if (objCorreo.Estado)
            {
                Response.Write("<script>alert('Registro exitoso del usuario.');window.location.href=''</script>");
            }
            else
            {
                Response.Write("Erro al enviar <br>" + objCorreo.Mensaje_error);
            }
            //Limpiar Campos de texto
     
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