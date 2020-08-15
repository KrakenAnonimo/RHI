﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ListaOC : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void imgbtnAtras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/ListasGenerales.aspx");
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int numFila = GridView1.SelectedRow.RowIndex;
        Session["idOrdenMttoC"] = GridView1.DataKeys[numFila].Value;
        Response.Redirect("~/VerDatOC.aspx");
    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Busqueda por ejecucion en la consulta
        SqlDataSource1.SelectCommand = SqlDataSource1.SelectCommand = "SELECT OrdenMttoCorrectivo.* FROM OrdenMttoCorrectivo WHERE OrdenMttoCorrectivo.Ejecutado Like '%" + RadioButtonList1.Text + "%'";
        SqlDataSource1.DataBind();
    }
}