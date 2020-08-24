using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VerDatTM : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_Init(object sender, EventArgs e)
    {
        DataTable tblDatos = new DataTable();
        tblDatos = ((DataView)SqldsTareaM.Select(DataSourceSelectArguments.Empty)).Table;

        lblIdTM.Text = Session["idTareaMtto"].ToString();
        txtNombreTM.Text = tblDatos.Rows[0][1].ToString();
        txtDuracionTM.Text = tblDatos.Rows[0][2].ToString();
        txtDescripcion.Text = tblDatos.Rows[0][3].ToString();
        lblIdE.Text = tblDatos.Rows[0][4].ToString();
    }
    protected void imgbtnAtras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/ListaTM.aspx");
    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        clTareaMttoE objTareaMttoE = new clTareaMttoE();
        objTareaMttoE.IdTareaMtto = int.Parse(lblIdTM.Text);
        objTareaMttoE.NombreTM = txtNombreTM.Text;
        objTareaMttoE.Duracion = txtDuracionTM.Text;
        objTareaMttoE.Descripcion = txtDescripcion.Text;


        clTareaMtto objTareaMtto = new clTareaMtto();
        int resultsql = objTareaMtto.mtdActualizarTareaMtto(objTareaMttoE);

        if (resultsql > 0)
        {
            //enviar mensaje 
            Response.Write("<script>alert('Datos Actualizados de Tarea de Mantenimiento!.');window.location.href='ListaTM.aspx'</script>");
        }
    }
}