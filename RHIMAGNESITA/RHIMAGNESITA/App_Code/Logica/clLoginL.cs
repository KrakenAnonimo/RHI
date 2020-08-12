using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clLoginL
/// </summary>
public class clLoginL
{
    //Metodo registrar Usuario
    public int mtdRegistrarUsuarioLogin(clLoginE objDatos)
    {
        clLogin objLoginD = new clLogin();
        int regi = objLoginD.mtdRegistrarUsuarioLogin(objDatos);
        return regi;
    }
}