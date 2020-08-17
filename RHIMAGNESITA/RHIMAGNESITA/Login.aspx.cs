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
    protected void btnIngresar_Click(object sender, EventArgs e)
    {
        // Consultar en la BD por medio del sqlDatasource
        // Pasar datos del sqldataSource al dataTable

        DataTable tblDatos = new DataTable();
        tblDatos = ((DataView)SqldsLogin.Select(DataSourceSelectArguments.Empty)).Table;

        if (tblDatos.Rows.Count > 0)
        {
            Session["usuario"] = tblDatos.Rows[0][0].ToString();
            Session["rol"] = tblDatos.Rows[0][1].ToString();
            Response.Redirect("~/Inicio1.aspx");
        }
        else
        {
            // Si no existe mostrar un alert de informcionaz
            txtEmailLog.Text = "";
            txtPasswordLog.Text = "";
            Response.Write("<script>alert('Los datos no son los correctos');</script>");
            Response.Redirect("~/Login.aspx");
        }
    }
    protected void btnRegistrar_Click(object sender, EventArgs e)
    {
        clUsuarioE objLoginE = new clUsuarioE();
        objLoginE.Nombre = txtNombre.Text;
        objLoginE.Email = txtEmail.Text;
        objLoginE.Telefono = txtPhone.Text;
        objLoginE.Clave = txtPassword.Text;

        clUsuario objLogin = new clUsuario();
        int resultsql = objLogin.mtdRegistrarUsuario(objLoginE);

        if (resultsql > 0)
        {
            //enviar mensaje 
            //Limpiar Campos de texto
            Response.Write("<script>alert('Se Registro Correctamente')</script>");
            txtEmail.Text = "";

            //Enviar correo
            string body =
                "<body>" +
                "<h1>Bienvenido a RHI-Magneista!</h1>" +
                "<h4>Querido Usuario,</4>" +
                "<span>Se registro correctamente en la plataforma!</span>" +
                "<span>Felicitaciones.</span>" +
                "<br/><br/>" +
                "</body>";

            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
            smtp.Credentials = new NetworkCredential("rhimagnesita00@gmail.com", "3053208890");
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.EnableSsl = true;
            smtp.UseDefaultCredentials = false;

            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("rhimagnesita00@gmail.com", "Registro Exitoso");
            mail.To.Add(new MailAddress(txtEmail.Text));
            mail.Subject = "Mensaje de Registro";
            mail.Body = body;

            smtp.Send(mail);

            Response.Redirect("~/Login.aspx");
        }
    }
}