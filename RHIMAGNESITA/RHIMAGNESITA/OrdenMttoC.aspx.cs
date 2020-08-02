﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OrdenMttoC : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_Init(object sender, EventArgs e)
    {
        //Listados del combo
        List<clOrdenMttoPE> ListaOrdenMttoP = new List<clOrdenMttoPE>();

        //Clase con su metodo
        clOrdenMttoPL objOrdenMttoPL = new clOrdenMttoPL();
        ListaOrdenMttoP = objOrdenMttoPL.mtdListarOrdenMttoP();

        //Carga de combo con sus datos
        cmbOrdenMttoP.DataSource = ListaOrdenMttoP;
        cmbOrdenMttoP.DataTextField = "NumOrden";
        cmbOrdenMttoP.DataValueField = "IdOrdenMttoC";
        cmbOrdenMttoP.DataBind();
    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        clOrdenMttoCE objOrdenMttoCE = new clOrdenMttoCE();
        objOrdenMttoCE.NumOrden = txtNumOrdenC.Text;
        objOrdenMttoCE.Disciplina = txtDisciplina.Text;
        objOrdenMttoCE.FechaInicio = txtFechaOI.Text;
        objOrdenMttoCE.HoraInicio = txtHoraI.Text;
        objOrdenMttoCE.FechaFinal = txtFechaOF.Text;
        objOrdenMttoCE.HoraFinal = txtHoraF.Text;
        objOrdenMttoCE.Ejecutado = cmbEjecucionOr.SelectedValue.ToString();
        objOrdenMttoCE.TrabajoIE = cmbTrabajoIE.SelectedValue.ToString();
        objOrdenMttoCE.Observaciones = txtObservaciones.Text;
        objOrdenMttoCE.Revisado = cmbRevision.SelectedValue.ToString();

        // Guardar Usuarios
        // Ciclo por cada registro de usuarios en la orden
        for (int i = 0; i < gvListaElegidos.Rows.Count; i++)
        {
            //Campos R
            int IdUsuario = int.Parse(gvListaElegidos.Rows[i].Cells[0].Text);

            //Campos NR
            int Documento = int.Parse(gvListaElegidos.Rows[i].Cells[1].Text);
            string Nombre = gvListaElegidos.Rows[i].Cells[2].Text;

            string sqlInsertUO = "INSERT INTO OrdenMttoCorrectivo (IdUsuario)" +
                "VALUES('" + IdUsuario + "')";
            SqlDataSource1.InsertCommand = sqlInsertUO;
            int result = SqlDataSource1.Insert();
        }

        clOrdenMttoC objOrdenMttoC = new clOrdenMttoC();
        int resultsql = objOrdenMttoC.mtdRegistrarOrdenMttoC(objOrdenMttoCE);

        if (resultsql > 0)
        {
            //enviar mensaje
            Response.Write("<script>alert('Se Registro Correctamente la Orden de Mtto Correctivo')</script>");

            //Limpiar Campos de texto
            txtNumOrdenC.Text = "";
            txtDisciplina.Text = "";
            txtFechaOI.Text = "";
            txtHoraI.Text = "";
            txtFechaOF.Text = "";
            txtHoraF.Text = "";
            txtObservaciones.Text = "";
        }
    }

    protected void btnLimpiar_Click(object sender, EventArgs e)
    {
        //Limpiar Campos de texto
        txtNumOrdenC.Text = "";
        txtDisciplina.Text = "";
        txtFechaOI.Text = "";
        txtHoraI.Text = "";
        txtFechaOF.Text = "";
        txtHoraF.Text = "";
        txtObservaciones.Text = "";
    }

    //radio butons filtrados a roles



    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int idRol = int.Parse(RadioButtonList1.SelectedValue.ToString());
        string consulta = "select * from Usuario where IdRol=" + idRol;
        SqlDataSource2.SelectCommand = consulta;
        gvUsuarios.DataSourceID = "SqlDataSource2";
        gvUsuarios.DataBind();
    }
    int fila = 0;

    static List<clUsuario> lista = new List<clUsuario>();

    protected void gvUsuarios_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblUsuario.Text = gvUsuarios.SelectedRow.Cells[1].Text + " " + gvUsuarios.SelectedRow.Cells[2].Text;
        fila = gvUsuarios.SelectedRow.RowIndex;

        //clase usuario
        clUsuario objUsuario = new clUsuario();

        objUsuario.IdUsuario = int.Parse(gvUsuarios.DataKeys[fila].Value.ToString());
        objUsuario.Documento = gvUsuarios.SelectedRow.Cells[1].Text;
        objUsuario.Nombre = gvUsuarios.SelectedRow.Cells[2].Text;

        lista.Add(objUsuario);
        gvListaElegidos.DataSource = lista;
        gvListaElegidos.DataBind();
    }
}
public class clUsuario
{
    //Atributos Tabla Usuarios
    public int IdUsuario { get; set; }
    public string Documento { get; set; }
    public string Nombre { get; set; }
}
