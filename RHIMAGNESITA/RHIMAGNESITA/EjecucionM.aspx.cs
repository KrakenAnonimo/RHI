using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EjecucionM :  System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Page_Init(object sender, EventArgs e)
    {
        
    }
    int fila = 0;
    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        clEjecucionME objEjecucionME = new clEjecucionME();
        objEjecucionME.Estado = cmbEstado.Text;
        objEjecucionME.FechaEjecucion = txtFechaEj.Text;
        objEjecucionME.Duracion = txtDuracion.Text;
        objEjecucionME.Observaciones = txtObservaciones.Text;
        objEjecucionME.IdTareaMtto = int.Parse(gvTareaMtto.DataKeys[fila].Value.ToString());
        objEjecucionME.IdOrdenMttoP = int.Parse(gvOrdenMP.DataKeys[fila].Value.ToString());

        clEjecucionM objEjecucionM = new clEjecucionM();
        int resultsql = objEjecucionM.mtdRegistrarEjecucionM(objEjecucionME);

        if (resultsql > 0)
        {
            //enviar mensaje 
            //Limpiar Campos de texto
            Response.Write("<script>alert('Se Registro Correctamente')</script>");
            txtFechaEj.Text = "";
            txtDuracion.Text = "";
            txtObservaciones.Text = "";
            Response.Redirect("~/EjecucionM.aspx");
        }

    }
}