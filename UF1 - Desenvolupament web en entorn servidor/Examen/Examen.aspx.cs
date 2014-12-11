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
    static UserStore<IdentityUser> userStore = new UserStore<IdentityUser>();
    static UserManager<IdentityUser> userManager = new UserManager<IdentityUser>(userStore);

    static RoleStore<IdentityRole> roleStore = new RoleStore<IdentityRole>();
    static RoleManager<IdentityRole> roleManager = new RoleManager<IdentityRole>(roleStore);

    String[] nomUsuaris = { "adomingo", 
                              "jserrano", 
                              "csegura", 
                              "umendez", 
                              "amartinez", 
                              "xgalcera", 
                              "jlgarcia" };
    String[] emailUsuaris = {"adomingo@cepnet.net", 
                                "jserrano@cepnet.net", 
                                "csegura@cepnet.net", 
                                "umendez@cepnet.net", 
                                "amartinez@cepnet.net",
                                "xgalcera@cepnet.net",
                                "jlgarcia@cepnet.net"};
    String[] tlfUsuaris = {"93.445.12.67",
                            "93.445.12.68",
                            "93.445.12.69",
                            "93.445.12.70",
                            "93.445.12.71",
                            "93.445.12.72",
                            "93.445.12.73"};
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            mostrarDadesGrid();
        }
    }

    private void mostrarDadesGrid()
    {
        List<IdentityUser> users = userManager.Users.ToList();
        GridViewUsuaris.DataSource = users;
        GridViewUsuaris.DataBind();
        List<IdentityRole> roles = roleManager.Roles.ToList();
        GridViewRols.DataSource = roles;
        GridViewRols.DataBind();
    }

    protected void ButtonAltaUsuaris_Click(object sender, EventArgs e)
    {
        //List<IdentityUser> usuaris;
        Byte index = 0;

        foreach(String nomUsuari in nomUsuaris)
        {
            IdentityUser usuari = new IdentityUser();
            
            usuari.UserName = nomUsuaris[index];
            usuari.Email = emailUsuaris[index];
            usuari.PhoneNumber = tlfUsuaris[index];
            index++;

            userManager.Create(usuari, "Pepe11");
        }

        mostrarDadesGrid();
    }

    protected void ButtonAltaRols_Click(object sender, EventArgs e)
    {
        //IdentityRole
    }
}