using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class REjecucionM : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["rol"].ToString() != "Tecnico" && Session["rol"].ToString() != "Soldador")
        {
            Response.Redirect("~/ErrorTS.aspx");
        }
    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        clEjecucionME objEjcuacionEM = new clEjecucionME();
        objEjcuacionEM.Estado = cmbEstado.Text;
        objEjcuacionEM.Observaciones = txtObservaciones.Text;

        clEjecucionM objEjecucionM = new clEjecucionM();
        int resultsql = objEjecucionM.mtdActualizarEjecucionM2(objEjcuacionEM);

        if (resultsql > 0)
        {
            //enviar mensaje 
            Response.Write("<script>alert('Datos actualizados de la Ejecucion de Mantenimiento!.');window.location.href='ListaEM.aspx'</script>");

        }
    }
}