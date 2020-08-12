using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AsignaUsuaP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void cmbUsP_SelectedIndexChanged(object sender, EventArgs e)
    {
        int idRol = int.Parse(cmbUsP.SelectedValue.ToString());
        string consulta = "select * from Usuario where IdRol=" + idRol;
        SqlDataSource1.SelectCommand = consulta;
        gvUsua.DataSourceID = "SqlDataSource1";
        gvUsua.DataBind();
    }
    int fila = 0;
    int filas = 0; 
    protected void btnGuardar_Click(object sender, EventArgs e)
    {

        clUsuaPlanificacionE objUsuaPlanificacionE = new clUsuaPlanificacionE();
        objUsuaPlanificacionE.IdUsuario = int.Parse(gvUsua.DataKeys[fila].Value.ToString());
        objUsuaPlanificacionE.IdPlanificacion = int.Parse(gvPlanif.DataKeys[filas].Value.ToString());
       
        
        clUsuaPlanificacion objUsuaPlanificacion = new clUsuaPlanificacion();
        int resultsql = objUsuaPlanificacion.mtdRegistrarUsuaPlanificacion(objUsuaPlanificacionE);

        if (resultsql > 0)
        {
            //enviar mensaje
            Response.Write("<script>alert('Se Asigno Correctamente el usuario a planificaacion')</script>");


            Response.Redirect("~/AsignaUsuaP.aspx");
        }
    }

 
}
