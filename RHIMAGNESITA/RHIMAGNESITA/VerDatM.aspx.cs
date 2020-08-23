using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VerDatM : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_Init(object sender, EventArgs e)
    {
        DataTable tblDatos = new DataTable();
        tblDatos = ((DataView)SqldsMaterial.Select(DataSourceSelectArguments.Empty)).Table;

        lblIdM.Text = Session["idMaterial"].ToString();
        lblCodigo.Text = tblDatos.Rows[0][1].ToString();
        txtNombreM.Text = tblDatos.Rows[0][2].ToString();
        txtDescripcionM.Text = tblDatos.Rows[0][3].ToString();
        txtUnidadM.Text = tblDatos.Rows[0][4].ToString();
    }
    protected void imgbtnAtras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/ListaM.aspx");
    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        clMaterialE objMaterialM = new clMaterialE();
        objMaterialM.IdMaterial = int.Parse(lblIdM.Text);
        objMaterialM.Nombre = txtNombreM.Text;
        objMaterialM.Descripcion = txtDescripcionM.Text;
        objMaterialM.Unidad = txtUnidadM.Text;


        clMaterial objMaterial = new clMaterial();
        int resultsql = objMaterial.mtdActualizarMaterial(objMaterialM);

        if (resultsql > 0)
        {
            //enviar mensaje 
            Response.Write("<script>alert('Datos actualizados del Material!.');window.location.href='ListaM.aspx'</script>");
        }
    }
}