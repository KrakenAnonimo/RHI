using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OrdenMttoC : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_Init(object sender, EventArgs e)
    {
        //Lista del OrdenMttoP
        List<clOrdenMttoPE> listaOrdenMttoP = new List<clOrdenMttoPE>();

        //Clase OrdenMttoP junto con el metodo listar
        clOrdenMttoPL objOrdenMttoPL = new clOrdenMttoPL();
        listaOrdenMttoP = objOrdenMttoPL.mtdListarOrdenMttoP();

        //Carga de combo con datos rol
        cmbOrdenMttoP.DataSource = listaOrdenMttoP;
        cmbOrdenMttoP.DataTextField = "NumOrden";
        cmbOrdenMttoP.DataValueField = "IdOrdenMttoP";
        cmbOrdenMttoP.DataBind();
    }

    //radio butons filtrados a roles
    protected void RadioButtonList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        int idRol = int.Parse(RadioButtonList1.SelectedValue.ToString());
        string consulta = "select * from Usuario where IdRol=" + idRol;
        SqlDataSource1.SelectCommand = consulta;
        gvUsuarios.DataSourceID = "SqlDataSource1";
        gvUsuarios.DataBind();
    }

    int fila = 0;

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblUsuario.Text = gvUsuarios.SelectedRow.Cells[1].Text + " " + gvUsuarios.SelectedRow.Cells[2].Text;
        fila = gvUsuarios.SelectedRow.RowIndex;

        //clase usuario
        clUsuariox objUsuarios = new clUsuariox();

        objUsuarios.IdUsuario = int.Parse(gvUsuarios.DataKeys[fila].Value.ToString());
        objUsuarios.Documento = gvUsuarios.SelectedRow.Cells[1].Text;
        objUsuarios.Nombre = gvUsuarios.SelectedRow.Cells[2].Text;

        lista.Add(objUsuarios);
        gvListaElegidos.DataSource = lista;
        gvListaElegidos.DataBind();
    }

    static List<clUsuariox> lista = new List<clUsuariox>();

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        clOrdenMttoCE objOrdenMttoCE = new clOrdenMttoCE();
        objOrdenMttoCE.NumOrden = txtNumOrdenC.Text;
        objOrdenMttoCE.Disciplina = txtDisciplina.Text;
        objOrdenMttoCE.FechaInicio = txtFechaOI.Text;
        objOrdenMttoCE.HoraInicio = txtHoraI.Text;
        objOrdenMttoCE.FechaFinal = txtFechaOF.Text;
        objOrdenMttoCE.HoraFinal = txtHoraF.Text;
        objOrdenMttoCE.Ejecutado = cmbEjecucionOr.SelectedValue.ToString();
        objOrdenMttoCE.TrabajoIE = cmbTrabajoIE.SelectedValue.ToString();
        objOrdenMttoCE.Revisado = cmbRevision.SelectedValue.ToString();
        objOrdenMttoCE.Observaciones = txtObservaciones.Text;
        objOrdenMttoCE.IdOrdenMttoP = int.Parse(cmbOrdenMttoP.SelectedValue.ToString());

        // Guardar Usuarios
        // Ciclo por cada registro de usuarios en la orden
        for (int i = 0; i < gvListaElegidos.Rows.Count; i++)
        {
            //Campos Registra
            int IdUsuario = int.Parse(gvListaElegidos.Rows[i].Cells[0].Text);

            //Campos No Registra
            int Documento = int.Parse(gvListaElegidos.Rows[i].Cells[1].Text);
            string Nombre = gvListaElegidos.Rows[i].Cells[2].Text;

            //Registro de id
            objOrdenMttoCE.IdUsuario = IdUsuario;
        }

        clOrdenMttoC objOrdenMttoC = new clOrdenMttoC();
        int resultsql = objOrdenMttoC.mtdRegistrarOrdenMttoC(objOrdenMttoCE);

        if (resultsql > 0)
        {
            //enviar mensaje
            Response.Write("<script>alert('Se Registro Correctamente la Orden de Mtto Correctivo')</script>");

            //Limpiar Campos de texto
            txtNumOrdenC.Text = "";
            txtDisciplina.Text = "";
            txtFechaOI.Text = "";
            txtHoraI.Text = "";
            txtFechaOF.Text = "";
            txtHoraF.Text = "";
            txtObservaciones.Text = "";
            Response.Redirect("~/OrdenMttoC.aspx");
        }
    }
    protected void btnLimpiar_Click(object sender, EventArgs e)
    {
        //Limpiar Campos de texto
        txtNumOrdenC.Text = "";
        txtDisciplina.Text = "";
        txtFechaOI.Text = "";
        txtHoraI.Text = "";
        txtFechaOF.Text = "";
        txtHoraF.Text = "";
        txtObservaciones.Text = "";
        Response.Redirect("~/OrdenMttoC.aspx");
    }
}
public class clUsuariox
{
    //Atributos Tabla Usuarios
    public int IdUsuario { get; set; }
    public string Documento { get; set; }
    public string Nombre { get; set; }
}
