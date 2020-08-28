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
        if (Session["rol"].ToString() != "Admin" && Session["rol"].ToString() != "Supervisor" && Session["rol"].ToString() != "Planificador")
        {
            Response.Redirect("~/ErrorASP.aspx");
        }

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
            Response.Write("<script>alert('Se registro una nueva Ejecucion de Mantenimiento correctamente!');window.location.href='EjecucionM.aspx'</script>");
            //Limpiar Campos de texto
            txtFechaEj.Text = "";
            txtDuracion.Text = "";
            txtObservaciones.Text = "";
        }

    }
}