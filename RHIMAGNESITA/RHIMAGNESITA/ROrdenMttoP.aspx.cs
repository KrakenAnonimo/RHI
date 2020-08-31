using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ROrdenMttoP : System.Web.UI.Page
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

        clOrdenMttoPE objOrdenMttoPE = new clOrdenMttoPE();
  
        objOrdenMttoPE.Ejecutado = cmbEjecucionOr.Text;
        objOrdenMttoPE.Observaciones = txtObservaciones.Text;
   

        clOrdenMttoP objOrdenMttoP = new clOrdenMttoP();
        int resultsql = objOrdenMttoP.mtdActualizarOrdenMttoP2(objOrdenMttoPE);

        if (resultsql > 0)
        {
            //enviar mensaje 
            Response.Write("<script>alert('Datos actualizados de la Orden de Mtto Preventiva!.');window.location.href='ListaOP.aspx'</script>");
        }
    }
}