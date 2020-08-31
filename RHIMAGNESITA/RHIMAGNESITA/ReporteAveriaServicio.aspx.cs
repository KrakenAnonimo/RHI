using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ReporteAveriaServicio : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*if (Session["rol"].ToString() != "Admin" && Session["rol"].ToString() != "Supervisor" && Session["rol"].ToString() != "Planificador" && Session["rol"].ToString() != "Siso")
        {
            Response.Redirect("~/ErrorASP.aspx");
        }*/
    }
    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        clReporteAveriaServicioE objReporteAveriaServicioE = new clReporteAveriaServicioE();
        objReporteAveriaServicioE.NumReporte = int.Parse(txtNumReporte.Text);
        objReporteAveriaServicioE.Titulo = txtTitulo.Text;
        objReporteAveriaServicioE.Descripcion = txtDescripcion.Text;
        objReporteAveriaServicioE.FechaReporte = txtFechaReporte.Text;

        // Ciclo por cada registro de usuarios y elemento
        for (int i = 0; i < gvSeleccionU.Rows.Count; i++)
        {
            //Campos Registra
            int IdUsuario = int.Parse(gvSeleccionU.Rows[i].Cells[0].Text);

            //Campos No Registra
            int Documento = int.Parse(gvSeleccionU.Rows[i].Cells[1].Text);
            string Nombre = gvSeleccionU.Rows[i].Cells[2].Text;

            //Registro de id
            objReporteAveriaServicioE.IdUsuario = IdUsuario;
        }
        for (int i = 0; i < gvSeleccionE.Rows.Count; i++)
        {
            //Campos Registra
            int IdElemento = int.Parse(gvSeleccionE.Rows[i].Cells[0].Text);

            //Registro de id
            objReporteAveriaServicioE.IdElemento = IdElemento;
        }

        clReporteAveriaServicio objReporteAveriaServicio = new clReporteAveriaServicio();
        int resultsql = objReporteAveriaServicio.mtdRegistrarReporteAS(objReporteAveriaServicioE);

        if (resultsql > 0)
        {
            //Mostrar mensaje 
            Response.Write("<script>alert('Se registro un nuevo Reporte de Averia o Servicio correctamente!');window.location.href='ReporteAveriaServicio.aspx'</script>");

            //Limpiar campos de texto 
            txtNumReporte.Text = "";
            txtTitulo.Text = "";
            txtDescripcion.Text = "";
            txtFechaReporte.Text = "";
        }
    }

    protected void btnLimpiar_Click(object sender, EventArgs e)
    {
        txtNumReporte.Text = "";
        txtTitulo.Text = "";
        txtDescripcion.Text = "";
        txtFechaReporte.Text = "";
    }
    int fila = 0;
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblSeleccionE.Text = GridView2.SelectedRow.Cells[1].Text + " " + GridView2.SelectedRow.Cells[2].Text;
        fila = GridView2.SelectedRow.RowIndex;

        //clase usuario
        clElementopp clElementopp = new clElementopp();

        clElementopp.IdElemento = int.Parse(GridView2.DataKeys[fila].Value.ToString());
        clElementopp.Nombre = GridView2.SelectedRow.Cells[1].Text;

        listax.Add(clElementopp);
        gvSeleccionE.DataSource = listax;
        gvSeleccionE.DataBind();
    }

    static List<clElementopp> listax = new List<clElementopp>();
   

    int filas = 0;
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblSeleccionU.Text = GridView1.SelectedRow.Cells[1].Text + " " + GridView1.SelectedRow.Cells[2].Text;
        filas = GridView1.SelectedRow.RowIndex;

        //clase usuario
        clUsuarioss objUsuarios = new clUsuarioss();

        objUsuarios.IdUsuario = int.Parse(GridView1.DataKeys[filas].Value.ToString());
        objUsuarios.Documento = GridView1.SelectedRow.Cells[1].Text;
        objUsuarios.Nombre = GridView1.SelectedRow.Cells[2].Text;

        lista.Add(objUsuarios);
        gvSeleccionU.DataSource = lista;
        gvSeleccionU.DataBind();
    }
    static List<clUsuarioss> lista = new List<clUsuarioss>();
    public class clUsuarioss
    {
        //Atributos Tabla Usuarios
        public int IdUsuario { get; set; }
        public string Documento { get; set; }
        public string Nombre { get; set; }
    }
    public class clElementopp
    {
        //Atributos Tabla Elementos
        public int IdElemento { get; set; }
        public string Nombre { get; set; }
    }
    
   
}