using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TareaAveriaServicio : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Page_Init(object sender, EventArgs e)
    {
        //Lista del OrdenMttoP
        List<clOrdenMttoPE> listaOrdenMttoP = new List<clOrdenMttoPE>();

        //Lista del OrdenMttoC
        List<clOrdenMttoCE> listaOrdenMttoC = new List<clOrdenMttoCE>();

        //Clase OrdenMttoP junto con el metodo listar
        clOrdenMttoPL objOrdenMttoPL = new clOrdenMttoPL();
        listaOrdenMttoP = objOrdenMttoPL.mtdListarOrdenMttoP();

        //Clase OrdenMttoC junto con el metodo listar
        clOrdenMttoCL objOrdenMttoCL = new clOrdenMttoCL();
        listaOrdenMttoC = objOrdenMttoCL.mtdListarOrdenMttoC();

        //Carga de combo con datos OrdenMttoP
        cmbOrdenMttoPreventivo.DataSource = listaOrdenMttoP;
        cmbOrdenMttoPreventivo.DataTextField = "NumOrden";
        cmbOrdenMttoPreventivo.DataValueField = "IdOrdenMttoP";
        cmbOrdenMttoPreventivo.DataBind();

        //Carga de combo con datos OrdenMttoC
        cmbOrdenMttoCorrectivo.DataSource = listaOrdenMttoC;
        cmbOrdenMttoCorrectivo.DataTextField = "NumOrden";
        cmbOrdenMttoCorrectivo.DataValueField = "IdOrdenMttoC";
        cmbOrdenMttoCorrectivo.DataBind();
    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        clTareaAveriaServicioE obTareaASE = new clTareaAveriaServicioE();
        obTareaASE.NombreAS = txtNombreAV.Text;
        obTareaASE.Duracion = txtDuracion.Text;
        obTareaASE.FechaEjecucion = txtFechaP.Text;
        obTareaASE.IdOrdenMttoP = int.Parse(cmbOrdenMttoPreventivo.SelectedValue.ToString());
        obTareaASE.IdOrdenMttoC = int.Parse(cmbOrdenMttoCorrectivo.SelectedValue.ToString());

        clTareaAveriaServicio obTareaAS = new clTareaAveriaServicio();
        int resultsql = obTareaAS.mtdRegistrarTareaAS(obTareaASE);

        if (resultsql > 0)
        {
            //enviar mensaje 
            //Limpiar Campos de texto
            Response.Write("<script>alert('Se Registro Correctamente')</script>");
            txtNombreAV.Text = "";
            txtDuracion.Text = "";
            txtFechaP.Text = "";
            Response.Redirect("~/TareaAveriaServicio.aspx");
        }
    }
}