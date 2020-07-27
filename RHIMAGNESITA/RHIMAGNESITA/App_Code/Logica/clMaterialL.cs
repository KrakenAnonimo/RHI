using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clMaterialL
/// </summary>
public class clMaterialL
{
    //Metodo registrar Material
    public int mtdRegistrarMaterial(clMaterialE objDatos)
    {
        clMaterial objMaterialD = new clMaterial();
        int regi = objMaterialD.mtdRegistrarMaterial(objDatos);
        return regi;
    }

    //Metodo Listar Material
    public List<clMaterialE> mtdListarMaterial()
    {
        clMaterial objMaterialD = new clMaterial();
        List<clMaterialE> ListaMaterial = new List<clMaterialE>();
        ListaMaterial = objMaterialD.mtdListarMaterial();
        return ListaMaterial;
    }

    //Metodo Eliminar Material
    public int mtdEliminarMaterial(clMaterialE objDatos)
    {
        clMaterial objMaterialD = new clMaterial();
        int eliminar = objMaterialD.mtdEliminarMaterial(objDatos);
        return eliminar;
    }

    //Metodo Actualizar Material
    public int mtdActualizarMaterial(clMaterialE objDatos)
    {
        clMaterial objMaterialD = new clMaterial();
        int Actualizar = objMaterialD.mtdActualizarMaterial(objDatos);
        return Actualizar;
    }

}