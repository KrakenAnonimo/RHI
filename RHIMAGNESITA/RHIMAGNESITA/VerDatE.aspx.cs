using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VerDatE : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_Init(object sender, EventArgs e)
    {
        DataTable tblDatos = new DataTable();
        tblDatos = ((DataView)SqldsElemento.Select(DataSourceSelectArguments.Empty)).Table;

        lblIdE.Text = Session["idElemento"].ToString();
        lblCodigo.Text = tblDatos.Rows[0][1].ToString();
        txtNombreE.Text = tblDatos.Rows[0][2].ToString();
        txtDescripcion.Text = tblDatos.Rows[0][3].ToString();
        cmbEstado.Text = tblDatos.Rows[0][4].ToString();
        lblIdA.Text = tblDatos.Rows[0][5].ToString();
    }
    protected void imgbtnAtras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/ListaE.aspx");
    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        clElementoE objElementoE = new clElementoE();
        objElementoE.IdElemento = int.Parse(lblIdE.Text);
        objElementoE.Nombre = txtNombreE.Text;
        objElementoE.Descripcion = txtDescripcion.Text;
        objElementoE.Estado = cmbEstado.Text;

        clElemento objElemento = new clElemento();
        int resultsql = objElemento.mtdActualizarElemento(objElementoE);

        if (resultsql > 0)
        {
            //enviar mensaje 
            Response.Write("<script>alert('Datos actualizados del Elemento!.');window.location.href='ListaE.aspx'</script>");
        }
    }
}