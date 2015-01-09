using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

/// <summary>
/// Descripción breve de Identitat
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
    
    static public void agregarUsuaris(String nom, String contrasenya, String tlf)
    {
        IdentityUser usuari = new IdentityUser();

        usuari.UserName = nom;
        usuari.Email = nom + "@usuarilandia.com";
        usuari.PhoneNumber = tlf;

        userManager.Create(usuari, contrasenya);
    }

    static public void agregarUsuarisARols(String nomRol, List<String> usuaris)
    {
        IdentityRole rol = new IdentityRole();

        rol.Name = nomRol;

        foreach(String nomUsuari in usuaris)
        {
            IdentityUser usuari = userManager.FindByName(nomUsuari);
            IdentityUserRole usuariRol = new IdentityUserRole();

            usuariRol.RoleId = rol.Id;
            usuariRol.UserId = usuari.Id;

            rol.Users.Add(usuariRol);
        }

        roleManager.Create(rol);
    }

    static public void eliminarUsuaris(String nomRol)
    {
        List<IdentityUser> usuaris = llistarUsuaris();
        Byte index;

        foreach(IdentityUser usuari in usuaris)
        {
            List<IdentityUserRole> usuarisRol = usuari.Roles.ToList();

            index = 0;

            while (index < usuarisRol.Count())
            {
                IdentityRole rol = roleManager.FindById(usuarisRol[index].RoleId);

                if (rol.Name == nomRol)
                {
                    userManager.Delete(usuari);
                }
                index++;
            }
        }
    }

    static public void eliminarRol(String nomRol)
    {
        List<IdentityRole> rols = llistarRols();

        foreach(IdentityRole rol in rols)
        {
            if(rol.Name == nomRol)
            {
                roleManager.Delete(rol);
            }
        }
    }

    static public void modificarUsuarisPerRol(String nomRol)
    {
        List<IdentityUserRole> usuarisRol = llistarUsuarisRol(nomRol);

        foreach(IdentityUserRole usuariRol in usuarisRol)
        {
            IdentityUser usuari = userManager.FindById(usuariRol.UserId);

            usuari.Email = usuari.UserName + "@desterrats.com";
            usuari.PhoneNumber = "034." + usuari.PhoneNumber;

            userManager.Update(usuari);
        }
    }
}