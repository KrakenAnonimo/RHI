using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clUsuarioL
/// </summary>
public class clUsuarioL
{
    //Metodo registrar Usuario
    public int mtdRegistrarUsuario(clUsuarioE objDatos)
    {
        clUsuario objUsuarioD = new clUsuario();
        int regi = objUsuarioD.mtdRegistrarUsuario(objDatos);
        return regi;
    }

    //Metodo Listar Usuario
    public List<clUsuarioE> mtdListarUsuario()
    {
        clUsuario objUsuarioD = new clUsuario();
        List<clUsuarioE> ListaUsuario = new List<clUsuarioE>();
        ListaUsuario = objUsuarioD.mtdListarUsuario();
        return ListaUsuario;
    }

    //Metodo Eliminar Usuario
    public int mtdEliminarUsuario(clUsuarioE objDatos)
    {
        clUsuario objUsuarioD = new clUsuario();
        int eliminar = objUsuarioD.mtdEliminarUsuario(objDatos);
        return eliminar;
    }

    //Metodo Actualizar Usuario
    public int mtdActualizarUsuario(clUsuarioE objDatos)
    {
        clUsuario objUsuarioD = new clUsuario();
        int Actualizar = objUsuarioD.mtdActualizarUsuario(objDatos);
        return Actualizar;
    }

    //Metodo Actualizar Usuario
    public int mtdActualizarUsuarioPerfil(clUsuarioE objDatos)
    {
        clUsuario objUsuarioP = new clUsuario();
        int Actualizar = objUsuarioP.mtdActualizarUsuarioPerfil(objDatos);
        return Actualizar;
    }


}