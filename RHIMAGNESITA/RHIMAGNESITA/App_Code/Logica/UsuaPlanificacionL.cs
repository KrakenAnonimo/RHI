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
    public int mtdRegistrarUsuaPlanificacion(clUsuaPlanificacionE objDatos)
    {
        clUsuaPlanificacion objUsuaPlanificacionD = new clUsuaPlanificacion();
        int regi = objUsuaPlanificacionD.mtdRegistrarUsuaPlanificacion(objDatos);
        return regi;
    }
    //Metodo Listar UsuaPlanificacion
    public List<clUsuaPlanificacionE> mtdListarUsuaPlanificacion()
    {
        clUsuaPlanificacion objUsuaPlanificacion = new clUsuaPlanificacion();
        List<clUsuaPlanificacionE> ListaUsuaPlanificacion = new List<clUsuaPlanificacionE>();
        ListaUsuaPlanificacion = objUsuaPlanificacion.mtdListarUsuaPlanificacion();
        return ListaUsuaPlanificacion;
    }

}