using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;

public partial class Examen : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            mostrarDadesGrid();
        }
    }

    private void mostrarDadesGrid()
    {
        List<IdentityUser> users = Identitat.llistarUsuaris();
        GridViewUsuaris.DataSource = users;
        GridViewUsuaris.DataBind();
        List<IdentityRole> roles = Identitat.llistarRols();
        GridViewRols.DataSource = roles;
        GridViewRols.DataBind();
    }

    protected void ButtonAltaUsuaris_Click(object sender, EventArgs e)
    {
        Identitat.agregarUsuaris("adomingo", "93.445.12.67");
        Identitat.agregarUsuaris("jserrano", "93.445.12.68");
        Identitat.agregarUsuaris("csegura", "93.445.12.69");
        Identitat.agregarUsuaris("umendez", "93.445.12.70");
        Identitat.agregarUsuaris("amartinez", "93.445.12.71");
        Identitat.agregarUsuaris("xgalcera", "93.445.12.72");
        Identitat.agregarUsuaris("jlgarcia", "93.445.12.73");

        mostrarDadesGrid();
    }

    protected void ButtonAltaRols_Click(object sender, EventArgs e)
    {
        List<String> usuaris = new List<String>();

        usuaris.Add("adomingo");
        usuaris.Add("jserrano");
        Identitat.agregarRols("mati", usuaris);

        usuaris = new List<string>();

        usuaris.Add("adomingo");
        usuaris.Add("csegura");
        usuaris.Add("umendez");
        usuaris.Add("amartinez");
        usuaris.Add("xgalcera");
        usuaris.Add("jlgarcia");
        Identitat.agregarRols("tarda", usuaris);

        mostrarDadesGrid();
    }
    
    protected void ButtonModificarUsuaris_Click(object sender, EventArgs e)
    {
        Identitat.modificarEmailUsuarisPerRol("mati");
        mostrarDadesGrid();
    }
    
    protected void ButtonModificarRols_Click(object sender, EventArgs e)
    {
        List<String> usuaris = new List<string>();
        usu.Add("xgalcera");
        usu.Add("jlgarcia");
        usu.Add("csegura");

        MiIdentity.AfegirUsuarisRol("mati", usu);
    }
}