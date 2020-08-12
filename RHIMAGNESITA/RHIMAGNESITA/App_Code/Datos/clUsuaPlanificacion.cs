using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clUsuaPlanificacion
/// </summary>
public class clUsuaPlanificacion
{
 
        //Metodo registrar Elemento
        public int mtdRegistrarUsuaPlanificacion(clUsuaPlanificacionE objDatos)
        {
            string sqlInsert = "insert into UsuaPlanificacion(IdUsuario, IdPlanificacion)" +
            "values('" + objDatos.IdUsuario + "','" + objDatos.IdPlanificacion + "')";
        
            clMetodoCN objMtdCN = new clMetodoCN(); 
            int result = objMtdCN.mtdConectado(sqlInsert);

            return result;
        }
  
}