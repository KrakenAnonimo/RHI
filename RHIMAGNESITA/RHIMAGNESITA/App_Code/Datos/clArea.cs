using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clArea
/// </summary>
public class clArea
{
    //Metodo registrar Area
    public int mtdRegistrarArea(clAreaE objDatos)
    {
        string sqlInsert = "insert into Area(Nombre,Ubicacion)" +
        "values('" + objDatos.Nombre + "','" + objDatos.Ubicacion + "')";

        clMetodoCN objMtdCN = new clMetodoCN();
        int result = objMtdCN.mtdConectado(sqlInsert);

        return result;
    }

    //Metodo Eliminar Area
    public int mtdEliminarArea(clAreaE objDatos)
    {
        string consulta = "Delete from Area where Nombre = '" + objDatos.Nombre + "'";
        clMetodoCN objMtdCN = new clMetodoCN();
        int result = objMtdCN.mtdConectado(consulta);

        return result;
    }

    //Metodo Listar Area
    public List<clAreaE> mtdListarArea()
    {
        string consulta = "select * from Area";
        clMetodoCN objMtdCN = new clMetodoCN();
        DataTable tblDatos = new DataTable();
        tblDatos = objMtdCN.mtdDesconectado(consulta);

        List<clAreaE> ListaArea = new List<clAreaE>();
        for (int i = 0; i < tblDatos.Rows.Count; i++)
        {
            clAreaE objPasDatos = new clAreaE();
            objPasDatos.IdArea = int.Parse(tblDatos.Rows[i][0].ToString());
            objPasDatos.Nombre = tblDatos.Rows[i][1].ToString();
            objPasDatos.Ubicacion = tblDatos.Rows[i][2].ToString();
            ListaArea.Add(objPasDatos);
        }
        return ListaArea;
    }

    //Metodo Actualizar Area
    public int mtdActualizarArea(clAreaE objDatos)
    {
        string consulta = "Update Area set Nombre = '" + objDatos.Nombre + "', Ubicacion = '" + objDatos.Ubicacion + "'where IdArea = '" + objDatos.IdArea + "'";
        clMetodoCN objMtdCN = new clMetodoCN();
        int regis = objMtdCN.mtdConectado(consulta);
        return regis;
    }
}