using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clEjecucionML
/// </summary>
public class clEjecucionML
{
    //Metodo registrar EjecucionM
    public int mtdRegistrarEjecucionM(clEjecucionME objDatos)
    {
        clEjecucionM objEjecucionMD = new clEjecucionM();
        int regi = objEjecucionMD.mtdRegistrarEjecucionM(objDatos);
        return regi;
    }

    //Metodo Listar EjecucionM
    public List<clEjecucionME> mtdListarEjecucionM()
    {
        clEjecucionM objEjecucionMD = new clEjecucionM();
        List<clEjecucionME> ListaEjecucionM = new List<clEjecucionME>();
        ListaEjecucionM = objEjecucionMD.mtdListarEjecucionM();
        return ListaEjecucionM;
    }

    //Metodo Eliminar EjecucionM
    public int mtdEliminarEjecucionM(clEjecucionME objDatos)
    {
        clEjecucionM objEjecucionMD = new clEjecucionM();
        int eliminar = objEjecucionMD.mtdEliminarEjecucionM(objDatos);
        return eliminar;
    }

    //Metodo Actualizar EjecucionM
    public int mtdActualizarEjecucionM(clEjecucionME objDatos)
    {
        clEjecucionM objEjecucionMD = new clEjecucionM();
        int Actualizar = objEjecucionMD.mtdActualizarEjecucionM(objDatos);
        return Actualizar;
    }
}