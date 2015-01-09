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

    static public List<IdentityUserRole> llistarUsuarisRol(String nomRol)
    {
        IdentityRole rol = roleManager.FindByName(nomRol);

        return rol.Users.ToList();
    }

    static public void agregarUsuaris(String nom, String tlf)
    {
        IdentityUser usuari = new IdentityUser();

        usuari.UserName = nom;
        usuari.Email = nom + "@cepnet.net";
        usuari.PhoneNumber = tlf;

        userManager.Create(usuari, "Pepe11");
    }

    static public void agregarRols(String nomRol, List<String> usuaris)
    {
        IdentityRole rol = new IdentityRole();

        rol.Name = nomRol;

        foreach (String nomUsuari in usuaris)
        {
            IdentityUser usuari = userManager.FindByName(nomUsuari);
            IdentityUserRole usuariRol = new IdentityUserRole();

            usuariRol.RoleId = rol.Id;
            usuariRol.UserId = usuari.Id;

            rol.Users.Add(usuariRol);
        }

        roleManager.Create(rol);
    }

    static public void modificarEmailUsuarisPerRol(String nomRol)
    {
        List<IdentityUserRole> usuarisRol = Identitat.llistarUsuarisRol(nomRol);

        foreach (IdentityUserRole usuariRol in usuarisRol)
        {
            IdentityUser usuari = userManager.FindById(usuariRol.UserId);

            usuari.Email = usuari.UserName + "@gmail.com";

            userManager.Update(usuari);
        }
    }

    static public void afegirUsuarisRol(String nomRol, List<String> usuaris)
    {

    }
}