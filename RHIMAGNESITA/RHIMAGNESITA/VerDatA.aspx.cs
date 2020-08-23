using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VerDatA : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_Init(object sender, EventArgs e)
    {
        DataTable tblDatos = new DataTable();
        tblDatos = ((DataView)SqldsArea.Select(DataSourceSelectArguments.Empty)).Table;

        lblIdA.Text = Session["idArea"].ToString();
        txtNombreA.Text = tblDatos.Rows[0][1].ToString();
        txtUbicacion.Text = tblDatos.Rows[0][2].ToString();
    }
    protected void imgbtnAtras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/ListaA.aspx");
    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        clAreaE objAreaE = new clAreaE();
        objAreaE.IdArea = int.Parse(lblIdA.Text);
        objAreaE.Nombre = txtNombreA.Text;
        objAreaE.Ubicacion = txtUbicacion.Text;

        clArea objArea = new clArea();
        int resultsql = objArea.mtdActualizarArea(objAreaE);

        if (resultsql > 0)
        {
            //enviar mensaje 
            Response.Write("<script>alert('Se Actualizo Correctamente')</script>");
            //Redireccionar
            Response.Redirect("~/ListaA.aspx");
        }
    }

    protected void btnEliminar_Click(object sender, EventArgs e)
    {
        clAreaE objAreaE = new clAreaE();
        objAreaE.Nombre = txtNombreA.Text;

        clArea objArea = new clArea();
        int resultsql = objArea.mtdEliminarArea(objAreaE);

        if (resultsql > 0)
        {
            //enviar mensaje 
            Response.Write("<script>alert('Datos actualizados de la Area!.');window.location.href='ListaA.aspx'</script>");
        }
    }
}