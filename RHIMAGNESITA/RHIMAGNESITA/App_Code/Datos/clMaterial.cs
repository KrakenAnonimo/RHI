using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clMaterial
/// </summary>
public class clMaterial
{
    //Metodo registrar Material
    public int mtdRegistrarMaterial(clMaterialE objMaterialE)
    {
        string sqlInsert = "insert into Material(Codigo,Nombre,Descripcion,Unidad)" +
            "Values('" + objMaterialE.Codigo + "','" + objMaterialE.Nombre + "','" + objMaterialE.Descripcion + "','" + objMaterialE.Unidad + "')";


        clMetodoCN objMtdCN = new clMetodoCN();
        int result = objMtdCN.mtdConectado(sqlInsert);

        return result;

    }

    //Metodo Eliminar Material
    public int mtdEliminarMaterial(clMaterialE objDatos)
    {
        string consulta = "Delete from Material where Nombre = '" + objDatos.Nombre + "'";
        clMetodoCN objMtdCN = new clMetodoCN();
        int result = objMtdCN.mtdConectado(consulta);

        return result;
    }

    //Metodo Listar Material
    public List<clMaterialE> mtdListarMaterial()
    {
        string consulta = "select * from Material";
        clMetodoCN objMtdCN = new clMetodoCN();
        DataTable tblDatos = new DataTable();
        tblDatos = objMtdCN.mtdDesconectado(consulta);

        List<clMaterialE> ListaMaterial = new List<clMaterialE>();
        for (int i = 0; i < tblDatos.Rows.Count; i++)
        {
            clMaterialE objPasDatos = new clMaterialE();
            objPasDatos.IdMaterial = int.Parse(tblDatos.Rows[i][0].ToString());
            objPasDatos.Codigo = tblDatos.Rows[i][1].ToString();
            objPasDatos.Nombre = tblDatos.Rows[i][2].ToString();
            objPasDatos.Descripcion = tblDatos.Rows[i][3].ToString();
            objPasDatos.Unidad = tblDatos.Rows[i][4].ToString();
            
            ListaMaterial.Add(objPasDatos);
        }
        return ListaMaterial;
    }

    //Metodo Actualizar Material
    public int mtdActualizarMaterial(clMaterialE objDatos)
    {
        string consulta = "Update Material set Nombre = '" + objDatos.Nombre + "', Descripcion = '" + objDatos.Descripcion + "', Unidad = '" + objDatos.Unidad + "'where IdMaterial = '" + objDatos.IdMaterial + "'";
        clMetodoCN objMtdCN = new clMetodoCN();
        int regis = objMtdCN.mtdConectado(consulta);
        return regis;
    }
}