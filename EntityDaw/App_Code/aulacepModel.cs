﻿//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

public partial class assignatures
{
    public assignatures()
    {
        this.cursos = new HashSet<cursos>();
    }

    public int id { get; set; }
    public string codi { get; set; }
    public string descripcio { get; set; }
    public int hores { get; set; }

    public virtual ICollection<cursos> cursos { get; set; }
}

public partial class cicles
{
    public cicles()
    {
        this.cursos = new HashSet<cursos>();
    }

    public int id { get; set; }
    public string codi { get; set; }
    public string descripcio { get; set; }

    public virtual ICollection<cursos> cursos { get; set; }
}

public partial class cursos
{
    public cursos()
    {
        this.assignatures = new HashSet<assignatures>();
    }

    public int id { get; set; }
    public string codi { get; set; }
    public string descripcio { get; set; }
    public int id_cicle { get; set; }

    public virtual cicles cicles { get; set; }
    public virtual ICollection<assignatures> assignatures { get; set; }
}

public partial class sysdiagrams
{
    public string name { get; set; }
    public int principal_id { get; set; }
    public int diagram_id { get; set; }
    public Nullable<int> version { get; set; }
    public byte[] definition { get; set; }
}

public partial class usuarios
{
    public int id { get; set; }
    public string nick { get; set; }
    public string contrasenya { get; set; }
    public string correo { get; set; }
    public string direccion { get; set; }
    public string telefono { get; set; }
}
