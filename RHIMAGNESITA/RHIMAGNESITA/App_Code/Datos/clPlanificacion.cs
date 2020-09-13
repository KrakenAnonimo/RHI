using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clPlanificacion
/// </summary>
public class clPlanificacion
{

    //Metodo registrar Planificacion
    public int mtdRegistrarPlanificacion(clPlanificacionE objPlanificacionE)
    {
        string sqlInsert = "insert into Planificacion(FechaPlanificacion,Observaciones,Estado,IdElemento)" +
            "Values('" + objPlanificacionE.FechaPlanificacion + "','" + objPlanificacionE.Observaciones + "','" + objPlanificacionE.Estado + "','" + objPlanificacionE.
            IdElemento + "')";

        clMetodoCN objMtdCN = new clMetodoCN();
        int result = objMtdCN.mtdConectado(sqlInsert);
        return result;

    }

    //Metodo Eliminar Planificacion
    public int mtdEliminarPlanificacion(clPlanificacionE objDatos)
    {
        string consulta = "Delete from Planificacion where IdPlanificacion = '" + objDatos.IdPlanificacion + "'";
        clMetodoCN objMtdCN = new clMetodoCN();
        int result = objMtdCN.mtdConectado(consulta);
        return result;
    }

    //Metodo Listar Planificacion
    public List<clPlanificacionE> mtdListarPlanificacion()
    {
        string consulta = "select * from Planificacion";
        clMetodoCN objMtdCN = new clMetodoCN();
        DataTable tblDatos = new DataTable();
        tblDatos = objMtdCN.mtdDesconectado(consulta);

        List<clPlanificacionE> ListaPlanificacion = new List<clPlanificacionE>();
        for (int i = 0; i < tblDatos.Rows.Count; i++)
        {
            clPlanificacionE objPasDatos = new clPlanificacionE();
            objPasDatos.IdPlanificacion = int.Parse(tblDatos.Rows[i][0].ToString());
            objPasDatos.FechaPlanificacion = tblDatos.Rows[i][1].ToString();
            objPasDatos.Observaciones = tblDatos.Rows[i][2].ToString();
            objPasDatos.Estado = tblDatos.Rows[i][3].ToString();
            objPasDatos.IdElemento = int.Parse(tblDatos.Rows[i][4].ToString());
            ListaPlanificacion.Add(objPasDatos);
        }
        return ListaPlanificacion;
    }

    //Metodo Actualizar Planificacion
    public int mtdActualizarPlanificacion(clPlanificacionE objDatos)
    {
        string consulta = "Update Planificacion set FechaPlanificacion = '" + objDatos.FechaPlanificacion + "', Observaciones= '" + objDatos.Observaciones + "', Estado= '" + objDatos.Estado + "' where IdPlanificacion = '" + objDatos.IdPlanificacion +"'";
        clMetodoCN objMtdCN = new clMetodoCN();
        int regis = objMtdCN.mtdConectado(consulta);
        return regis;
    }


}