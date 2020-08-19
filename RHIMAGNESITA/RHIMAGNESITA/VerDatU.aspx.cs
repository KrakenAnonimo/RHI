using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VerDatU : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_Init(object sender, EventArgs e)
    {
        DataTable tblDatos = new DataTable();
        tblDatos = ((DataView)SqldsUsuario.Select(DataSourceSelectArguments.Empty)).Table;

        lblIdU.Text = Session["idUsuario"].ToString();
        txtDocumento.Text = tblDatos.Rows[0][1].ToString();
        txtNombre.Text = tblDatos.Rows[0][2].ToString();
        txtApellido.Text = tblDatos.Rows[0][3].ToString();
        txtTelefono.Text = tblDatos.Rows[0][4].ToString();
        txtEmail.Text = tblDatos.Rows[0][5].ToString();
        txtCiudad.Text = tblDatos.Rows[0][6].ToString();
        txtDireccion.Text = tblDatos.Rows[0][7].ToString();
        lblIdR.Text = tblDatos.Rows[0][8].ToString();
    }
    protected void imgbtnAtras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/ListaU.aspx");
    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        clUsuarioE objUsuarioE = new clUsuarioE();
        objUsuarioE.IdUsuario = int.Parse(lblIdU.Text);
        objUsuarioE.Documento = txtDocumento.Text;
        objUsuarioE.Nombre = txtNombre.Text;
        objUsuarioE.Apellido = txtApellido.Text;
        objUsuarioE.Telefono = txtTelefono.Text;
        objUsuarioE.Email = txtEmail.Text;
        objUsuarioE.Ciudad = txtCiudad.Text;
        objUsuarioE.Direccion = txtDireccion.Text;


        clUsuario objUsuario = new clUsuario();
        int resultsql = objUsuario.mtdActualizarUsuario(objUsuarioE);

        if (resultsql > 0)
        {
            //enviar mensaje 
            Response.Write("<script>alert('Se Actualizo Correctamente')</script>");
            //Redireccionar
            Response.Redirect("~/ListaU.aspx");
        }
    }
}