using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Rol : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        clRolE objRolE = new clRolE();
        objRolE.Rol = txtNombreR.Text;

        clRolL objRolL = new clRolL();
        int result = objRolL.mtdRegistrarRol(objRolE);
        if (result > 0)
        {
            //enviar mensaje 
            Response.Write("<script>alert('Se registro un nuevo rol correctamente!');window.location.href='Rol.aspx'</script>");
            txtNombreR.Text = "";
        }
    }

    protected void btnLimpiar_Click(object sender, EventArgs e)
    {
        txtNombreR.Text = "";
    }
}