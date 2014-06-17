using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data.SqlClient;

/// <summary>
/// Descripción breve de ErroresSQL
/// </summary>
static public class ErroresSQL
{
    static public string Mensaje(SqlException ex)
    {
        string mensaje;

        switch (ex.Number)
        {
            case 2627:
                mensaje = "Ciclo duplicado";
                break;
            default:
                mensaje = ex.Number + " - " + ex.Message;
                break;
        }
        return (mensaje);
    }
}