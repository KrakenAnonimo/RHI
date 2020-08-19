using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clEjecucionM
/// </summary>
public class clEjecucionM
{
    //Metodo registrar EjecucionM
    public int mtdRegistrarEjecucionM(clEjecucionME objEjecucionME)
    {
        string sqlInsert = "insert into EjecucionM(Estado,FechaEjecucion,Duracion,Observaciones,IdTareaMtto,IdOrdenMttoP)" +
            "Values('" + objEjecucionME.Estado + "','" + objEjecucionME.FechaEjecucion + "','" + objEjecucionME.Duracion + "','" + objEjecucionME.Observaciones + "','" + objEjecucionME.IdTareaMtto + "','" + objEjecucionME.IdOrdenMttoP + "')";


        clMetodoCN objMtdCN = new clMetodoCN();
        int result = objMtdCN.mtdConectado(sqlInsert);

        return result;

    }

    //Metodo Eliminar EjecucionM
    public int mtdEliminarEjecucionM(clEjecucionME objDatos)
    {
        string consulta = "Delete from EjecucionM where FechaEjecucion = '" + objDatos.FechaEjecucion + "')";
        clMetodoCN objMtdCN = new clMetodoCN();
        int result = objMtdCN.mtdConectado(consulta);

        return result;
    }

    //Metodo Listar EjecucionM4

    public List<clEjecucionME> mtdListarEjecucionM()
    {
        string consulta = "select * from EjecucionM";
        clMetodoCN objMtdCN = new clMetodoCN();
        DataTable tblDatos = new DataTable();
        tblDatos = objMtdCN.mtdDesconectado(consulta);

        List<clEjecucionME> ListaEjecucionM = new List<clEjecucionME>();
        for (int i = 0; i < tblDatos.Rows.Count; i++)
        {
            clEjecucionME objPasDatos = new clEjecucionME();
            objPasDatos.IdEjecucionM = int.Parse(tblDatos.Rows[i][0].ToString());
            objPasDatos.Estado = tblDatos.Rows[i][1].ToString();
            objPasDatos.FechaEjecucion = tblDatos.Rows[i][2].ToString();
            objPasDatos.Duracion = tblDatos.Rows[i][3].ToString();
            objPasDatos.Observaciones = tblDatos.Rows[i][4].ToString();
            objPasDatos.IdTareaMtto = int.Parse(tblDatos.Rows[i][5].ToString());
            objPasDatos.IdOrdenMttoP = int.Parse(tblDatos.Rows[i][6].ToString());
            ListaEjecucionM.Add(objPasDatos);
        }
        return ListaEjecucionM;
    }

    //Metodo Actualizar EjecucionM
    public int mtdActualizarEjecucionM(clEjecucionME objEjecucionME)
    {
        string consulta = "Update EjecucionM set Estado = '" + objEjecucionME.Estado + "', FechaEjecucion = '" + objEjecucionME.FechaEjecucion + "', Duracion ='" + objEjecucionME.Duracion + "', Observaciones = '" + objEjecucionME.Observaciones + "'where IdEjecucionM = '" + objEjecucionME.IdEjecucionM + "'";
        clMetodoCN objMtdCN = new clMetodoCN();
        int regis = objMtdCN.mtdConectado(consulta);
        return regis;
    }
}