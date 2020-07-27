using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clEjecucionME
/// </summary>
public class clEjecucionME
{
    //Atributos Tabla EjecucionM
    public int IdEjecucionM { get; set; }
    public string Estado { get; set; }
    public string FechaEjecucion { get; set; }
    public string Duracion { get; set; }
    public string Observaciones { get; set; }
    public int IdTareaMtto { get; set; }
    public int IdOrdenMttoP { get; set; }
}