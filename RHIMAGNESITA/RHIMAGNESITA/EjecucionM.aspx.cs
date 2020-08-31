using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EjecucionM : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*if (Session["rol"].ToString() != "Admin" && Session["rol"].ToString() != "Supervisor" && Session["rol"].ToString() != "Planificador")
        {
            Response.Redirect("~/ErrorASP.aspx");
        }*/

    }
    
    
    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        clEjecucionME objEjecucionME = new clEjecucionME();
        objEjecucionME.Estado = cmbEstado.Text;
        objEjecucionME.FechaEjecucion = txtFechaEj.Text;
        objEjecucionME.Duracion = txtDuracion.Text;
        objEjecucionME.Observaciones = txtObservaciones.Text;

        for (int i = 0; i < gvMP.Rows.Count; i++)
        {
            //Campos Registra
            int IdOrdenMttoP = int.Parse(gvMP.Rows[i].Cells[0].Text);

            //No Registra
            string Nombre = gvMP.Rows[i].Cells[1].Text;

            //Registro de id
            objEjecucionME.IdOrdenMttoP = IdOrdenMttoP;
        }

        for (int i = 0; i < gvTM.Rows.Count; i++)
        {
            //Campos Registra
            int IdTareaMtto = int.Parse(gvTM.Rows[i].Cells[0].Text);

            //No Registra
            string NombreTM = gvTM.Rows[i].Cells[1].Text;

            //Registro de id
            objEjecucionME.IdTareaMtto = IdTareaMtto;
        }


        clEjecucionM objEjecucionM = new clEjecucionM();
        int resultsql = objEjecucionM.mtdRegistrarEjecucionM(objEjecucionME);

        if (resultsql > 0)
        {
            //enviar mensaje 
            Response.Write("<script>alert('Se registro una nueva Ejecucion de Mantenimiento correctamente!');window.location.href='EjecucionM.aspx'</script>");
            //Limpiar Campos de texto
            txtFechaEj.Text = "";
            txtDuracion.Text = "";
            txtObservaciones.Text = "";
        }

    }
    int filas = 0;
    static List<clOrdenMttoPp> listax = new List<clOrdenMttoPp>();
    protected void gvOrdenMP_SelectedIndexChanged(object sender, EventArgs e)
    {
        filas = gvOrdenMP.SelectedRow.RowIndex;

        //clase Elemento
        clOrdenMttoPp objOrdenmp = new clOrdenMttoPp();

        objOrdenmp.IdOrdenMttoP = int.Parse(gvOrdenMP.DataKeys[filas].Value.ToString());
        objOrdenmp.NumOrden = gvOrdenMP.SelectedRow.Cells[1].Text;

        listax.Add(objOrdenmp);
        gvMP.DataSource = listax;
        gvMP.DataBind();
    }
   
    int fila = 0;
    protected void gvTareaMtto_SelectedIndexChanged(object sender, EventArgs e)
    {
        fila = gvTareaMtto.SelectedRow.RowIndex;

        //clase Elemento
        clTareamm objTaream = new clTareamm();

        objTaream.IdTareaMtto = int.Parse(gvTareaMtto.DataKeys[fila].Value.ToString());
        objTaream.NombreTM = gvTareaMtto.SelectedRow.Cells[1].Text;

        lista.Add(objTaream);
        gvTM.DataSource = lista;
        gvTM.DataBind();
    }
    static List<clTareamm> lista = new List<clTareamm>();
    public class clTareamm
    {
        //Atributos Tabla TareaMtto
        public int IdTareaMtto { get; set; }
        public string NombreTM { get; set; }
    }
    public class clOrdenMttoPp
    {
        //Atributos Tabla OrdenMttoP
        public int IdOrdenMttoP { get; set; }
        public string NumOrden { get; set; }


    }
}