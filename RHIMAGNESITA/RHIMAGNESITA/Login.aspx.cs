﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using SimpleCrypto;

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
            //Sesiones funcionales
            Session["Correo"] = txtCorreoL.Text;
            Session["Clave"] = txtPasswordL.Text;

            //Sesiones no funcionales
            int cantidad = tblDatos.Rows.Count;
            

            Session["usuario"] = tblDatos.Rows[0][1].ToString();
            Session["rol"] = tblDatos.Rows[0][0].ToString();

            string usuario = Session["usuario"].ToString();
            string rol = Session["rol"].ToString();
            //Redireccionamiento de pagina
            Response.Redirect("~/Perfil.aspx");
        }
        else
        {
            // Si no existe mostrar un alert de informacion
            txtCorreoL.Text = "";
            txtPasswordL.Text = "";

            Response.Write("<script>alert('Datos incorrectos');window.location.href='Login.aspx'</script>");

        }
    }

    protected void btnRegistrar_Click(object sender, EventArgs e)
    {
        ICryptoService cryptoService = new PBKDF2();

        //Algoritmo de encriptacion
        string salt = cryptoService.GenerateSalt();

        string contraseniaencriptada = cryptoService.Compute(txtPasswordR.Text);
        //fin del algoritmo
        //Clase RegistroUE con objetos
        clRegistroUE objLoginE = new clRegistroUE();
        objLoginE.Documento = int.Parse(txtDocumentoR.Text);
        objLoginE.Nombre = txtNombreR.Text;
        objLoginE.Email = txtCorreoR.Text;
        objLoginE.Telefono = txtTelefonoR.Text;
        objLoginE.Clave = txtPasswordR.Text; //Debe tomar el txt a su vez.

        //Metodo
        clRegistroU objLogin = new clRegistroU();
        int resultsql = objLogin.mtdRegistrarUsuarioLogin(objLoginE);

        if (resultsql > 0)
        {
            //Envio de correo
            clCorreo objCorreo = new clCorreo(txtCorreoR.Text, "Registro Correcto!", "Registro Exitoso!");
            if (objCorreo.Estado)
            {
                Response.Write("<script>alert('Registro Exitoso!');window.location.href='Login.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('Error al registrar datos');window.location.href='Login.aspx'</script>");
                Response.Write("Erro al enviar <br>" + objCorreo.Mensaje_error);
            }

            //enviar mensaje 
            Response.Write("<script>alert('Registro Completado! :D');window.location.href='Login.aspx'</script>");
        }
    }
}