using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clRolL
/// </summary>
public class clRolL
{
    public List<clRolE> mtdListarR()
    {
        clUsuario objProD = new clUsuario();
        List<clRolE> Prog = new List<clRolE>();
        Prog = objProD.();
        return Prog;
    }
}