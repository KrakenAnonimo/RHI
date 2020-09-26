using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Perfil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable tblDatos = new DataTable();
        tblDatos = ((DataView)SqldsDatos.Select(DataSourceSelectArguments.Empty)).Table;
        txtDocumento.Text = tblDatos.Rows[0][3].ToString();
        txtNombre.Text = tblDatos.Rows[0][4].ToString();
        txtApellido.Text = tblDatos.Rows[0][5].ToString();
        txtTelefono.Text = tblDatos.Rows[0][6].ToString();
        txtEmail.Text = tblDatos.Rows[0][7].ToString();
        txtClave.Text = tblDatos.Rows[0][8].ToString();
        txtCiudad.Text = tblDatos.Rows[0][9].ToString();
        txtDireccion.Text = tblDatos.Rows[0][10].ToString();
    }
    protected void Page_Init(object sender, EventArgs e)
    {
        DataTable tblDatos = new DataTable();
        tblDatos = ((DataView)SqldsDatos.Select(DataSourceSelectArguments.Empty)).Table;
        
        lblRol.Text = tblDatos.Rows[0][0].ToString();
        lblDocumento.Text = tblDatos.Rows[0][3].ToString();
        lblNombre.Text = tblDatos.Rows[0][4].ToString();
        lblApellido.Text = tblDatos.Rows[0][5].ToString();
        lblTelefono.Text = tblDatos.Rows[0][6].ToString();
        lblEmail.Text = tblDatos.Rows[0][7].ToString();
        lblClave.Text = tblDatos.Rows[0][8].ToString();
        lblCiudad.Text = tblDatos.Rows[0][9].ToString();
        lblDireccion.Text = tblDatos.Rows[0][10].ToString();
        imgFoto.ImageUrl = tblDatos.Rows[0][13].ToString();
        lblidU.Text = tblDatos.Rows[0][12].ToString();

    }

    protected void btnCargarImagen_Click(object sender, EventArgs e)
    {
        // Verificar si el  Fileupload tiene un archivo cargado

        if (fUploadImagen.HasFile)
        {
            // Cartura la extension  del archivo 
            string extension = System.IO.Path.GetExtension(fUploadImagen.FileName);
            if (extension==".png" || extension==".jpg" || extension == ".PNG" || extension == ".JPG")
            {
                // Subir la imagen al servidor
                fUploadImagen.SaveAs(Server.MapPath("~/Fotos/") + fUploadImagen.FileName);
                imgFoto.ImageUrl = "~/Fotos/" + fUploadImagen.FileName;

                // Cargar variable de la foto
                Session["foto"] = "~/Fotos/" + fUploadImagen.FileName;

                // Guardar en la base datos
                SqldsFoto.Update();
            }
            else
            {
                // Mensaje de error
            }
        }
    }

    protected void btnEditar_Click(object sender, EventArgs e)
    {
       
        clUsuarioE objUsuarioE = new clUsuarioE();
        Session["idUsuario"] = lblidU.Text;
        objUsuarioE.Documento = txtDocumento.Text;
        objUsuarioE.Nombre = txtNombre.Text;
        objUsuarioE.Apellido = txtApellido.Text;
        objUsuarioE.Telefono = txtTelefono.Text;
        objUsuarioE.Email = txtEmail.Text;
        objUsuarioE.Ciudad = txtCiudad.Text;
        objUsuarioE.Direccion = txtDireccion.Text;

        clUsuario objUsuario = new clUsuario();
        int resultsql = objUsuario.mtdActualizarUsuarioPerfil(objUsuarioE);

        if (resultsql > 0)
        {
            //enviar mensaje 
            Response.Write("<script>alert('Sus datos se actualizaron correctamente!.');window.location.href='Perfil.aspx'</script>");
        }
    }
}