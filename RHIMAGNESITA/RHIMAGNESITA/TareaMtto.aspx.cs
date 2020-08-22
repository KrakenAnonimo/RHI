using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TareaMtto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        clTareaMttoE objTareaMttoE = new clTareaMttoE();
        objTareaMttoE.NombreTM = txtNombreTM.Text;
        objTareaMttoE.Duracion = txtDuracion.Text;
        objTareaMttoE.Descripcion = txtDescripcion.Text;

        // Guardar Elemento
        // Ciclo por cada registro del elemeto en la planificacion
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            //Campos Registra
            int IdElemento = int.Parse(GridView1.Rows[i].Cells[0].Text);

            //No Registra
            string Nombre = GridView1.Rows[i].Cells[1].Text;


            //Registro de id
            objTareaMttoE.IdElemento = IdElemento;
        }

        clTareaMtto objTareaMtto = new clTareaMtto();
        int resultsql = objTareaMtto.mtdRegistrarTareaMtto(objTareaMttoE);

        if (resultsql > 0)
        {
            //enviar mensaje
            Response.Write("<script>alert('Se registro una nueva Tarea de Mantenimiento correctamente!');window.location.href='TareaMtto.aspx'</script>");
            //Limpiar Campos de texto
            txtDescripcion.Text = "";
            txtDuracion.Text = "";
            txtNombreTM.Text = "";
        }
    }

    protected void btnLimpiar_Click(object sender, EventArgs e)
    {
        txtNombreTM.Text = "";
        txtDuracion.Text = "";
        txtDescripcion.Text = "";

    }

    protected void btnBuscar_Click(object sender, EventArgs e)
    {
        //Busqueda por nombre en la consulta
        SqlDataSource2.SelectCommand = "SELECT [IdElemento], [Codigo], [Nombre], [Descripcion], [Estado], [IdArea] FROM [Elemento] WHERE Nombre Like '%" + txtBuscarE.Text + "%'";
        //Ejecucion
        SqlDataSource2.DataBind();
    }

    int fila = 0;

    protected void Unnamed1_SelectedIndexChanged(object sender, EventArgs e)
    {
        fila = gvElementos.SelectedRow.RowIndex;

        //clase Elemento
        clElementox objElemento = new clElementox();

        objElemento.IdElemento = int.Parse(gvElementos.DataKeys[fila].Value.ToString());
        objElemento.Nombre = gvElementos.SelectedRow.Cells[1].Text;

        lista.Add(objElemento);
        GridView1.DataSource = lista;
        GridView1.DataBind();
    }
    static List<clElementox> lista = new List<clElementox>();
}
public class clElementox
{
    //Atributos Tabla Elementos
    public int IdElemento { get; set; }

    public string Nombre { get; set; }

    
}