using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VerDatEM : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_Init(object sender, EventArgs e)
    {
        DataTable tblDatos = new DataTable();
        tblDatos = ((DataView)SqldsEjecucionM.Select(DataSourceSelectArguments.Empty)).Table;

        lblIdEM.Text = Session["idEjecucionM"].ToString();
        cmbEstadoEM.Text = tblDatos.Rows[0][1].ToString();
        txtFechaEM.Text = tblDatos.Rows[0][2].ToString();
        txtDuracion.Text = tblDatos.Rows[0][3].ToString();
        txtObservaciones.Text = tblDatos.Rows[0][4].ToString();
        lblIdTM.Text = tblDatos.Rows[0][5].ToString();
        lblIdOP.Text = tblDatos.Rows[0][6].ToString();
    }
    protected void imgbtnAtras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/ListaEM.aspx");
    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        clEjecucionME objEjcuacionEM = new clEjecucionME();
        objEjcuacionEM.IdEjecucionM = int.Parse(lblIdEM.Text);
        objEjcuacionEM.Estado =  cmbEstadoEM.Text;
        objEjcuacionEM.FechaEjecucion = txtFechaEM.Text;
        objEjcuacionEM.Duracion = txtDuracion.Text;
        objEjcuacionEM.Observaciones = txtObservaciones.Text;

        clEjecucionM objEjecucionM = new clEjecucionM();
        int resultsql = objEjecucionM.mtdActualizarEjecucionM(objEjcuacionEM);

        if (resultsql > 0)
        {
            //enviar mensaje 
            Response.Write("<script>alert('Datos actualizados de la Ejecucion de Mantenimiento!.');window.location.href='ListaEM.aspx'</script>");
        }
    }
}