using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clAreaL
/// </summary>
public class clAreaL
{
    //Metodo registrar Area
    public int mtdRegistrarArea(clAreaE objDatos)
    {
        clArea objArea = new clArea();
        int regi = objArea.mtdRegistrarArea(objDatos);
        return regi;
    }

    //Metodo Listar Area
    public List<clAreaE> mtdListarUsuaPlanificacion()
    {
        clArea objArea = new clArea();
        List<clAreaE> ListaArea = new List<clAreaE>();
        ListaArea = objArea.mtdListarArea();
        return ListaArea;
    }

    //Metodo Eliminar Area
    public int mtdEliminarArea(clAreaE objDatos)
    {
        clArea objArea = new clArea();
        int eliminar = objArea.mtdEliminarArea(objDatos);
        return eliminar;
    }

    //Metodo Actualizar Area
    public int mtdActualizarArea(clAreaE objDatos)
    {
        clArea objArea = new clArea();
        int Actualizar = objArea.mtdActualizarArea(objDatos);
        return Actualizar;
    }
}