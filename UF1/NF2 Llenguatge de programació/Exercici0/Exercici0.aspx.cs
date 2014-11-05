using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Exercici0 : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            CalendarData.SelectedDate = DateTime.Today;
            OmplirCursos(DropDownListCursMatriculat, RadioButtonListTornMatriculat);
            OmplirCursos(DropDownListCursNou, RadioButtonListTornNou);
        }
        else
        {
            LabelMissatges.Text = "";
        }
    }

    protected void OmplirCursos(DropDownList cursos, RadioButtonList radio)
    {
        ListItem element;
        string[] matins = { "ASIX1A", "ASIX2A", "DAM1A", "DAM2A", "DAW1A", "DAW2A" };
        string[] tardes = { "ASIX1T", "DAM1T", "DAW1T", "DAM2T" };

        cursos.Items.Clear();
        if (radio.SelectedValue == "Matí")
        {
            foreach (string assignatura in matins)
            {
                element = new ListItem();
                element.Text = assignatura;
                element.Value = assignatura;
                cursos.Items.Add(element);
            }
        }
        else
        {
            foreach (string assignatura in tardes)
            {
                element = new ListItem();
                element.Text = assignatura;
                element.Value = assignatura;
                cursos.Items.Add(element);
            }
        }
    }
    protected void RadioButtonListTornMatriculat_SelectedIndexChanged(object sender, EventArgs e)
    {
        OmplirCursos(DropDownListCursMatriculat, RadioButtonListTornMatriculat);
    }
    protected void RadioButtonListTornNou_SelectedIndexChanged(object sender, EventArgs e)
    {
        OmplirCursos(DropDownListCursNou, RadioButtonListTornNou);
    }
    protected void ButtonAfegir_Click(object sender, EventArgs e)
    {
        string alumne = "";

        //Afegir la data
        alumne += CalendarData.SelectedDate.ToString() + ";";

        //Afegir el nom de l'alumne
        alumne += TextBoxCognoms.Text + ";" + TextBoxNom.Text + ";" + DropDownListModul.SelectedItem.Text;

        //Afegir el mòdul professional
        foreach (ListItem element in CheckBoxListUF.Items)
        {
            if (element.Selected)
            {
                alumne += ";" + element;
            }
        }

        //Afegir on estic
        alumne += ";" + RadioButtonListTornMatriculat.SelectedValue;
        alumne += ";" + DropDownListCursMatriculat.SelectedValue;
        alumne += ";" + DropDownListTutorMatriculat.SelectedItem.Text;
        alumne += ";" + DropDownListProfessorMatriculat.SelectedItem.Text;

        //Afegir on vull anar
        alumne += ";" + RadioButtonListTornNou.SelectedValue;
        alumne += ";" + DropDownListCursNou.SelectedValue;
        alumne += ";" + DropDownListTutorNou.SelectedItem.Text;
        alumne += ";" + DropDownListProfessorNou.SelectedItem.Text;

        //Afegir les dades a la ListBox

        //Buscar si ya hemos introducido los mismos datos

        ListItem item = new ListItem();

        item.Text = alumne;


        if (!ListBoxResum.Items.Contains(item))
        {
            ListBoxResum.Items.Add(alumne);
        }
        else
        {
            LabelMissatges.Text = "Ya existeix un registre amb les mateixes dades";
        }

        //Netejar les dades introduïdes


    }
    protected void ButtonEliTots_Click(object sender, EventArgs e)
    {
        ListBoxResum.Items.Clear();
    }

    protected void ButtonEliSel_Click(object sender, EventArgs e)
    {
        int i;
        
        i = 0;
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
}