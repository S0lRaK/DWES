using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity.EntityFramework;

public partial class Examen : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            refrescarUsuaris();
            refrescarRols();
        }
    }

    private void refrescarUsuaris()
    {
        List<IdentityUser> usuaris = Identitat.llistarUsuaris();
        GridViewUsuaris.DataSource = usuaris;
        GridViewUsuaris.DataBind();
    }

    private void refrescarRols()
    {
        List<IdentityRole> rols = Identitat.llistarRols();
        GridViewRols.DataSource = rols;
        GridViewRols.DataBind();
    }
    
    protected void ButtonProleg_Click(object sender, EventArgs e)
    {
        Identitat.agregarUsuaris("artur", "excalibur00", "93.480.00.00");
        Identitat.agregarUsuaris("ginebra", "bonica00", "93.480.00.10");
        Identitat.agregarUsuaris("lucrecia", "Fill01", "93.480.00.01");
        Identitat.agregarUsuaris("alexandre", "Fill02", "93.480.00.02");
        Identitat.agregarUsuaris("lancelot", "Fill03", "93.480.00.03");
        Identitat.agregarUsuaris("maria", "Fill04", "93.480.00.04");
        Identitat.agregarUsuaris("ricard", "Fill05", "93.480.00.05");

        List<String> usuaris = new List<String>();

        usuaris.Add("artur");
        usuaris.Add("ginebra");
        Identitat.agregarUsuarisARols("reis", usuaris);

        usuaris = new List<String>();

        usuaris.Add("lucrecia");
        usuaris.Add("alexandre");
        usuaris.Add("lancelot");
        usuaris.Add("maria");
        usuaris.Add("ricard");
        Identitat.agregarUsuarisARols("princeps", usuaris);

        refrescarUsuaris();
        refrescarRols();
    }

    protected void ButtonCapitol1_Click(object sender, EventArgs e)
    {
        Identitat.eliminarUsuaris("reis");

        List<String> usuaris = new List<String>();
        usuaris.Add("alexandre");
        Identitat.agregarUsuarisARols("reis", usuaris);

        refrescarUsuaris();
        refrescarRols();
    }

    protected void ButtonCapitol2_Click(object sender, EventArgs e)
    {
        List<String> usuaris = new List<String>();
        usuaris.Add("lucrecia");
        usuaris.Add("lancelot");
        usuaris.Add("maria");
        usuaris.Add("ricard");
        Identitat.agregarUsuarisARols("desterrats", usuaris);

        Identitat.eliminarRol("princeps");

        refrescarUsuaris();
        refrescarRols();
    }

    protected void ButtonEpileg_Click(object sender, EventArgs e)
    {
        Identitat.modificarUsuarisPerRol("desterrats");

        refrescarUsuaris();
    }
}