using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clRol
/// </summary>
public class clRol
{
    public int mtdRegistrarRol(clRolE objDatos)
    {
        string sqlInsert = "insert into Rol(Rol)" +
        "values('" + objDatos.Rol + "')";

        clMetodoCN objMtdCN = new clMetodoCN();
        int result = objMtdCN.mtdConectado(sqlInsert);

        return result;
    }


    public int mtdEliminarRol(clRolE objDatos)
    {
        string consulta = "Delete from Rol where Rol = '" + objDatos.Rol + "')";
        clConexion objConexion = new clConexion();
        clMetodoCN objMtdCN = new clMetodoCN();
        int result = objMtdCN.mtdConectado(consulta);

        return result;
    }


    public List<clRolE> mtdListarRol()
    {
        string consulta = "select * from Rol";
        clMetodoCN objMtdCN = new clMetodoCN();
        DataTable tblDatos = new DataTable();
        tblDatos = objMtdCN.mtdDesconectado(consulta);

        List<clRolE> ListaRol = new List<clRolE>();
        for (int i = 0; i < tblDatos.Rows.Count; i++)
        {
            clRolE objPasDatos = new clRolE();
            objPasDatos.IdRol = int.Parse(tblDatos.Rows[i][0].ToString());
            objPasDatos.Rol = tblDatos.Rows[i][1].ToString(); 
            ListaRol.Add(objPasDatos);
        }
        return ListaRol;
    }

    public int mtdActualizarRol(clRolE objDatos)
    {
        string consulta = "Update Rol set Rol = '" + objDatos.Rol + "')";
        clMetodoCN objMtdCN = new clMetodoCN();
        int regis = objMtdCN.mtdConectado(consulta);
        return regis;
    }


}