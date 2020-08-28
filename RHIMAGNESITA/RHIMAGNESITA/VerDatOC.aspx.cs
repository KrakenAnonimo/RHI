using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VerDatOC : System.Web.UI.Page
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
        tblDatos = ((DataView)SqldsOrdenMttoC.Select(DataSourceSelectArguments.Empty)).Table;

        lblIdOC.Text = Session["idOrdenMttoC"].ToString();
        lblNumeroOP.Text = tblDatos.Rows[0][1].ToString();
        txtDisciplina.Text = tblDatos.Rows[0][2].ToString();
        txtFechaI.Text = tblDatos.Rows[0][3].ToString();
        txtHoraI.Text = tblDatos.Rows[0][4].ToString();
        txtFechaF.Text = tblDatos.Rows[0][5].ToString();
        txtHoraF.Text = tblDatos.Rows[0][6].ToString();
        cmbEjecutado.Text = tblDatos.Rows[0][7].ToString();
        cmbTIXE.Text = tblDatos.Rows[0][8].ToString();
        txtObservaciones.Text = tblDatos.Rows[0][9].ToString();
        cmbRevisado.Text = tblDatos.Rows[0][10].ToString();
        lblIdOP.Text = tblDatos.Rows[0][11].ToString();
        lblIdU.Text = tblDatos.Rows[0][12].ToString();
    }
    protected void imgbtnAtras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/ListaOC.aspx");
    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        clOrdenMttoCE objOrdenMttoE = new clOrdenMttoCE();
        objOrdenMttoE.IdOrdenMttoC = int.Parse(lblIdOC.Text);
        objOrdenMttoE.Disciplina = txtDisciplina.Text;
        objOrdenMttoE.FechaInicio = txtFechaI.Text;
        objOrdenMttoE.HoraInicio = txtHoraI.Text;
        objOrdenMttoE.FechaFinal = txtFechaF.Text;
        objOrdenMttoE.HoraFinal = txtHoraF.Text;
        objOrdenMttoE.Ejecutado = cmbEjecutado.Text;
        objOrdenMttoE.TrabajoIE = cmbTIXE.Text;
        objOrdenMttoE.Observaciones = txtObservaciones.Text;
        objOrdenMttoE.Revisado = cmbRevisado.Text;
       

        clOrdenMttoC objOrdenMtto = new clOrdenMttoC();
        int resultsql = objOrdenMtto.mtdActualizarOrdenMttoC(objOrdenMttoE);

        if (resultsql > 0)
        {
            //enviar mensaje 
            Response.Write("<script>alert('Datos actualizados de la Orden de Mtto Correctiva!.');window.location.href='ListaOC.aspx'</script>");
        }
    }
}