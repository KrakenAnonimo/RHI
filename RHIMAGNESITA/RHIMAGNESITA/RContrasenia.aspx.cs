using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RContrasenia : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAtras_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }

    protected void btnEnviarClave_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        using (SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\dbSwafay-RIH.mdf;Integrated Security=True"))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT Email, Clave FROM Usuario Where Email= '" + txtRCorreo.Text.Trim() + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            con.Close();
        }
        if (ds.Tables[0].Rows.Count > 0)
        {
            MailMessage Msg = new MailMessage();
            // Sender e-mail address.
            Msg.From = new MailAddress(txtRCorreo.Text);
            // Recipient e-mail address.
            Msg.To.Add(txtRCorreo.Text);
            Msg.Subject = "Recuperacion de contraseña";
            Msg.Body = "Hola!, <br/>Porfavor recuerda tu contraseña!<br/><br/> Correo: " + ds.Tables[0].Rows[0]["Email"] + "<br/><br/>Contraseña: " + ds.Tables[0].Rows[0]["Clave"] + "<br/><br/>";
            Msg.IsBodyHtml = true;
            // your remote SMTP server IP.
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("rhimagnesita00@gmail.com", "3053208890");
            smtp.EnableSsl = true;
            smtp.Send(Msg);
            // Clear the textbox valuess
            txtRCorreo.Text = "";
        }
        //enviar mensaje 
        Response.Write("<script>alert('El correo de recuperacion de contraseña fue enviado, revisa tu bandeja de entrada.');window.location.href='Login.aspx'</script>");
    }
}