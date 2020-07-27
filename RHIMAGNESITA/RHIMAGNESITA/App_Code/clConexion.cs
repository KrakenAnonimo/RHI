using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clConexion
/// </summary>
public class clConexion
{
    SqlConnection objConexBd = null;
    public SqlConnection mtdConexion()
    {
        string cadena = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\dbSwafay-RIH.mdf;Integrated Security=True";
        try
        {
            objConexBd = new SqlConnection(cadena);
        }
        catch (Exception)
        {
            HttpContext.Current.Response.Redirect("Error.aspx", true);
            objConexBd = null;
        }
        return objConexBd;
    }
}