using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VerDatOP : System.Web.UI.Page
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
        tblDatos = ((DataView)SqldsOrdenMttoP.Select(DataSourceSelectArguments.Empty)).Table;

        lblIdOP.Text = Session["idOrdenMttoP"].ToString();
        lblNumero.Text = tblDatos.Rows[0][1].ToString();
        txtDisciplinaP.Text = tblDatos.Rows[0][2].ToString();
        txtFechaIP.Text = tblDatos.Rows[0][3].ToString();
        txtHoraIP.Text = tblDatos.Rows[0][4].ToString();
        txtFechaFP.Text = tblDatos.Rows[0][5].ToString();
        txtHoraFP.Text = tblDatos.Rows[0][6].ToString();
        cmbEjecutadoP.Text = tblDatos.Rows[0][7].ToString();
        cmbTIXEP.Text = tblDatos.Rows[0][8].ToString();
        txtObservacionesP.Text = tblDatos.Rows[0][9].ToString();
        cmbRevisadoP.Text = tblDatos.Rows[0][10].ToString();
        lblIdP.Text = tblDatos.Rows[0][11].ToString();
        lblidRAVS.Text = tblDatos.Rows[0][12].ToString();
        lblIdU.Text = tblDatos.Rows[0][13].ToString();
    }
    protected void imgbtnAtras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/ListaOP.aspx");
    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        clOrdenMttoPE objOrdenMttoPE = new clOrdenMttoPE();
        objOrdenMttoPE.IdOrdenMttoP = int.Parse(lblIdOP.Text);
        objOrdenMttoPE.Disciplina = txtDisciplinaP.Text;
        objOrdenMttoPE.FechaInicio = txtFechaIP.Text;
        objOrdenMttoPE.HoraInicio = txtHoraIP.Text;
        objOrdenMttoPE.FechaFinal = txtFechaFP.Text;
        objOrdenMttoPE.HoraFinal = txtHoraFP.Text;
        objOrdenMttoPE.Ejecutado = cmbEjecutadoP.Text;
        objOrdenMttoPE.TrabajoIE = cmbTIXEP.Text;
        objOrdenMttoPE.Observaciones = txtObservacionesP.Text;
        objOrdenMttoPE.Revisado = cmbRevisadoP.Text;


        clOrdenMttoP objOrdenMttoP = new clOrdenMttoP();
        int resultsql = objOrdenMttoP.mtdActualizarOrdenMttoP(objOrdenMttoPE);

        if (resultsql > 0)
        {
            //enviar mensaje 
            Response.Write("<script>alert('Datos actualizados de la Orden de Mtto Preventiva!.');window.location.href='ListaOP.aspx'</script>");
        }
    }
}
