using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clRegistroU
/// </summary>
public class clRegistroU
{
    //Metodo registrar Usuario
    public int mtdRegistrarUsuarioLogin(clRegistroUE objUsuaRE)
    {
        string sqlInsert = "insert into Usuario(Documento,Nombre,Apellido,Telefono,Email,Clave)" +
            "Values('" + objUsuaRE.Documento + "','" + objUsuaRE.Nombre + "','" + objUsuaRE.Apellido + "','" + objUsuaRE.Telefono + "','" + objUsuaRE.Email + "','" + objUsuaRE.Clave + "')";


        clMetodoCN objMtdCN = new clMetodoCN();
        int result = objMtdCN.mtdConectado(sqlInsert);

        return result;

    }
}