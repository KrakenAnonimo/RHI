using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clTareaMtto
/// </summary>
public class clTareaMtto
{
    //Metodo registrar TareaMtto
    public int mtdRegistrarTareaMtto(clTareaMttoE objTareaMttoE)
    {
        string sqlInsert = "insert into TareaMtto(NombreTM,Duracion,Descripcion,IdElemento)" +
            "Values('" + objTareaMttoE.NombreTM + "','" + objTareaMttoE.Duracion + "','" + objTareaMttoE.Descripcion + "','" + objTareaMttoE.IdElemento + "')";


        clMetodoCN objMtdCN = new clMetodoCN();
        int result = objMtdCN.mtdConectado(sqlInsert);

        return result;

    }

    //Metodo Eliminar TareaMtto
    public int mtdEliminarTareaMtto(clTareaMttoE objDatos)
    {
        string consulta = "Delete from TareaMtto where NombreTM = '" + objDatos.NombreTM + "')";
        clMetodoCN objMtdCN = new clMetodoCN();
        int result = objMtdCN.mtdConectado(consulta);

        return result;
    }

    //Metodo Listar TareaMtto
    public List<clTareaMttoE> mtdListarTareaMtto()
    {
        string consulta = "select * from TareaMtto";
        clMetodoCN objMtdCN = new clMetodoCN();
        DataTable tblDatos = new DataTable();
        tblDatos = objMtdCN.mtdDesconectado(consulta);

        List<clTareaMttoE> ListaTareaMtto = new List<clTareaMttoE>();
        for (int i = 0; i < tblDatos.Rows.Count; i++)
        {
            clTareaMttoE objPasDatos = new clTareaMttoE();
            objPasDatos.IdTareaMtto = int.Parse(tblDatos.Rows[i][0].ToString());
            objPasDatos.NombreTM = tblDatos.Rows[i][1].ToString();
            objPasDatos.Duracion = tblDatos.Rows[i][2].ToString();
            objPasDatos.Descripcion = tblDatos.Rows[i][3].ToString();
            objPasDatos.IdElemento = int.Parse(tblDatos.Rows[i][4].ToString());
            ListaTareaMtto.Add(objPasDatos);
        }
        return ListaTareaMtto;
    }

    //Metodo Actualizar TareaMtto
    public int mtdActualizarTareaMtto(clTareaMttoE objTareaMttoE)
    {
        string consulta = "Update TareaMtto set NombreTM = '" + objTareaMttoE.NombreTM + "','" + objTareaMttoE.Duracion + "','" + objTareaMttoE.Descripcion + "','" + objTareaMttoE.IdElemento + "')";
        clMetodoCN objMtdCN = new clMetodoCN();
        int regis = objMtdCN.mtdConectado(consulta);
        return regis;
    }
}