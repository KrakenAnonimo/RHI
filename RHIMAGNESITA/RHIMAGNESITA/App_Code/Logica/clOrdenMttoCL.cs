using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clOrdenMttoCL
/// </summary>
public class clOrdenMttoCL
{
    //Metodo registrar OrdenMttoC
    public int mtdRegistrarOrdenMttoC(clOrdenMttoCE objDatos)
    {
        clOrdenMttoC objOrdenMttoCD = new clOrdenMttoC();
        int regi = objOrdenMttoCD.mtdRegistrarOrdenMttoC(objDatos);
        return regi;
    }

    //Metodo Listar OrdenMttoC
    public List<clOrdenMttoCE> mtdListarOrdenMttoC()
    {
        clOrdenMttoC objOrdenMttoCD = new clOrdenMttoC();
        List<clOrdenMttoCE> ListaOrdenMttoC = new List<clOrdenMttoCE>();
        ListaOrdenMttoC = objOrdenMttoCD.mtdListarOrdenMttoC();
        return ListaOrdenMttoC;
    }

    //Metodo Eliminar OrdenMttoC
    public int mtdEliminarOrdenMttoC(clOrdenMttoCE objDatos)
    {
        clOrdenMttoC objOrdenMttoCD = new clOrdenMttoC();
        int eliminar = objOrdenMttoCD.mtdEliminarOrdenMttoC(objDatos);
        return eliminar;
    }

    //Metodo Actualizar OrdenMttoC
    public int mtdActualizarOrdenMttoC(clOrdenMttoCE objDatos)
    {
        clOrdenMttoC objOrdenMttoCD = new clOrdenMttoC();
        int Actualizar = objOrdenMttoCD.mtdActualizarOrdenMttoC(objDatos);
        return Actualizar;
    }
}