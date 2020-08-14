﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VerDatP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable tblDatos = new DataTable();
        tblDatos = ((DataView)SqldsPlanificacion.Select(DataSourceSelectArguments.Empty)).Table;

        lblIdP.Text = Session["idPlanificacion"].ToString();
        txtFechaP.Text = tblDatos.Rows[0][1].ToString();
        lblObservaciones.Text = tblDatos.Rows[0][2].ToString();
        lblEstado.Text = tblDatos.Rows[0][3].ToString();
        lblIdE.Text = tblDatos.Rows[0][4].ToString();
    }


    protected void imgbtnAtras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/ListaP.aspx");
    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        SqldsUpdateP.Update();
        Response.Redirect("~/ListaP.aspx");
    }

    protected void btnEliminar_Click(object sender, EventArgs e)
    {
        
        Response.Redirect("~/ListaP.aspx");
    }
}