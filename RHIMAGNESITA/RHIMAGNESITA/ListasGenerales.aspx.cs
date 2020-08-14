using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ListasGenerales : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnListaU_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ListaU.aspx");
    }
    protected void btnListaA_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ListaA.aspx");
    }

    protected void btnListaM_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ListaM.aspx");
    }

    protected void btnListaE_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ListaE.aspx");
    }

    protected void btnListaP_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ListaP.aspx");
    }

    protected void btnListaOC_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ListaOC.aspx");
    }

    protected void btnListaOP_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ListaOP.aspx");
    }

    protected void btnListaTM_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ListaTM.aspx");
    }

    protected void btnListaTAVS_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ListaTAVS.aspx");
    }

    protected void btnListaRAVS_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ListaRAVS.aspx");
    }

    protected void btnListaEM_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ListaEM.aspx");
    }
}