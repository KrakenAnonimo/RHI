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
        //Listados del combo
        List<clOrdenMttoPE> ListaOrdenMttoP = new List<clOrdenMttoPE>();

        //Clase con su metodo
        clOrdenMttoPL objOrdenMttoPL = new clOrdenMttoPL();
        ListaOrdenMttoP = objOrdenMttoPL.mtdListarOrdenMttoP();

        //Carga de combo con sus datos
        cmbOrdenMttoP.DataSource = ListaOrdenMttoP;
        cmbOrdenMttoP.DataTextField = "NumOrden";
        cmbOrdenMttoP.DataValueField = "IdOrdenMttoC";
        cmbOrdenMttoP.DataBind();
    }

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
        objOrdenMttoCE.Observaciones = txtObservaciones.Text;
        objOrdenMttoCE.Revisado = cmbRevision.SelectedValue.ToString();
        objOrdenMttoCE.IdOrdenMttoP = int.Parse(cmbOrdenMttoP.SelectedValue.ToString());

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
    }

    //cadena de conexion
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\dbSwafay-RIH.mdf;Integrated Security=True");

    //radio butons filtrados a roles
    protected void rdbTecnico_CheckedChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter dato = new SqlDataAdapter("Select * from Usuario Where IdRol='4'", con);
        DataTable dt = new DataTable();
        dato.Fill(dt);
        gvUsuarios.DataSource = dt;
        con.Close();
    }

    protected void rdbSoldador_CheckedChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter dato = new SqlDataAdapter("Select * from Usuario Where IdRol='5'", con);
        DataTable dt = new DataTable();
        dato.Fill(dt);
        gvUsuarios.DataSource = dt;
        con.Close();
    }
}
