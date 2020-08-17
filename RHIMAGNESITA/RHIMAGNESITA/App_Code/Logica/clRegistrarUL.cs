using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clRegistrarU
/// </summary>
public class clRegistrarUL
{
    public int mtdRegistrarUsuarioLogin(clRegistroUE objDatos)
    {
        clRegistroU objUsuarioRD = new clRegistroU();
        int regi = objUsuarioRD.mtdRegistrarUsuarioLogin(objDatos);
        return regi;
    }
}