using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clTareaAveriaServicio
/// </summary>
public class clTareaAveriaServicio
{
    //Metodo registrar TareaAS
    public int mtdRegistrarTareaAS(clTareaAveriaServicioE objTareaAveriaServicioE)
    {
        string sqlInsert = "insert into TareaAveriaServicio(NombreAS,Duracion,FechaEjecucion,IdOrdenMttoP,IdOrdenMttoC)" +
            "Values('" + objTareaAveriaServicioE.NombreAS + "','" + objTareaAveriaServicioE.Duracion + "','" + objTareaAveriaServicioE.FechaEjecucion + "','" + objTareaAveriaServicioE.IdOrdenMttoP + "','" + objTareaAveriaServicioE.IdOrdenMttoC + "')";


        clMetodoCN objMtdCN = new clMetodoCN();
        int result = objMtdCN.mtdConectado(sqlInsert);

        return result;

    }

    //Metodo Eliminar TareaAS
    public int mtdEliminarTareaAS(clTareaAveriaServicioE objDatos)
    {
        string consulta = "Delete from TareaAveriaServicio where NombreAS = '" + objDatos.NombreAS + "')";
        clMetodoCN objMtdCN = new clMetodoCN();
        int result = objMtdCN.mtdConectado(consulta);

        return result;
    }

    //Metodo Listar TareaAS
    public List<clTareaAveriaServicioE> mtdListarTareaAS()
    {
        string consulta = "select * from TareaAveriaServicio";
        clMetodoCN objMtdCN = new clMetodoCN();
        DataTable tblDatos = new DataTable();
        tblDatos = objMtdCN.mtdDesconectado(consulta);

        List<clTareaAveriaServicioE> ListaTareaAS = new List<clTareaAveriaServicioE>();
        for (int i = 0; i < tblDatos.Rows.Count; i++)
        {
            clTareaAveriaServicioE objPasDatos = new clTareaAveriaServicioE();
            objPasDatos.IdTareaAS = int.Parse(tblDatos.Rows[i][0].ToString());
            objPasDatos.NombreAS = tblDatos.Rows[i][1].ToString();
            objPasDatos.Duracion = tblDatos.Rows[i][2].ToString();
            objPasDatos.FechaEjecucion = tblDatos.Rows[i][3].ToString();
            objPasDatos.IdOrdenMttoP = int.Parse(tblDatos.Rows[i][4].ToString());
            objPasDatos.IdOrdenMttoC = int.Parse(tblDatos.Rows[i][5].ToString());
            ListaTareaAS.Add(objPasDatos);
        }
        return ListaTareaAS;
    }

    //Metodo Actualizar TareaAS
    public int mtdActualizarTareaAS(clTareaAveriaServicioE objTareaAveriaServicioE)
    {
        string consulta = "Update TareaAveriaServicio set NumOrden = '" + objTareaAveriaServicioE.NombreAS + "','" + objTareaAveriaServicioE.Duracion + "','" + objTareaAveriaServicioE.FechaEjecucion + "','" + objTareaAveriaServicioE.IdOrdenMttoP + "','" + objTareaAveriaServicioE.IdOrdenMttoC + "')";
        clMetodoCN objMtdCN = new clMetodoCN();
        int regis = objMtdCN.mtdConectado(consulta);
        return regis;
    }
}