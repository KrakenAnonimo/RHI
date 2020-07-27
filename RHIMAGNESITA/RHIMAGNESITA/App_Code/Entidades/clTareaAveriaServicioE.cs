using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clTareaAveriaServicioE
/// </summary>
public class clTareaAveriaServicioE
{
    //Atributos Tabla TareaAS
    public int IdTareaAS { get; set; }
    public string NombreAS { get; set; }
    public string Duracion { get; set; }
    public string FechaEjecucion { get; set; }
    public int IdOrdenMttoP { get; set; }
    public int IdOrdenMttoC { get; set; }
}