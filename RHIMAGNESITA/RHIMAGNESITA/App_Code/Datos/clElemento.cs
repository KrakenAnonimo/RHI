using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clElemento
/// </summary>
public class clElemento
{
    //Metodo registrar Elemento
    public int mtdRegistrarElemento(clElementoE objDatos)
    {
        string sqlInsert = "insert into Elemento(Codigo,Nombre,Descripcion,Estado,IdArea)" +
        "values('" + objDatos.Codigo + "','" + objDatos.Nombre + "','" + objDatos.Descripcion + "','" + objDatos.Estado + "','" + objDatos.IdArea + "')";

        clMetodoCN objMtdCN = new clMetodoCN();
        int result = objMtdCN.mtdConectado(sqlInsert);

        return result;
    }

    //Metodo Eliminar Elemento
    public int mtdEliminarElemento(clElementoE objDatos)
    {
        string consulta = "Delete from Elemento where Codigo = '" + objDatos.Codigo + "')";
        clMetodoCN objMtdCN = new clMetodoCN();
        int result = objMtdCN.mtdConectado(consulta);

        return result;
    }

    //Metodo Listar Elemento
    public List<clElementoE> mtdListarElemento()
    {
        string consulta = "select * from Elemento";
        clMetodoCN objMtdCN = new clMetodoCN();
        DataTable tblDatos = new DataTable();
        tblDatos = objMtdCN.mtdDesconectado(consulta);

        List<clElementoE> ListaElemento = new List<clElementoE>();
        for (int i = 0; i < tblDatos.Rows.Count; i++)
        {
            clElementoE objPasDatos = new clElementoE();
            objPasDatos.IdElemento = int.Parse(tblDatos.Rows[i][0].ToString());
            objPasDatos.Codigo = tblDatos.Rows[i][1].ToString();
            objPasDatos.Nombre = tblDatos.Rows[i][2].ToString();
            objPasDatos.Descripcion = tblDatos.Rows[i][3].ToString();
            objPasDatos.Estado = tblDatos.Rows[i][4].ToString();
            objPasDatos.IdArea = int.Parse(tblDatos.Rows[i][5].ToString());
            ListaElemento.Add(objPasDatos);
        }
        return ListaElemento;
    }

    //Metodo Actualizar Elemento
    public int mtdActualizarElemento(clElementoE objDatos)
    {
        string consulta = "Update Elemento set Nombre = '" + objDatos.Nombre + "', Descripcion = '" + objDatos.Descripcion + "', Estado = '" + objDatos.Estado + "' where IdElemento = '" + objDatos.IdElemento + "'";
        clMetodoCN objMtdCN = new clMetodoCN();
        int regis = objMtdCN.mtdConectado(consulta);
        return regis;
    }
}