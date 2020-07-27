using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clMetodoCN
/// </summary>
public class clMetodoCN
{
    SqlConnection objConex = null;

    public int mtdConectado(string sql)
    {

        clConexion objConexion = new clConexion();
        objConex = objConexion.mtdConexion();
        objConex.Open();
        SqlCommand cmdSql = new SqlCommand(sql, objConex);
        int resultado = cmdSql.ExecuteNonQuery();
        objConex.Close();
        return resultado;

    }


    public DataTable mtdDesconectado(string consulta)
    {
        objConex.Open();
        SqlDataAdapter adaptador = new SqlDataAdapter(consulta, objConex);
        DataTable tblDatos = new DataTable();
        adaptador.Fill(tblDatos);
        objConex.Close();
        return tblDatos;

    }

}