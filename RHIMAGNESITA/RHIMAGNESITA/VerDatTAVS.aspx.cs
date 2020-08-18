using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VerDatTAVS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_Init(object sender, EventArgs e)
    {
        DataTable tblDatos = new DataTable();
        tblDatos = ((DataView)SqldsTAVS.Select(DataSourceSelectArguments.Empty)).Table;

        lblIdTAVS.Text = Session["idTareaAVS"].ToString();
        txtNombreTAVS.Text = tblDatos.Rows[0][1].ToString();
        txtDuracionTAVS.Text = tblDatos.Rows[0][2].ToString();
        txtFechaTAVS.Text = tblDatos.Rows[0][3].ToString();
        lblIdOC.Text = tblDatos.Rows[0][4].ToString();
        lblIdOP.Text = tblDatos.Rows[0][5].ToString();
    }
    protected void imgbtnAtras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/ListaTAVS.aspx");
    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        clTareaAveriaServicioE objTareaAveriaServicioE = new clTareaAveriaServicioE();
        objTareaAveriaServicioE.IdTareaAS = int.Parse(lblIdTAVS.Text);
        objTareaAveriaServicioE.NombreAS = txtNombreTAVS.Text;
        objTareaAveriaServicioE.Duracion = txtDuracionTAVS.Text;
        objTareaAveriaServicioE.FechaEjecucion = txtFechaTAVS.Text;


        clTareaAveriaServicio objTareaMtto = new clTareaAveriaServicio();
        int resultsql = objTareaMtto.mtdActualizarTareaAS(objTareaAveriaServicioE);

        if (resultsql > 0)
        {
            //enviar mensaje 
            Response.Write("<script>alert('Se Actualizo Correctamente')</script>");
            //Redireccionar
            Response.Redirect("~/ListaTAVS.aspx");
        }
    }
}