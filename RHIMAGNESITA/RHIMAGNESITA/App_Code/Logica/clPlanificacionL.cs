using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clPlanificacionL
/// </summary>
public class clPlanificacionL
{
    //Metodo registrar Planificacion
    public int mtdRegistrarPlanificacion(clPlanificacionE objDatos)
    {
        clPlanificacion objPlanificacionD = new clPlanificacion();
        int regi = objPlanificacionD.mtdRegistrarPlanificacion(objDatos);
        return regi;
    }

    //Metodo Listar Planificacion
    public List<clPlanificacionE> mtdListarPlanificacion()
    {
        clPlanificacion objPlanificacionD = new clPlanificacion();
        List<clPlanificacionE> ListaPlanificacion = new List<clPlanificacionE>();
        ListaPlanificacion = objPlanificacionD.mtdListarPlanificacion();
        return ListaPlanificacion;
    }

    //Metodo Eliminar Planificacion
    public int mtdEliminarPlanificacion(clPlanificacionE objDatos)
    {
        clPlanificacion objPlanificacionD = new clPlanificacion();
        int eliminar = objPlanificacionD.mtdEliminarPlanificacion(objDatos);
        return eliminar;
    }

    //Metodo Actualizar Planificacion
    public int mtdActualizarPlanificacion(clPlanificacionE objDatos)
    {
        clPlanificacion objPlanificacionD = new clPlanificacion();
        int Actualizar = objPlanificacionD.mtdActualizarPlanificacion(objDatos);
        return Actualizar;
    }
}