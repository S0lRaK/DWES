<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Exercici0.aspx.cs" Inherits="Exercici0" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Ejercicio 0</title>
    <link href="Estils/exercici0.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="todo">
        <header>
            <div id="logo"></div>
            <div id="data">
                <asp:Calendar ID="CalendarData" runat="server">
                    <NextPrevStyle CssClass="siguienteCal" />
                    <TitleStyle CssClass="capsaleraCal" />
                </asp:Calendar>
            </div>
        </header>
        <section>
            <header>Dades Alumne</header>
            <article>
                <asp:Label ID="Label1" runat="server" Text="Cognoms" CssClass="etiquetes"></asp:Label>
                <asp:TextBox ID="TextBoxCognoms" runat="server" CssClass="text"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorCognoms" 
            runat="server" ErrorMessage="Els cognoms són obligatoris" 
            ControlToValidate="TextBoxCognoms" CssClass="error"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Nom" CssClass="etiquetes"></asp:Label>
                <asp:TextBox ID="TextBoxNom" runat="server" CssClass="text"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorNom" 
            runat="server" ErrorMessage="El nom és obligatori" 
            ControlToValidate="TextBoxNom" CssClass="error"></asp:RequiredFieldValidator>
            </article>
        </section>
        <section>
            <header>Mòdul professional a cursar</header>
            <article>
                <asp:Label ID="Label7" runat="server" Text="Mòdul professional" CssClass="etiquetes"></asp:Label>
                <asp:DropDownList ID="DropDownListModul" runat="server" CssClass="text">
                    <asp:ListItem Value="SI">Sistemes Informàtics</asp:ListItem>
                    <asp:ListItem Value="BD">Base de Dades</asp:ListItem>
                    <asp:ListItem Value="P">Programació</asp:ListItem>
                    <asp:ListItem Value="LM">Llenguatge de Marques</asp:ListItem>
                    <asp:ListItem Value="ED">Entorns Desenvolupaments</asp:ListItem>
                    <asp:ListItem Value="DWEC">Desenvolupament Web en Entorn Client</asp:ListItem>
                    <asp:ListItem Value="DWES">Desenvolupament Web en Entorn Servidor</asp:ListItem>
                    <asp:ListItem Value="DAW">Desplegament Aplicacions Web</asp:ListItem>
                    <asp:ListItem Value="DIW">Disseny Interfícies Web</asp:ListItem>
                    <asp:ListItem Value="FOL">Formació i Orientació Laboral</asp:ListItem>
                    <asp:ListItem Value="EIE">Empresa i Iniciativa Emprenendora</asp:ListItem>
                    <asp:ListItem Value="PRO">Projecte</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <asp:CheckBoxList ID="CheckBoxListUF" runat="server" Height="16px" RepeatDirection="Horizontal" Width="609px">
                    <asp:ListItem>UF1</asp:ListItem>
                    <asp:ListItem>UF2</asp:ListItem>
                    <asp:ListItem>UF3</asp:ListItem>
                    <asp:ListItem>UF4</asp:ListItem>
                    <asp:ListItem>UF5</asp:ListItem>
                    <asp:ListItem>UF6</asp:ListItem>
                </asp:CheckBoxList>
            
            </article>
        </section>
        <section id="cursMatriculat">
            <header>Curs on està matriculat</header>
            <article>
                <asp:Label ID="Label10" runat="server" Text="Torn" CssClass="etiquetes"></asp:Label>
                <asp:RadioButtonList ID="RadioButtonListTornMatriculat" runat="server" Height="18px" RepeatDirection="Horizontal" Width="229px" CssClass="text" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonListTornMatriculat_SelectedIndexChanged">
                    <asp:ListItem Selected="True">Matí</asp:ListItem>
                    <asp:ListItem>Tarda</asp:ListItem>
                </asp:RadioButtonList>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Curs" CssClass="etiquetes"></asp:Label>
                <asp:DropDownList ID="DropDownListCursMatriculat" runat="server" CssClass="text">
                </asp:DropDownList>
                <br />
                <asp:Label ID="Label4" runat="server" Text="Tutor" CssClass="etiquetes"></asp:Label>
                <asp:DropDownList ID="DropDownListTutorMatriculat" runat="server" CssClass="text">
                    <asp:ListItem Value="1">Domingo, Antonio</asp:ListItem>
                    <asp:ListItem Value="2">Fernàndez, Francisco</asp:ListItem>
                    <asp:ListItem Value="3">Galcerà, Xavier</asp:ListItem>
                    <asp:ListItem Value="4">García, José Luís</asp:ListItem>
                    <asp:ListItem Value="5">Ríos, Alex</asp:ListItem>
                    <asp:ListItem Value="6">Segura, Consuelo</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:Label ID="Label8" runat="server" Text="Professor" CssClass="etiquetes"></asp:Label>
                <asp:DropDownList ID="DropDownListProfessorMatriculat" runat="server" CssClass="text">
                    <asp:ListItem Value="1">Domingo, Antonio</asp:ListItem>
                    <asp:ListItem Value="2">Fernàndez, Francisco</asp:ListItem>
                    <asp:ListItem Value="3">Galcerà, Xavier</asp:ListItem>
                    <asp:ListItem Value="4">García, José Luís</asp:ListItem>
                    <asp:ListItem Value="5">Méndez, Urbano</asp:ListItem>
                    <asp:ListItem Value="6">Ríos, Alex</asp:ListItem>
                    <asp:ListItem Value="7">Segura, consuelo</asp:ListItem>
                    <asp:ListItem Value="8">Serrano, Joan</asp:ListItem>
                    <asp:ListItem Value="9">Sotorra, Miquel</asp:ListItem>
                </asp:DropDownList>
            </article>
        </section>

        <section id="cursNou">
            <header>Curs on vol anar</header>
            <article>
                <asp:Label ID="Label11" runat="server" Text="Torn" CssClass="etiquetes"></asp:Label>
                <asp:RadioButtonList ID="RadioButtonListTornNou" runat="server" Height="18px" RepeatDirection="Horizontal" Width="229px" CssClass="text" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonListTornNou_SelectedIndexChanged">
                    <asp:ListItem Selected="True">Matí</asp:ListItem>
                    <asp:ListItem>Tarda</asp:ListItem>
                </asp:RadioButtonList>
                <br />
                <asp:Label ID="Label5" runat="server" Text="Curs" CssClass="etiquetes"></asp:Label>
                <asp:DropDownList ID="DropDownListCursNou" runat="server" CssClass="text">
                </asp:DropDownList>
                <br />
                <asp:Label ID="Label6" runat="server" Text="Tutor" CssClass="etiquetes"></asp:Label>
                <asp:DropDownList ID="DropDownListTutorNou" runat="server" CssClass="text">
                    <asp:ListItem Value="1">Domingo, Antonio</asp:ListItem>
                    <asp:ListItem Value="2">Fernàndez, Francisco</asp:ListItem>
                    <asp:ListItem Value="3">Galcerà, Xavier</asp:ListItem>
                    <asp:ListItem Value="4">García, José Luís</asp:ListItem>
                    <asp:ListItem Value="5">Ríos, Alex</asp:ListItem>
                    <asp:ListItem Value="6">Segura, Consuelo</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:Label ID="Label9" runat="server" Text="Professor" CssClass="etiquetes"></asp:Label>
                <asp:DropDownList ID="DropDownListProfessorNou" runat="server" CssClass="text">
                    <asp:ListItem Value="1">Domingo, Antonio</asp:ListItem>
                    <asp:ListItem Value="2">Fernàndez, Francisco</asp:ListItem>
                    <asp:ListItem Value="3">Galcerà, Xavier</asp:ListItem>
                    <asp:ListItem Value="4">García, José Luís</asp:ListItem>
                    <asp:ListItem Value="5">Méndez, Urbano</asp:ListItem>
<asp:ListItem Value="6">Ríos, Alex</asp:ListItem>
                    <asp:ListItem Value="7">Segura, Consuelo</asp:ListItem>
                    <asp:ListItem Value="8">Serrano, Joan</asp:ListItem>
                    <asp:ListItem Value="9">Sotorra, Miquel</asp:ListItem>
                </asp:DropDownList>
            </article>
        </section>
        <asp:Button ID="ButtonAfegir" runat="server" Text="Afegir resum" CssClass="boto" OnClick="ButtonAfegir_Click" />
        <asp:Label ID="LabelMissatges" runat="server" CssClass="error"></asp:Label>
        <section>
            <header>Resum</header>
            <article>
                <asp:Button ID="ButtonEliSel" runat="server" Text="Eliminar Seleccionats" CssClass="boto" OnClick="ButtonEliSel_Click" />
                <asp:Button ID="ButtonEliTots" runat="server" Text="Eliminar Tots" CssClass="boto" OnClick="ButtonEliTots_Click" />
                <asp:ListBox ID="ListBoxResum" runat="server" Height="257px" Width="941px" SelectionMode="Multiple"></asp:ListBox>
            </article>
        </section>
    </div>
    </form>
</body>
</html>
