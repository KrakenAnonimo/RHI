using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;

/// <summary>
/// Descripción breve de clCorreo
/// </summary>
public class clCorreo
{
    Boolean estado = true;
    String merror;
    public clCorreo(string destinatario, string asunto, string mensaje)
    {
        string body ="Bienvenido a RHI-Magneista!   " +
               "Querido Usuario, " +
               "Se registro correctamente en la plataforma!. ";

        MailMessage mail = new MailMessage();
        SmtpClient protocolo = new SmtpClient();

        mail.To.Add(destinatario);
        mail.From = new MailAddress("rhimagnesita00@gmail.com", "RHI-Magnesita", System.Text.Encoding.UTF8);
        mail.Subject = asunto;
        mail.SubjectEncoding = System.Text.Encoding.UTF8;
        mail.Body = body;
        mail.BodyEncoding = System.Text.Encoding.UTF8;
        mail.IsBodyHtml = false;

        protocolo.Credentials = new System.Net.NetworkCredential("rhimagnesita00@gmail.com", "3053208890");
        protocolo.Port = 587;
        protocolo.Host = "smtp.gmail.com";
        protocolo.EnableSsl = true;

        try
        {
            protocolo.Send(mail);
        }catch(SmtpException error)
        {
            estado = false;
            merror = error.Message.ToString();
        }
    }
    public Boolean Estado
    {
        get { return estado; }
    }
    public string Mensaje_error
    {
        get { return merror; }
    }

}