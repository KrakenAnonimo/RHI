using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnIngresar_Click(object sender, EventArgs e)
    {
        // Consultar en la BD por medio del sqlDatasource
        // Pasar datos del sqldataSource al dataTable

        /*DataTable tblDatos = new DataTable();
        tblDatos = ((DataView)sqldsLogin.Select(DataSourceSelectArguments.Empty)).Table;

        if (tblDatos.Rows.Count > 0)
        {
            Session["usuario"] = tblDatos.Rows[0][0].ToString();
            Session["rol"] = tblDatos.Rows[0][2].ToString();
            Response.Redirect("~/Inicio2.aspx");
        }
        else
        {
            // Si no existe mostrar un alert de informcionaz
            txtEmailLog.Text = "";
            txtClave.Text = "";
            Response.Write("<script>alert('Los datos no son los correstos');</script>");
            Response.Redirect("~/Inicio.aspx");*/
        }

    }
}
