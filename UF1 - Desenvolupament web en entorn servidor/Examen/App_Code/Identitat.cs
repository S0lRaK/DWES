using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

/// <summary>
/// Classe que engloba les variables y funcions pròpies per a treballar amb Usuaris y Rols
/// </summary>
static public class Identitat
{
	public Identitat()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}

    static UserStore<IdentityUser> userStore = new UserStore<IdentityUser>();
    static UserManager<IdentityUser> userManager = new UserManager<IdentityUser>(userStore);

    static RoleStore<IdentityRole> roleStore = new RoleStore<IdentityRole>();
    static RoleManager<IdentityRole> roleManager = new RoleManager<IdentityRole>(roleStore);

    static public List<IdentityUser> llistarUsuaris()
    {
        return userManager.Users.ToList();
    }

    static public List<IdentityRole> llistarRols()
    {
        return roleManager.Roles.ToList();
    }

    static public void agregarUsuaris(String nom, String tlf)
    {
        IdentityUser usuari = new IdentityUser();

        usuari.UserName = nom;
        usuari.Email = nom + "@cepnet.net";
        usuari.PhoneNumber = tlf;

        userManager.Create(usuari, "Pepe11");
    }
}