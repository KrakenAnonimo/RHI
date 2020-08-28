﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VerDatRAVS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["rol"].ToString() != "Admin" && Session["rol"].ToString() != "Supervisor" && Session["rol"].ToString() != "Planificador")
        {
            Response.Redirect("~/ErrorASP.aspx");
        }
    }
    protected void Page_Init(object sender, EventArgs e)
    {
        DataTable tblDatos = new DataTable();
        tblDatos = ((DataView)SqldsRAVS.Select(DataSourceSelectArguments.Empty)).Table;

        lblIdR.Text = Session["idReporteAVS"].ToString();
        lblNumeroR.Text = tblDatos.Rows[0][1].ToString();
        txtTitulo.Text = tblDatos.Rows[0][2].ToString();
        txtDescripcion.Text = tblDatos.Rows[0][3].ToString();
        txtFechaReporte.Text = tblDatos.Rows[0][4].ToString();
        lblIdE.Text = tblDatos.Rows[0][5].ToString();
        lblIdU.Text = tblDatos.Rows[0][6].ToString();
    }
    protected void imgbtnAtras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/ListaRAVS.aspx");
    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        clReporteAveriaServicioE objclReporteAveriaServicioE = new clReporteAveriaServicioE();
        objclReporteAveriaServicioE.IdReporteAS = int.Parse(lblIdR.Text);
        objclReporteAveriaServicioE.Titulo = txtTitulo.Text;
        objclReporteAveriaServicioE.Descripcion = txtDescripcion.Text;
        objclReporteAveriaServicioE.FechaReporte = txtFechaReporte.Text;
      

        clReporteAveriaServicio objEjecucionM = new clReporteAveriaServicio();
        int resultsql = objEjecucionM.mtdActualizarReporteAS(objclReporteAveriaServicioE);

        if (resultsql > 0)
        {
            //enviar mensaje 
            Response.Write("<script>alert('Datos Actualizados de Reporte de Averia o Servicio!.');window.location.href='ListaRAVS.aspx'</script>");
        }
    }
}