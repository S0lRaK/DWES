using System;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ciclos : System.Web.UI.Page
{
    aulacepEntities contexto = new aulacepEntities();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonEjecutar_Click(object sender, EventArgs e)
    {
        try
        {
            //Ejemplo de inserción
            var ciclo = new cicles();

            ciclo.id = int.Parse(TextBoxIdentificador.Text);
            ciclo.codi = TextBoxCodigo.Text;
            ciclo.descripcio = TextBoxDescripcion.Text;

            contexto.cicles.Add(ciclo);
            contexto.SaveChanges();
        }
        catch (DbUpdateException ex)
        {
            string mensaje;

             SqlException sqlEx = (SqlException) ex.InnerException.InnerException;

             mensaje = ErroresSQL.Mensaje(sqlEx);
             
             LabelMensaje.Text = mensaje;
             
        }

        //Ejemplo de borrado
        //int id_ciclo = int.Parse(TextBoxIdentificador.Text);

        //var ciclos = from c in contexto.cicles
        //             where c.id == id_ciclo
        //             select c;

        //var ciclo = ciclos.First();

        //contexto.cicles.Remove(ciclo);

        //contexto.SaveChanges();


    }
}