using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de UsuaPlanificacionL
/// </summary>
public class UsuaPlanificacionL
{
    //Metodo registrar UsuaPlanificacion
    public int mtdRegistrarclUsuaPlanificacion(clUsuaPlanificacionE objDatos)
    {
        clUsuaPlanificacion objUsuaPlanificacionD = new clUsuaPlanificacion();
        int regi = objUsuaPlanificacionD.mtdRegistrarUsuaPlanificacion(objDatos);
        return regi;
    }

    //Metodo Listar UsuaPlanificacion
    public List<clUsuaPlanificacionE> mtdListarUsuaPlanificacion()
    {
        clUsuaPlanificacion objUsuaPlanificacionD = new clUsuaPlanificacion();
        List<clUsuaPlanificacionE> ListaUsuaPlanificacion = new List<clUsuaPlanificacionE>();
        ListaUsuaPlanificacion = objUsuaPlanificacionD.mtdListarUsuaPlanificacion();
        return ListaUsuaPlanificacion;
    }

    //Metodo Eliminar UsuaPlanificacion
    public int mtdEliminarUaPlanificacion(clUsuaPlanificacionE objDatos)
    {
        clUsuaPlanificacion objUsuaPlanificacionD = new clUsuaPlanificacion();
        int eliminar = objUsuaPlanificacionD.mtdEliminarUsuaPlanificacion(objDatos);
        return eliminar;
    }

    //Metodo Actualizar UsuaPlanificacion
    public int mtdActualizarUsuaPlanificacion(clUsuaPlanificacionE objDatos)
    {
        clUsuaPlanificacion objUsuaPlanificacionD = new clUsuaPlanificacion();
        int Actualizar = objUsuaPlanificacionD.mtdActualizarUsuaPlanificacion(objDatos);
        return Actualizar;
    }
}