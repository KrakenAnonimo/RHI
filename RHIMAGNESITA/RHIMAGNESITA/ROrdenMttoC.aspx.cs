using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ROrdenMttoC : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*if (Session["rol"].ToString() != "Tecnico" && Session["rol"].ToString() != "Soldador")
        {
            Response.Redirect("~/ErrorTS.aspx");
        }*/
    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        clOrdenMttoCE objOrdenMttoE = new clOrdenMttoCE();

        objOrdenMttoE.Ejecutado = cmbEjecucionOr.Text;
        objOrdenMttoE.Observaciones = txtObservaciones.Text;
      

        clOrdenMttoC objOrdenMtto = new clOrdenMttoC();
        int resultsql = objOrdenMtto.mtdActualizarOrdenMttoC2(objOrdenMttoE);

        if (resultsql > 0)
        {
            //enviar mensaje 
            Response.Write("<script>alert('Datos actualizados de la Orden de Mtto Correctiva!.');window.location.href='ListaOC.aspx'</script>");
        }
    }
}