using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clUsuario
/// </summary>
public class clUsuario
{
    public int mtdRegistrarUsuario(clUsuarioE objUsuaE)
    {
        string sqlInsert = "insert into Usuario(Documento,Nombre,Apellido,Telefono,Email,Clave,Ciudad,Direccion,IdRol)" +
            "Values('" + objUsuaE.Documento + "','" + objUsuaE.Nombre + "','" + objUsuaE.Apellido + "','" + objUsuaE.Telefono + "','" + objUsuaE.Email + "','" + objUsuaE.Clave + "','" + objUsuaE.Ciudad + "','" + objUsuaE.Direccion + "'," + objUsuaE.IdRol + ")";


        clMetodoCN objMtdCN = new clMetodoCN();
        int result = objMtdCN.mtdConectado(sqlInsert);

        return result;

    }
}