﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ListasGenerales : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       if (Session["rol"].ToString() != "Admin" +"planificador" +"Supervisor" )
       {
           Response.Redirect("~/ErrorASP.aspx");
       }
    }

}