using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clOrdenMttoCE
/// </summary>
public class clOrdenMttoCE
{
    //Atributos Tabla OrdenMttoE
    public int IdOrdenMttoC { get; set; }
    public string NumOrden { get; set; }
    public string Disciplina { get; set; }
    public string FechaInicio { get; set; }
    public string HoraInicio { get; set; }
    public string FechaFinal { get; set; }
    public string HoraFinal { get; set; }
    public string Ejecutado { get; set; }
    public string TrabajoIE { get; set; }
    public string Observaciones { get; set; }
    public string Revisado { get; set; }
    public int IdOrdenMttoP { get; set; }
    public int IdUsuario { get; set; }
}