﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Area :  System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["rol"].ToString() != "Admin" && Session["rol"].ToString() != "Supervisor" && Session["rol"].ToString() != "Planificador")
        {
            Response.Redirect("~/ErrorASP.aspx");
        }
    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        clAreaE objAreaE = new clAreaE();
        objAreaE.Nombre = txtNombreA.Text;
        objAreaE.Ubicacion = txtUbicacion.Text;

        clArea objArea = new clArea();
        int resultsql = objArea.mtdRegistrarArea(objAreaE);

        if(resultsql > 0)
        {
            //enviar mensaje
            Response.Write("<script>alert('Se registro una nueva Area correctamente!');window.location.href='Area.aspx'</script>");
            //Limpiar Campos de texto
            txtNombreA.Text = "";
            txtUbicacion.Text = "";
        }
    }

    protected void btnLimpiar_Click(object sender, EventArgs e)
    {
        txtNombreA.Text = "";
        txtUbicacion.Text = "";
    }
}