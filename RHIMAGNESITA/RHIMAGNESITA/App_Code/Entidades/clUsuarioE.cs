using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clUsuarioE
/// </summary>
public class clUsuarioE
{
    //Atributos Tabla Usuarios
    public int IdUsuario { get; set; }
    public string Documento { get; set; }
    public string Nombre { get; set; }
    public string Apellido { get; set; }
    public string Telefono { get; set; }
    public string Email { get; set; }
    public string Clave { get; set; }
    public string Ciudad { get; set; }
    public string Direccion { get; set; }
    public int IdRol { get; set; }
}