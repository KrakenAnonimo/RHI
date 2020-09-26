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
        
    }
    protected void Page_Init(object sender, EventArgs e)
    {
        DataTable tblDatos = new DataTable();
        tblDatos = ((DataView)SqldsDatos.Select(DataSourceSelectArguments.Empty)).Table;

        lblidU.Text = tblDatos.Rows[0][2].ToString();
        lblDocumento.Text = tblDatos.Rows[0][3].ToString();
        lblNombre.Text = tblDatos.Rows[0][4].ToString();
        lblApellido.Text = tblDatos.Rows[0][5].ToString();
        lblTelefono.Text = tblDatos.Rows[0][6].ToString();
        lblClave.Text = tblDatos.Rows[0][8].ToString();
        lblEmail.Text = tblDatos.Rows[0][7].ToString();
        lblRol.Text = tblDatos.Rows[0][11].ToString();
        lblCiudad.Text = tblDatos.Rows[0][9].ToString();
        lblDireccion.Text = tblDatos.Rows[0][10].ToString();
        
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
}