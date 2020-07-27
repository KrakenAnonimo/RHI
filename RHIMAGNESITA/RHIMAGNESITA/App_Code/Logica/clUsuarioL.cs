using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clUsuarioL
/// </summary>
public class clUsuarioL
{
    public int mtdRegistrarUsuario(clUsuarioE objDatos)
    {
        clUsuario objUsuarioD = new clUsuario();
        int regi = objUsuarioD.mtdRegistrarUsuario(objDatos);
        return regi;
    }

   




}