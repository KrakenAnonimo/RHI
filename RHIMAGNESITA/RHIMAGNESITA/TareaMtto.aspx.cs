using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TareaMtto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        clTareaMttoE objTareaMttoE = new clTareaMttoE();
        objTareaMttoE.NombreTM = txtNombreTM.Text;
        objTareaMttoE.Duracion = txtDuracion.Text;
        objTareaMttoE.Descripcion = txtDescripcion.Text;

        clTareaMtto objTareaMtto = new clTareaMtto();
        int resultsql = objTareaMtto.mtdRegistrarTareaMtto(objTareaMttoE);

        if (resultsql > 0)
        {
            //enviar mensaje
            Response.Write("<script>alert('Se Registro Correctamente la Orden de Mtto Correctivo')</script>");

            //Limpiar Campos de texto
            txtDescripcion.Text = "";
            txtDuracion.Text = "";
            txtNombreTM.Text = "";
            Response.Redirect("~/TareaMtto.aspx");
        }
    }

    protected void btnLimpiar_Click(object sender, EventArgs e)
    {
        txtNombreTM.Text = "";
        txtDuracion.Text = "";
        txtDescripcion.Text = "";

    }
}