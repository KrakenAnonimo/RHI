using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clTareaAveriaServicioEL
/// </summary>
public class clTareaAveriaServicioEL
{
    //Metodo registrar TareaAS
    public int mtdRegistrarTareaAS(clTareaAveriaServicioE objDatos)
    {
        clTareaAveriaServicio objTareaASD = new clTareaAveriaServicio();
        int regi = objTareaASD.mtdRegistrarTareaAS(objDatos);
        return regi;
    }

    //Metodo Listar TareaAS
    public List<clTareaAveriaServicioE> mtdListarTareaAS()
    {
        clTareaAveriaServicio objTareaASD = new clTareaAveriaServicio();
        List<clTareaAveriaServicioE> ListaTareaAS = new List<clTareaAveriaServicioE>();
        ListaTareaAS = objTareaASD.mtdListarTareaAS();
        return ListaTareaAS;
    }

    //Metodo Eliminar TareaAS
    public int mtdEliminarTareaAS(clTareaAveriaServicioE objDatos)
    {
        clTareaAveriaServicio objTareaASD = new clTareaAveriaServicio();
        int eliminar = objTareaASD.mtdEliminarTareaAS(objDatos);
        return eliminar;
    }

    //Metodo Actualizar TareaAS
    public int mtdActualizarTareaAS(clTareaAveriaServicioE objDatos)
    {
        clTareaAveriaServicio objTareaASD = new clTareaAveriaServicio();
        int Actualizar = objTareaASD.mtdActualizarTareaAS(objDatos);
        return Actualizar;
    }
}