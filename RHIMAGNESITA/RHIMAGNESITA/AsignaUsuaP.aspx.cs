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
        if (Session["rol"].ToString() != "Admin" && Session["rol"].ToString() != "Supervisor" && Session["rol"].ToString() != "Planificador")
        {
            Response.Redirect("~/ErrorASP.aspx");
        }
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
    
    protected void gvUsua_SelectedIndexChanged(object sender, EventArgs e)
    {
        fila = gvUsua.SelectedRow.RowIndex;


        //clase usuario
        clUsuarioX objUsuarios = new clUsuarioX();

        objUsuarios.IdUsuario = int.Parse(gvUsua.DataKeys[fila].Value.ToString());

        lista.Add(objUsuarios);
        gvUsuarioElegido.DataSource = lista;
        gvUsuarioElegido.DataBind();

    }
    static List<clUsuarioX> lista = new List<clUsuarioX>();
    int filas = 0;
    protected void gvPlanif_SelectedIndexChanged(object sender, EventArgs e)
    {
        filas = gvPlanif.SelectedRow.RowIndex;

        //clase Planificacion
        clPlanificaciox objPlanificacion = new clPlanificaciox();
        objPlanificacion.IdPlanificacion = int.Parse(gvPlanif.DataKeys[filas].Value.ToString());

        listas.Add(objPlanificacion);
        gvPlanificaiconElegido.DataSource = listas;
        gvPlanificaiconElegido.DataBind();
    }
    
    static List<clPlanificaciox> listas = new List<clPlanificaciox>();
    protected void btnGuardar_Click(object sender, EventArgs e)
    {

        clUsuaPlanificacionE objUsuaPlanificacionE = new clUsuaPlanificacionE();
        // Guardar Usuarios y planificaicon
        // Ciclo por cada registro de usuarios en la orden
        for (int i = 0; i < gvUsuarioElegido.Rows.Count; i++)
        {
            //Campos Registra
            int IdUsuario = int.Parse(gvUsuarioElegido.Rows[i].Cells[0].Text);

            //Registro de id
            objUsuaPlanificacionE.IdUsuario = IdUsuario;
        }

        // Ciclo por cada registro de usuarios en la orden
        for (int i = 0; i < gvPlanificaiconElegido.Rows.Count; i++)
        {
            //Campos Registra
            int IdPlanificacion = int.Parse(gvPlanificaiconElegido.Rows[i].Cells[0].Text);

            //Registro de id
            objUsuaPlanificacionE.IdPlanificacion = IdPlanificacion;
        }

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
public class clUsuarioX
{
    //Atributos Tabla Usuarios
    public int IdUsuario { get; set; }
}
public class clPlanificaciox
{
    //Atributos Tabla Planificaciox
    public int IdPlanificacion { get; set; }
}
