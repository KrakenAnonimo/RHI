using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clElementoL
/// </summary>
public class clElementoL
{
    //Metodo registrar Elemento
    public int mtdRegistrarElemento(clElementoE objDatos)
    {
        clElemento objElementoD = new clElemento();
        int regi = objElementoD.mtdRegistrarElemento(objDatos);
        return regi;
    }

    //Metodo Listar Elemento
    public List<clElementoE> mtdListarElemento()
    {
        clElemento objElementoD = new clElemento();
        List<clElementoE> ListaElemento = new List<clElementoE>();
        ListaElemento = objElementoD.mtdListarElemento();
        return ListaElemento;
    }

    //Metodo Eliminar Elemento
    public int mtdEliminarElemento(clElementoE objDatos)
    {
        clElemento objElementoD = new clElemento();
        int eliminar = objElementoD.mtdEliminarElemento(objDatos);
        return eliminar;
    }

    //Metodo Actualizar Elemento
    public int mtdActualizarElemento(clElementoE objDatos)
    {
        clElemento objElementoD = new clElemento();
        int Actualizar = objElementoD.mtdActualizarElemento(objDatos);
        return Actualizar;
    }
}