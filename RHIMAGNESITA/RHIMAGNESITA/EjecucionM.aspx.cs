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
        //Lista del OrdenMttoP
        List<clOrdenMttoPE> listaOrdenMttoP = new List<clOrdenMttoPE>();
        //Lista del TareaMtto
        List<clTareaMttoE> listaTareaMtto = new List<clTareaMttoE>(); 

         //Clase OrdenMttoP junto con el metodo listar
         clOrdenMttoPL objOrdenMttoPL = new clOrdenMttoPL();
        listaOrdenMttoP = objOrdenMttoPL.mtdListarOrdenMttoP();
        //Clase OrdenMttoC junto con el metodo listar
        clTareaMttoL objTareaMttoL = new clTareaMttoL();
        listaTareaMtto = objTareaMttoL.mtdListarTareaMtto();

        //Carga de combo con datos OrdenMttoP
        cmbOrdenMttoP.DataSource = listaOrdenMttoP;
        cmbOrdenMttoP.DataTextField = "NumOrden";
        cmbOrdenMttoP.DataValueField = "IdOrdenMttoP";
        cmbOrdenMttoP.DataBind();
        //Carga de combo con datos TareaMtto
        cmbTareaMantenimiento.DataSource = listaTareaMtto;
        cmbTareaMantenimiento.DataTextField = "NombreTM";
        cmbTareaMantenimiento.DataValueField = "IdElemento";
        cmbTareaMantenimiento.DataBind();
    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        clEjecucionME objEjecucionME = new clEjecucionME();
        objEjecucionME.Estado = cmbEstado.Text;
        objEjecucionME.FechaEjecucion = txtFechaEj.Text;
        objEjecucionME.Duracion = txtDuracion.Text;
        objEjecucionME.Observaciones = txtObservaciones.Text;
        objEjecucionME.IdTareaMtto = int.Parse(cmbTareaMantenimiento.SelectedValue.ToString());
        objEjecucionME.IdOrdenMttoP = int.Parse(cmbOrdenMttoP.SelectedValue.ToString());

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