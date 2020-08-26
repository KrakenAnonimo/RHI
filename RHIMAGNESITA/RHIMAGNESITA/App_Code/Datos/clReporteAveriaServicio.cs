using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clReporteAveriaServicio
/// </summary>
public class clReporteAveriaServicio
{
    //Metodo registrar ReporteAS
    public int mtdRegistrarReporteAS(clReporteAveriaServicioE objReporteAveriaServicioE)
    {
        string sqlInsert = "insert into ReporteAveriaServicio(NumReporte,Titulo,Descripcion,FechaReporte,IdElemento,IdUsuario)" +
            "Values('" + objReporteAveriaServicioE.NumReporte + "','" + objReporteAveriaServicioE.Titulo + "','" + objReporteAveriaServicioE.Descripcion + "','" + objReporteAveriaServicioE.FechaReporte + "','" + objReporteAveriaServicioE.IdElemento + "','" + objReporteAveriaServicioE.IdUsuario + "')";


        clMetodoCN objMtdCN = new clMetodoCN();
        int result = objMtdCN.mtdConectado(sqlInsert);

        return result;

    }
    public int mtdRegistrarReporteAS2(clReporteAveriaServicioE objReporteAveriaServicioE)
    {
        string sqlInsert = "insert into ReporteAveriaServicio(NumReporte,Titulo,Descripcion,FechaReporte,IdElemento,IdUsuario)" +
            "Values('" + objReporteAveriaServicioE.NumReporte + "','" + objReporteAveriaServicioE.Titulo + "','" + objReporteAveriaServicioE.Descripcion + "','" + objReporteAveriaServicioE.FechaReporte + "','" + objReporteAveriaServicioE.IdElemento + "','" + objReporteAveriaServicioE.IdUsuario + "')";


        clMetodoCN objMtdCN = new clMetodoCN();
        int result = objMtdCN.mtdConectado(sqlInsert);

        return result;

    }

    //Metodo Eliminar ReporteAS
    public int mtdEliminarReporteAS(clReporteAveriaServicioE objDatos)
    {
        string consulta = "Delete from ReporteAveriaServicio where Titulo = '" + objDatos.Titulo + "')";
        clMetodoCN objMtdCN = new clMetodoCN();
        int result = objMtdCN.mtdConectado(consulta);

        return result;
    }

    //Metodo Listar ReporteAS
    public List<clReporteAveriaServicioE> mtdListarReporteAS()
    {
        string consulta = "select * from ReporteAveriaServicio";
        clMetodoCN objMtdCN = new clMetodoCN();
        DataTable tblDatos = new DataTable();
        tblDatos = objMtdCN.mtdDesconectado(consulta);

        List<clReporteAveriaServicioE> ListaReporteAS = new List<clReporteAveriaServicioE>();
        for (int i = 0; i < tblDatos.Rows.Count; i++)
        {
            clReporteAveriaServicioE objPasDatos = new clReporteAveriaServicioE();
            objPasDatos.IdReporteAS = int.Parse(tblDatos.Rows[i][0].ToString());
            objPasDatos.NumReporte = int.Parse(tblDatos.Rows[i][1].ToString());
            objPasDatos.Titulo = tblDatos.Rows[i][2].ToString();
            objPasDatos.Descripcion = tblDatos.Rows[i][3].ToString();
            objPasDatos.FechaReporte = tblDatos.Rows[i][4].ToString();
            objPasDatos.IdElemento = int.Parse(tblDatos.Rows[i][5].ToString());
            objPasDatos.IdUsuario = int.Parse(tblDatos.Rows[i][6].ToString());
            ListaReporteAS.Add(objPasDatos);
        }
        return ListaReporteAS;
    }

    //Metodo Actualizar ReporteAS
    public int mtdActualizarReporteAS(clReporteAveriaServicioE objReporteAveriaServicioE)
    {
        string consulta = "Update ReporteAveriaServicio set Titulo = '" + objReporteAveriaServicioE.Titulo + "', Descripcion = '" + objReporteAveriaServicioE.Descripcion + "', FechaReporte = '" + objReporteAveriaServicioE.FechaReporte + "' where IdReporteAS = '" + objReporteAveriaServicioE.IdReporteAS + "'";
        clMetodoCN objMtdCN = new clMetodoCN();
        int regis = objMtdCN.mtdConectado(consulta);
        return regis;
    }
}