using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clOrdenMttoP
/// </summary>
public class clOrdenMttoP
{
    //Metodo registrar OrdenMttoP
    public int mtdRegistrarOrdenMttoP(clOrdenMttoPE objOrdenMttoPE)
    {
        string sqlInsert = "insert into OrdenMttoPreventivo(NumOrden,Disciplina,FechaInicio,HoraInicio,FechaFinal,HoraFinal,Ejecutado,TrabajoIE,Observaciones,Revisado,IdPlanificacion,IdReporteAS,IdUsuario)" +
            "Values('" + objOrdenMttoPE.NumOrden + "','" + objOrdenMttoPE.Disciplina + "','" + objOrdenMttoPE.FechaInicio + "','" + objOrdenMttoPE.HoraInicio + "','" + objOrdenMttoPE.FechaFinal + "','" + objOrdenMttoPE.HoraFinal + "','" + objOrdenMttoPE.Ejecutado + "','" + objOrdenMttoPE.TrabajoIE + "','" + objOrdenMttoPE.Observaciones + "','" + objOrdenMttoPE.Revisado + "','" + objOrdenMttoPE.IdPlanificacion + "','" + objOrdenMttoPE.IdReporteAS + "','" + objOrdenMttoPE.IdUsuario + "')";


        clMetodoCN objMtdCN = new clMetodoCN();
        int result = objMtdCN.mtdConectado(sqlInsert);

        return result;

    }

    //Metodo Eliminar OrdenMttoP
    public int mtdEliminarOrdenMttoP(clOrdenMttoPE objDatos)
    {
        string consulta = "Delete from OrdenMttoPreventivo where NumOrden = '" + objDatos.NumOrden + "')";
        clMetodoCN objMtdCN = new clMetodoCN();
        int result = objMtdCN.mtdConectado(consulta);

        return result;
    }

    //Metodo Listar OrdenMttoP
    public List<clOrdenMttoPE> mtdListarOrdenMttoP()
    {
        string consulta = "select * from OrdenMttoPreventivo";
        clMetodoCN objMtdCN = new clMetodoCN();
        DataTable tblDatos = new DataTable();
        tblDatos = objMtdCN.mtdDesconectado(consulta);

        List<clOrdenMttoPE> ListaOrdenMttoP = new List<clOrdenMttoPE>();
        for (int i = 0; i < tblDatos.Rows.Count; i++)
        {
            clOrdenMttoPE objPasDatos = new clOrdenMttoPE();
            objPasDatos.IdOrdenMttoP = int.Parse(tblDatos.Rows[i][0].ToString());
            objPasDatos.NumOrden = tblDatos.Rows[i][1].ToString();
            objPasDatos.Disciplina = tblDatos.Rows[i][2].ToString();
            objPasDatos.FechaInicio = tblDatos.Rows[i][3].ToString();
            objPasDatos.HoraInicio = tblDatos.Rows[i][4].ToString();
            objPasDatos.FechaFinal = tblDatos.Rows[i][5].ToString();
            objPasDatos.HoraFinal = tblDatos.Rows[i][6].ToString();
            objPasDatos.Ejecutado = tblDatos.Rows[i][7].ToString();
            objPasDatos.TrabajoIE = tblDatos.Rows[i][8].ToString();
            objPasDatos.Observaciones = tblDatos.Rows[i][9].ToString();
            objPasDatos.Revisado = tblDatos.Rows[i][10].ToString();
            objPasDatos.IdPlanificacion = int.Parse(tblDatos.Rows[i][11].ToString());
            objPasDatos.IdReporteAS = int.Parse(tblDatos.Rows[i][12].ToString());
            objPasDatos.IdUsuario = int.Parse(tblDatos.Rows[i][13].ToString());
            ListaOrdenMttoP.Add(objPasDatos);
        }
        return ListaOrdenMttoP;
    }

    //Metodo Actualizar OrdenMttoP
    public int mtdActualizarOrdenMttoP(clOrdenMttoPE objOrdenMttoPE)
    {
        string consulta = "Update OrdenMttoPreventivo set NumOrden = '" + objOrdenMttoPE.NumOrden + "','" + objOrdenMttoPE.Disciplina + "','" + objOrdenMttoPE.FechaInicio + "','" + objOrdenMttoPE.HoraInicio + "','" + objOrdenMttoPE.FechaFinal + "','" + objOrdenMttoPE.HoraFinal + "','" + objOrdenMttoPE.Ejecutado + "','" + objOrdenMttoPE.TrabajoIE + "'," + objOrdenMttoPE.Observaciones + "','" + objOrdenMttoPE.Revisado + "','" + objOrdenMttoPE.IdPlanificacion + "','" + objOrdenMttoPE.IdReporteAS + "','" + objOrdenMttoPE.IdUsuario + "')";
        clMetodoCN objMtdCN = new clMetodoCN();
        int regis = objMtdCN.mtdConectado(consulta);
        return regis;
    }
}