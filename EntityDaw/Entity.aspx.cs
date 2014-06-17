using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;

public partial class Entity : System.Web.UI.Page
{
    aulacepEntities contexto = new aulacepEntities();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            var ciclos =
                from c in contexto.cicles
                orderby c.codi descending
                select c;

            DropDownListCiclos.DataSource = ciclos.ToList();
            DropDownListCiclos.DataTextField = "codi";
            DropDownListCiclos.DataValueField = "id";
            DropDownListCiclos.DataBind();

        }
    }
    protected void DropDownListCiclos_SelectedIndexChanged(object sender, EventArgs e)
    {
        int id_cicle = int.Parse(DropDownListCiclos.SelectedValue);

        var ciclo =
            from c in contexto.cicles
            where c.id == id_cicle
            orderby c.id descending
            select c;

        GridViewCursos.DataSource = ciclo.ToList()[0].cursos.ToList();
        GridViewCursos.DataBind();

    }
    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        string mensaje;

        if (e.Exception != null)
        {
            SqlException ex = (SqlException)e.Exception.InnerException;
            mensaje = ErroresSQL.Mensaje(ex);
            e.ExceptionHandled = true;
        }
    }
}