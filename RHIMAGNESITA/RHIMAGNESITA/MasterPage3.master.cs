﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage3 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblUsuario.Text = Session["usuario"].ToString();

        /*if (Session["rol"].ToString() != "Admin")
        {
            Response.Redirect("~/ErrorASP.aspx");
        }*/
    }
}