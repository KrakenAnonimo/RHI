using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clRolL
/// </summary>
public class clRolL
{
    //Metodo registrar rol
    public int mtdRegistrarRol(clRolE objDatos)
    {
        clRol objRolD = new clRol();
        int regi = objRolD.mtdRegistrarRol(objDatos);
        return regi;
    }

    //Metodo Listar Rol
    public List<clRolE> mtdListarAprendiz()
    {
        clRol objRolD = new clRol();
        List<clRolE> ListaRol = new List<clRolE>();
        ListaRol = objRolD.mtdListarRol();
        return ListaRol;
    }

    //Metodo Eliminar Rol
    public int mtdEliminarRol(clRolE objDatos)
    {
        clRol objRolD = new clRol();
        int eliminar = objRolD.mtdEliminarRol(objDatos);
        return eliminar;
    }

    //Metodo Actualizar Rol
    public int mtdActualizarRol(clRolE objDatos)
    {
        clRol objRolD = new clRol();
        int Actualizar = objRolD.mtdActualizarRol(objDatos);
        return Actualizar;
    }
}