using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clLogin
/// </summary>
public class clLogin
{
    //Metodo registrar Usuario-Login
    public int mtdRegistrarUsuarioLogin(clLoginE objLogE)
    {
        string sqlInsert = "insert into Usuario(Nombre,Telefono,Email,Clave)" +
            "Values('" + objLogE.Nombre + "','" + objLogE.Telefono + "','" + objLogE.Email + "','" + objLogE.Clave + "')";


        clMetodoCN objMtdCN = new clMetodoCN();
        int result = objMtdCN.mtdConectado(sqlInsert);

        return result;

    }
}