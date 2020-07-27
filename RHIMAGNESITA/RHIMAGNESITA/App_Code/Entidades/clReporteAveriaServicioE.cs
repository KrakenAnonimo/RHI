using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clReporteAveriaServicioE
/// </summary>
public class clReporteAveriaServicioE
{
    //Atributos Tabla ReporteAS
    public int IdReporteAS { get; set; }
    public int NumReporte { get; set; }
    public string Titulo { get; set; }
    public string Descripcion { get; set; }
    public string FechaReporte { get; set; }
    public int IdElemento { get; set; }
    public int IdUsuario { get; set; }
}