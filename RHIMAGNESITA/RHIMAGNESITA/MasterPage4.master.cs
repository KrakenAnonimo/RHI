﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage4 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        /*if (Session["rol"].ToString() != "Admin")
        {
            Response.Redirect("~/ErrorASP.aspx");
        }*/
    }
}
