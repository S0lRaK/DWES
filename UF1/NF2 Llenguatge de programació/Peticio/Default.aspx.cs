using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    /*
     * VARIABLES
     */ 
    String[] cursosMati = { "ASIX1A", "ASIX2A", "DAM1A", "DAM2A", "DAW1A", "DAW2A" };
    String[] cursosTarda = { "DAM1T", "DAM2T" };

    /*
     * ESDEVENIMENTS
     */ 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) // La pàgina es carregada per 1ª vegada
        {
            Calendar.SelectedDate = System.DateTime.Today;
            omplirCursos(RadioButtonListTornMatriculat, DropDownListCursMatriculat);
            omplirCursos(RadioButtonListTornNou, DropDownListCursNou);
        }
    }
    
    // Necessita la propietat 'AutoPostBack'= true
    protected void RadioButtonListTornMatriculat_SelectedIndexChanged(object sender, EventArgs e)
    {
        omplirCursos(RadioButtonListTornMatriculat, DropDownListCursMatriculat);
    }

    // Necessita la propietat 'AutoPostBack'= true
    protected void RadioButtonListTornNou_SelectedIndexChanged(object sender, EventArgs e)
    {
        omplirCursos(RadioButtonListTornNou, DropDownListCursNou);
    }

    protected void ButtonAfegirResum_Click(object sender, EventArgs e)
    {
        String resum = ""; // L'Strings ha d'estar inicialitzat perquè la primera operació que es realitza amb ell es concatenar

        String resumConstruit = construirResum(resum);
        buscarResum(resumConstruit);
        netejarDades();
    }

    protected void ButtonEliminarSeleccionats_Click(object sender, EventArgs e)
    {
        if (ListBoxResum.SelectedIndex != -1) // Hi ha algun resum seleccionat
        {
            // foreach --> ListBox no contiene GetEnumerador() 
            
            //  SEMPRE suma l'iterador, i Items.Count va decreixent quan s'elimina algun,
            //  pel que quan s'elimina, es salta 1 item de més
            /*      for (byte i = 0; i < ListBoxResum.Items.Capacity; i++)
            *           if (ListBoxResum.Items[i].Selected)
            *                ListBoxResum.Items.RemoveAt(i);
            */

            Byte i = 0;
            while (i < ListBoxResum.Items.Count)
            {
                if (ListBoxResum.Items[i].Selected)
                {
                    ListBoxResum.Items.RemoveAt(i);
                }
                else
                {
                    i++;
                }
            }
        }
        else
        {
            LabelAfegirResum.Text = "No has seleccionat cap resum!";
        }
        
    }

    protected void ButtonEliminarTots_Click(object sender, EventArgs e)
    {
        if (ListBoxResum.Items.Count > 0) // Hi ha algun resum introduït
        {
            ListBoxResum.Items.Clear();
        }
        else
        {
            LabelAfegirResum.Text = "No hi han resums introduïts!";
        }
    }

    /*
     * MÈTODES PROPIS
     */ 
    private void omplirCursos(RadioButtonList rbl, DropDownList ddl)
    {
        // Netegem la llista existent...
        ddl.Items.Clear();
        // ...per omplir-la segons el torn corresponent
        if (rbl.SelectedValue == "Matí")
        {
            foreach (String curs in cursosMati)
            {
                ddl.Items.Add(curs);
            }
            //ddl.Items.AddRange(cursosMati);
            // necessita ListItems
        }
        else
        {
            foreach(String curs in cursosTarda)
            {
                ddl.Items.Add(curs);
            }
        }     
    }

    private String construirResum(String resum)
    {
        String ufs = "";

        foreach (ListItem uf in CheckBoxListUFs.Items)
            if (uf.Selected)
                ufs += uf.Text + "; ";

        // Concat? Faria falta passar a String totes les dades
        resum += Calendar.SelectedDate.Date + "; " +
                 TextBoxCognoms.Text + ", " + TextBoxNom.Text + "; " +
                 DropDownListModul.SelectedValue + "; " +
                 ufs +
                 "(Curs Matriculat) " + RadioButtonListTornMatriculat.SelectedValue + "; " + DropDownListCursMatriculat.SelectedValue + "; " + DropDownListTutorMatriculat.SelectedValue + "; " + DropDownListProfeMatriculat.SelectedValue + "; " +
                 "(Curs Interessat) " + RadioButtonListTornNou.SelectedValue + "; " + DropDownListCursNou.SelectedValue + "; " + DropDownListTutorNou.SelectedValue + "; " + DropDownListProfeNou.SelectedValue;

        return resum;
    }
    
    private void buscarResum(String resum)
    {
        // Crea un objecte per buscarlo al llistat de resums introduïts
        ListItem resumLI = new ListItem();
        // Injecta les dades del resum creat al nou objecte
        resumLI.Text = resum;

        if (ListBoxResum.Items.Contains(resumLI))
            LabelAfegirResum.Text = "Aquest resum ja existia!";
        else
        {
            // Sobreescriu en blanc (esborra) qualsevol missatge previ
            LabelAfegirResum.Text = "";
            ListBoxResum.Items.Add(resum);
        }
    }

    // Torna als valors inicials
    private void netejarDades()
    {
        // Alumne
        TextBoxCognoms.Text = "";
        TextBoxNom.Text = "";
        // Mòdul Professional
        DropDownListModul.SelectedIndex = 0;
        CheckBoxListUFs.ClearSelection();
        // Curs matriculat
        RadioButtonListTornMatriculat.SelectedIndex = 0;
        omplirCursos(RadioButtonListTornMatriculat, DropDownListCursMatriculat);
        DropDownListTutorMatriculat.SelectedIndex = 0;
        DropDownListProfeMatriculat.SelectedIndex = 0;
        // Curs nou
        RadioButtonListTornNou.SelectedIndex = 0;
        omplirCursos(RadioButtonListTornNou, DropDownListCursNou);
        DropDownListTutorNou.SelectedIndex = 0;
        DropDownListProfeNou.SelectedIndex = 0;
    }
}