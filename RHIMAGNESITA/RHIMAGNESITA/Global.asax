<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Código que se ejecuta al iniciarse la aplicación

    }

    void Application_End(object sender, EventArgs e)
    {
        //  Código que se ejecuta al cerrarse la aplicación

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Código que se ejecuta cuando se produce un error sin procesar

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Código que se ejecuta al iniciarse una nueva sesión

        Session["usuario"] = "NN";
        Session["idusuario"] = 0;
       Session["idPlanificacion"] = 0;
        Session["idTareaMtto"] = 0;
        Session["idElemento"] = 0;
        Session["idMaterial"] = 0;
        Session["idOrdenMttoC"] = 0;
        Session["idOrdenMttoP"] = 0;
        Session["idEjecucionM"] = 0;
        
        
    }

    void Session_End(object sender, EventArgs e)
    {
        // Código que se ejecuta cuando finaliza una sesión. 
        // Nota: el evento Session_End se produce solamente con el modo sessionstate
        // se establece como InProc en el archivo Web.config. Si el modo de sesión se establece como StateServer
        // o SQLServer, el evento no se produce.

    }

</script>
