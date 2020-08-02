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
        clArea objAreaD = new clArea();
        int regi = objAreaD.mtdRegistrarArea(objDatos);
        return regi;
    }

    //Metodo Listar Area
    public List<clAreaE> mtdListarArea()
    {
        clArea objAreaD = new clArea();
        List<clAreaE> ListaArea = new List<clAreaE>();
        ListaArea = objAreaD.mtdListarArea();
        return ListaArea;
    }

    //Metodo Eliminar Area
    public int mtdEliminarArea(clAreaE objDatos)
    {
        clArea objAreaD = new clArea();
        int eliminar = objAreaD.mtdEliminarArea(objDatos);
        return eliminar;
    }

    //Metodo Actualizar Area
    public int mtdActualizarArea(clAreaE objDatos)
    {
        clArea objAreaD = new clArea();
        int Actualizar = objAreaD.mtdActualizarArea(objDatos);
        return Actualizar;
    }
}