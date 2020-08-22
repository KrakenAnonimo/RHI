﻿<%@ Application Language="C#" %>

<script RunAt="server">

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
        Session["idUsuario"] = 0;
        //Sesion de correo y clave de acceso
        Session["Correo"] = 0;
        Session["Clave"] = 0;
        //Sesion de roles de acceso
        Session["rol"] = ("Admin" + "Supervisor" + "Planificador" + "Tecnico" + "Soldador" + "Siso");
        Session["idPlanificacion"] = 0;
        Session["idTareaMtto"] = 0;
        Session["idElemento"] = 0;
        Session["idMaterial"] = 0;
        Session["idOrdenMttoC"] = 0;
        Session["idOrdenMttoP"] = 0;
        Session["idEjecucionM"] = 0;
        Session["idTareaAVS"] = 0;
        Session["idReporteAVS"] = 0;
        Session["idOrdenMttoP"] = 0;
        Session["idOrdenMttoC"] = 0;
        Session["idArea"] = 0;
    }

    void Session_End(object sender, EventArgs e)
    {
        // Código que se ejecuta cuando finaliza una sesión. 
        // Nota: el evento Session_End se produce solamente con el modo sessionstate
        // se establece como InProc en el archivo Web.config. Si el modo de sesión se establece como StateServer
        // o SQLServer, el evento no se produce.

    }

</script>
