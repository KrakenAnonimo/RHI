using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clTareaMttoL
/// </summary>
public class clTareaMttoL
{
    //Metodo registrar TareaMtto
    public int mtdRegistrarTareaMtto(clTareaMttoE objDatos)
    {
        clTareaMtto objTareaMttoD = new clTareaMtto();
        int regi = objTareaMttoD.mtdRegistrarTareaMtto(objDatos);
        return regi;
    }

    //Metodo Listar TareaMtto
    public List<clTareaMttoE> mtdListarTareaMtto()
    {
        clTareaMtto objTareaMttoD = new clTareaMtto();
        List<clTareaMttoE> ListaTareaMtto = new List<clTareaMttoE>();
        ListaTareaMtto = objTareaMttoD.mtdListarTareaMtto();
        return ListaTareaMtto;
    }

    //Metodo Eliminar TareaMtto
    public int mtdEliminarTareaMtto(clTareaMttoE objDatos)
    {
        clTareaMtto objTareaMttoD = new clTareaMtto();
        int eliminar = objTareaMttoD.mtdEliminarTareaMtto(objDatos);
        return eliminar;
    }

    //Metodo Actualizar TareaMtto
    public int mtdActualizarTareaMtto(clTareaMttoE objDatos)
    {
        clTareaMtto objTareaMttoD = new clTareaMtto();
        int Actualizar = objTareaMttoD.mtdActualizarTareaMtto(objDatos);
        return Actualizar;
    }
    
}