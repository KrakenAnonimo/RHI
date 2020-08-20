using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        // Consultar en la BD por medio del sqlDatasource
        // Pasar datos del sqldataSource al dataTable

        DataTable tblDatos = new DataTable();
        tblDatos = ((DataView)SqldsLogin.Select(DataSourceSelectArguments.Empty)).Table;

        if (tblDatos.Rows.Count > 0)
        {
            Session["Correo"] = txtCorreoL.Text;
            Session["Clave"] = txtPasswordL.Text;

            Session["usuario"] = tblDatos.Rows[0][1].ToString();
            Session["rol"] = tblDatos.Rows[0][2].ToString();
            Response.Redirect("~/Perfil.aspx");
        }
        else
        {
            // Si no existe mostrar un alert de informcionaz
            txtCorreoL.Text = "";
            txtPasswordL.Text = "";
            Response.Write("<script>alert('Los datos no son los correctos');</script>");
            Response.Redirect("~/Login.aspx");
        }
    }

    protected void btnRegistrar_Click(object sender, EventArgs e)
    {
        clRegistroUE objLoginE = new clRegistroUE();
        objLoginE.Documento = int.Parse(txtDocumentoR.Text);
        objLoginE.Nombre = txtNombreR.Text;
        objLoginE.Email = txtCorreoR.Text;
        objLoginE.Telefono = txtTelefonoR.Text;
        objLoginE.Clave = txtPasswordR.Text;

        clRegistroU objLogin = new clRegistroU();
        int resultsql = objLogin.mtdRegistrarUsuarioLogin(objLoginE);

        if (resultsql > 0)
        {
           

            clCorreo objCorreo = new clCorreo( txtCorreoR.Text ,"Registro Correcto!","Registro Exitoso!");
            if(objCorreo.Estado){
                Response.Write("El correo se envio correctamente...");
            }
            else
            {
                Response.Write("Erro al enviar <br>" + objCorreo.Mensaje_error);
            }

            //enviar mensaje 
            Response.Write("<script>alert('Se Registro Correctamente')</script>");
            Response.Redirect("~/Login.aspx");
        }
    }
}