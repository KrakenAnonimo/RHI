using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clReporteAveriaServicioL
/// </summary>
public class clReporteAveriaServicioL
{
    //Metodo registrar ReporteAS
    public int mtdRegistrarReporteAveriaServicio(clReporteAveriaServicioE objDatos)
    {
        clReporteAveriaServicio objReporteAveriaServicioD = new clReporteAveriaServicio();
        int regi = objReporteAveriaServicioD.mtdRegistrarReporteAS(objDatos);
        return regi;
    }

    //Metodo Listar ReporteAS
    public List<clReporteAveriaServicioE> mtdListarReporteAveriaServicio()
    {
        clReporteAveriaServicio objReporteAveriaServicioD = new clReporteAveriaServicio();
        List<clReporteAveriaServicioE> ListaReporteAveriaServicio = new List<clReporteAveriaServicioE>();
        ListaReporteAveriaServicio = objReporteAveriaServicioD.mtdListarReporteAS();
        return ListaReporteAveriaServicio;
    }

    //Metodo Eliminar ReporteAS
    public int mtdEliminarReporteAveriaServicio(clReporteAveriaServicioE objDatos)
    {
        clReporteAveriaServicio objReporteAveriaServicioD = new clReporteAveriaServicio();
        int eliminar = objReporteAveriaServicioD.mtdEliminarReporteAS(objDatos);
        return eliminar;
    }

    //Metodo Actualizar ReporteAS
    public int mtdActualizarReporteAveriaServicio(clReporteAveriaServicioE objDatos)
    {
        clReporteAveriaServicio objReporteAveriaServicioD = new clReporteAveriaServicio();
        int Actualizar = objReporteAveriaServicioD.mtdActualizarReporteAS(objDatos);
        return Actualizar;
    }
}