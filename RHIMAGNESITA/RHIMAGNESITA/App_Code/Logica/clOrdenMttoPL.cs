using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clOrdenMttoPL
/// </summary>
public class clOrdenMttoPL
{
    //Metodo registrar OrdenMttoP
    public int mtdRegistrarOrdenMttoP(clOrdenMttoPE objDatos)
    {
        clOrdenMttoP objOrdenMttoPD = new clOrdenMttoP();
        int regi = objOrdenMttoPD.mtdRegistrarOrdenMttoP(objDatos);
        return regi;
    }

    //Metodo Listar OrdenMttoP
    public List<clOrdenMttoPE> mtdListarOrdenMttoP()
    {
        clOrdenMttoP objOrdenMttoPD = new clOrdenMttoP();
        List<clOrdenMttoPE> ListaOrdenMttoP = new List<clOrdenMttoPE>();
        ListaOrdenMttoP = objOrdenMttoPD.mtdListarOrdenMttoP();
        return ListaOrdenMttoP;
    }

    //Metodo Eliminar OrdenMttoP
    public int mtdEliminarOrdenMttoP(clOrdenMttoPE objDatos)
    {
        clOrdenMttoP objOrdenMttoPD = new clOrdenMttoP();
        int eliminar = objOrdenMttoPD.mtdEliminarOrdenMttoP(objDatos);
        return eliminar;
    }

    //Metodo Actualizar OrdenMttoP
    public int mtdActualizarOrdenMttoP(clOrdenMttoPE objDatos)
    {
        clOrdenMttoP objOrdenMttoPD = new clOrdenMttoP();
        int Actualizar = objOrdenMttoPD.mtdActualizarOrdenMttoP(objDatos);
        return Actualizar;
    }
}