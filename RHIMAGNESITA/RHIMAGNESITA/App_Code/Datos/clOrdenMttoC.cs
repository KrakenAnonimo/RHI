using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clOrdenMttoC
/// </summary>
public class clOrdenMttoC
{//Metodo registrar OrdenMttoC
    public int mtdRegistrarOrdenMttoC(clOrdenMttoCE objOrdenMttoCE)
    {
        string sqlInsert = "insert into OrdenMttoC(NumOrden,Disciplina,FechaInicio,HoraInicio,FechaFinal,HoraFianl,Ejecutado,TrabajoIE,Observaciones,Revisado,IdOrdenMttoP,IdUsuario)" +
            "Values('" + objOrdenMttoCE.NumOrden + "','" + objOrdenMttoCE.Disciplina + "','" + objOrdenMttoCE.FechaInicio + "','" + objOrdenMttoCE.HoraInicio + "','" + objOrdenMttoCE.FechaFinal + "','" + objOrdenMttoCE.HoraFinal + "','" + objOrdenMttoCE.Ejecutado + "','" + objOrdenMttoCE.TrabajoIE + "'," + objOrdenMttoCE.Observaciones + "','" + objOrdenMttoCE.Revisado + "','" + objOrdenMttoCE.IdOrdenMttoP + "','" + objOrdenMttoCE.IdUsuario + "')";


        clMetodoCN objMtdCN = new clMetodoCN();
        int result = objMtdCN.mtdConectado(sqlInsert);

        return result;

    }

    //Metodo Eliminar OrdenMttoC
    public int mtdEliminarOrdenMttoC(clOrdenMttoCE objDatos)
    {
        string consulta = "Delete from OrdenMttoC where NumOrden = '" + objDatos.NumOrden + "')";
        clMetodoCN objMtdCN = new clMetodoCN();
        int result = objMtdCN.mtdConectado(consulta);

        return result;
    }

    //Metodo Listar OrdenMttoC
    public List<clOrdenMttoCE> mtdListarOrdenMttoC()
    {
        string consulta = "select * from OrdenMttoC";
        clMetodoCN objMtdCN = new clMetodoCN();
        DataTable tblDatos = new DataTable();
        tblDatos = objMtdCN.mtdDesconectado(consulta);

        List<clOrdenMttoCE> ListaOrdenMttoC = new List<clOrdenMttoCE>();
        for (int i = 0; i < tblDatos.Rows.Count; i++)
        {
            clOrdenMttoCE objPasDatos = new clOrdenMttoCE();
            objPasDatos.IdUsuario = int.Parse(tblDatos.Rows[i][0].ToString());
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
            objPasDatos.IdOrdenMttoP = int.Parse(tblDatos.Rows[i][11].ToString());
            objPasDatos.IdUsuario = int.Parse(tblDatos.Rows[i][12].ToString());
            ListaOrdenMttoC.Add(objPasDatos);
        }
        return ListaOrdenMttoC;
    }

    //Metodo Actualizar OrdenMttoC
    public int mtdActualizarOrdenMttoC(clOrdenMttoCE objOrdenMttoCE)
    {
        string consulta = "Update OrdenMttoC set NumOrden = '" + objOrdenMttoCE.NumOrden + "','" + objOrdenMttoCE.Disciplina + "','" + objOrdenMttoCE.FechaInicio + "','" + objOrdenMttoCE.HoraInicio + "','" + objOrdenMttoCE.FechaFinal + "','" + objOrdenMttoCE.HoraFinal + "','" + objOrdenMttoCE.Ejecutado + "','" + objOrdenMttoCE.TrabajoIE + "'," + objOrdenMttoCE.Observaciones + "','" + objOrdenMttoCE.Revisado + "','" + objOrdenMttoCE.IdOrdenMttoP + "','" + objOrdenMttoCE.IdUsuario + "')";
        clMetodoCN objMtdCN = new clMetodoCN();
        int regis = objMtdCN.mtdConectado(consulta);
        return regis;
    }
}