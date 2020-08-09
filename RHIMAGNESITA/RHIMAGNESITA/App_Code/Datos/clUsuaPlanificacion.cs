using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clUsuaPlanificacion
/// </summary>
public class clUsuaPlanificacion
{
    //Metodo registrar UsuaPlanificacion
    public int mtdRegistrarUsuaPlanificacion(clUsuaPlanificacionE objDatos)
    {
        string sqlInsert = "insert into UsuaPlanificacion(IdUsuario,IdPlanificacion)" +
        "values('" + objDatos.IdUsuario + "','" + objDatos.IdPlanificacion + "')";

        clMetodoCN objMtdCN = new clMetodoCN();
        int result = objMtdCN.mtdConectado(sqlInsert);

        return result;
    }

    //Metodo Eliminar UsuaPlanificacion
    public int mtdEliminarUsuaPlanificacion(clUsuaPlanificacionE objDatos)
    {
        string consulta = "Delete from UsuaPlanificacion where IdUsuaPlanificacion = '" + objDatos.IdUsuaPlanificacion + "')";
        clMetodoCN objMtdCN = new clMetodoCN();
        int result = objMtdCN.mtdConectado(consulta);

        return result;
    }

    //Metodo Listar UsuaPlanificacion
    public List<clUsuaPlanificacionE> mtdListarUsuaPlanificacion()
    {
        string consulta = "select * from UsuaPlanificacion";
        clMetodoCN objMtdCN = new clMetodoCN();
        DataTable tblDatos = new DataTable();
        tblDatos = objMtdCN.mtdDesconectado(consulta);

        List<clUsuaPlanificacionE> ListaUsuaPlanificacion = new List<clUsuaPlanificacionE>();
        for (int i = 0; i < tblDatos.Rows.Count; i++)
        {
            clUsuaPlanificacionE objPasDatos = new clUsuaPlanificacionE();
            objPasDatos.IdUsuaPlanificacion = int.Parse(tblDatos.Rows[i][0].ToString());
            objPasDatos.IdUsuario = int.Parse(tblDatos.Rows[i][1].ToString());
            objPasDatos.IdPlanificacion = int.Parse(tblDatos.Rows[i][2].ToString());
            ListaUsuaPlanificacion.Add(objPasDatos);
        }
        return ListaUsuaPlanificacion;
    }

    //Metodo Actualizar UsuaPlanificacion
    public int mtdActualizarUsuaPlanificacion(clUsuaPlanificacionE objDatos)
    {
        string consulta = "Update UsuaPlanificacion set IdUsuaPlanificacion = '" + objDatos.IdUsuario + "','" + objDatos.IdPlanificacion + "')";
        clMetodoCN objMtdCN = new clMetodoCN();
        int regis = objMtdCN.mtdConectado(consulta);
        return regis;
    }
}