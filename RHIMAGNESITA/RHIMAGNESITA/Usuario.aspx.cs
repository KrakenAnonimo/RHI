using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Usuario :  System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {



    }

    List<clRolE> listaarea = new List<clRolE>();


    private void mtdCargarGrid()
    {

        clRolL objAreaL = new clRolL();

        listaarea = objAreaL.mtdListarArea();


        cmbArea.DataSource = listaarea;
        cmbArea.DisplayMember = "NombreArea";
        cmbArea.ValueMember = "IdArea";

    }
    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        clUsuarioE objUsuarioE = new clUsuarioE();
        objUsuarioE.Documento = txtDocumento.Text;
        objUsuarioE.Nombre = txtDocumento.Text;
        objUsuarioE.Apellido = txtDocumento.Text;
        objUsuarioE.Telefono = txtDocumento.Text;
        objUsuarioE.Email = txtDocumento.Text;
        objUsuarioE.Clave = txtDocumento.Text;
        objUsuarioE.Ciudad = txtDocumento.Text;
        objUsuarioE.Direccion = txtDocumento.Text;
        objUsuarioE.IdRol = 1;

        clUsuario objUsuario = new clUsuario();
        int resultsql = objUsuario.mtdRegistrarUsuario(objUsuarioE);

    }
}