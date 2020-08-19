using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clUsuario
/// </summary>
public class clUsuario
{
    //Metodo registrar Usuario
    public int mtdRegistrarUsuario(clUsuarioE objUsuaE)
    {
        string sqlInsert = "insert into Usuario(Documento,Nombre,Apellido,Telefono,Email,Clave,Ciudad,Direccion,IdRol)" +
            "Values('" + objUsuaE.Documento + "','" + objUsuaE.Nombre + "','" + objUsuaE.Apellido + "','" + objUsuaE.Telefono + "','" + objUsuaE.Email + "','" + objUsuaE.Clave + "','" + objUsuaE.Ciudad + "','" + objUsuaE.Direccion + "'," + objUsuaE.IdRol + ")";


        clMetodoCN objMtdCN = new clMetodoCN();
        int result = objMtdCN.mtdConectado(sqlInsert);

        return result;

    }

    //Metodo Eliminar Usuario
    public int mtdEliminarUsuario(clUsuarioE objDatos)
    {
        string consulta = "Delete from Usuario where Documento = '" + objDatos.Documento + "')";
        clMetodoCN objMtdCN = new clMetodoCN();
        int result = objMtdCN.mtdConectado(consulta);

        return result;
    }

    //Metodo Listar Usuario
    public List<clUsuarioE> mtdListarUsuario()
    {
        string consulta = "select * from Usuario";
        clMetodoCN objMtdCN = new clMetodoCN();
        DataTable tblDatos = new DataTable();
        tblDatos = objMtdCN.mtdDesconectado(consulta);

        List<clUsuarioE> ListaUsuario = new List<clUsuarioE>();
        for (int i = 0; i < tblDatos.Rows.Count; i++)
        {
            clUsuarioE objPasDatos = new clUsuarioE();
            objPasDatos.IdUsuario = int.Parse(tblDatos.Rows[i][0].ToString());
            objPasDatos.Documento = tblDatos.Rows[i][1].ToString();
            objPasDatos.Nombre = tblDatos.Rows[i][2].ToString();
            objPasDatos.Apellido = tblDatos.Rows[i][3].ToString();
            objPasDatos.Telefono = tblDatos.Rows[i][4].ToString();
            objPasDatos.Email = tblDatos.Rows[i][5].ToString();
            objPasDatos.Clave = tblDatos.Rows[i][6].ToString();
            objPasDatos.Ciudad = tblDatos.Rows[i][7].ToString();
            objPasDatos.Direccion = tblDatos.Rows[i][8].ToString();
            objPasDatos.IdRol = int.Parse(tblDatos.Rows[i][9].ToString());
            ListaUsuario.Add(objPasDatos);
        }
        return ListaUsuario;
    }

    //Metodo Actualizar Usuario
    public int mtdActualizarUsuario(clUsuarioE objDatos)
    {
        string consulta = "Update Usuario set Documento = '" + objDatos.Documento + "', Nombre =  '" + objDatos.Nombre + "', Apellido = '" + objDatos.Apellido + "', Telefono = '" + objDatos.Telefono + "', Email = '" + objDatos.Email + "', Ciudad = '" + objDatos.Ciudad + "', Direccion = '" + objDatos.Direccion + "'where IdUsuario = '" + objDatos.IdUsuario + "'";
        clMetodoCN objMtdCN = new clMetodoCN();
        int regis = objMtdCN.mtdConectado(consulta);
        return regis;
    }
}