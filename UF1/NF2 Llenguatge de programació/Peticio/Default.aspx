<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Petició</title>
    <link href="estils/StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="tot">
            <header>
                <div id="logo"></div>
                <div id="data">
                    <asp:Calendar ID="Calendar" runat="server">
                        <TitleStyle CssClass="calendarTitle" />
                    </asp:Calendar>
                </div>
            </header>
            <section>
                <header>
                    <asp:Label ID="LabelDades" runat="server" Text="Dades Alumne" CssClass="label"></asp:Label>
                </header>
                <article>
                    <div id="cognoms">
                        <asp:Label ID="LabelCognoms" runat="server" Text="Cognoms" CssClass="label"></asp:Label>
                        <asp:TextBox ID="TextBoxCognoms" runat="server" CssClass="txtBox_DropDownList"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorCognoms" runat="server" ErrorMessage="És obligatori introduïr els cognoms" ControlToValidate="TextBoxCognoms" CssClass="lblMsg_RequiredValid"></asp:RequiredFieldValidator>
                    </div>
                    <div id="nom">
                        <asp:Label ID="LabelNom" runat="server" Text="Nom" CssClass="label"></asp:Label>
                        <asp:TextBox ID="TextBoxNom" runat="server" CssClass="txtBox_DropDownList"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorNom" runat="server" ErrorMessage="És obligatori introduïr el nom" ControlToValidate="TextBoxNom" CssClass="lblMsg_RequiredValid"></asp:RequiredFieldValidator>
                    </div>
                </article>
            </section>
            <section>
                <header>
                    <asp:Label ID="LabelModulHeader" runat="server" Text="Mòdul Professional a cursar" CssClass="label"></asp:Label>
                </header>
                <article>
                    <div id="modul">
                        <asp:Label ID="LabelModul" runat="server" Text="Mòdul Professional" CssClass="label"></asp:Label>
                        <asp:DropDownList ID="DropDownListModul" runat="server" CssClass="txtBox_DropDownList">
                            <asp:ListItem>P2</asp:ListItem>
                            <asp:ListItem>BD2</asp:ListItem>
                            <asp:ListItem>DWES</asp:ListItem>
                            <asp:ListItem>DWEC</asp:ListItem>
                            <asp:ListItem>ED</asp:ListItem>
                            <asp:ListItem>DIW</asp:ListItem>
                            <asp:ListItem>DAW</asp:ListItem>
                            <asp:ListItem>PRO</asp:ListItem>
                            <asp:ListItem>FCT</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div id="ufs">
                        <asp:CheckBoxList ID="CheckBoxListUFs" runat="server" CellSpacing="1" RepeatDirection="Horizontal" Width="400px">
                            <asp:ListItem>UF1</asp:ListItem>
                            <asp:ListItem>UF2</asp:ListItem>
                            <asp:ListItem>UF3</asp:ListItem>
                            <asp:ListItem>UF4</asp:ListItem>
                            <asp:ListItem>UF5</asp:ListItem>
                            <asp:ListItem>UF6</asp:ListItem>
                        </asp:CheckBoxList>
                    </div>
                </article>
            </section>
            <section id="sectionCursMatriculat">
                <header>
                    <asp:Label ID="LabelHeaderCursMatriculat" runat="server" Text="Curs on està matriculat" CssClass="label"></asp:Label>
                </header>
                <article>
                    <div id="tornMatriculat">
                        <asp:Label ID="LabelTornMatriculat" runat="server" Text="Torn" CssClass="label"></asp:Label>
                        <asp:RadioButtonList ID="RadioButtonListTornMatriculat" runat="server" CssClass="rbList" RepeatDirection="Horizontal" Width="248px" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonListTornMatriculat_SelectedIndexChanged">
                            <asp:ListItem Selected="True">Matí</asp:ListItem>
                            <asp:ListItem>Tarda</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                    <div id="cursMatriculat">
                        <asp:Label ID="LabelCursMatriculat" runat="server" Text="Curs" CssClass="label"></asp:Label>
                        <asp:DropDownList ID="DropDownListCursMatriculat" runat="server" CssClass="txtBox_DropDownList"></asp:DropDownList>
                    </div>
                    <div id="tutorMatriculat">
                        <asp:Label ID="LabelTutorMatriculat" runat="server" Text="Tutor" CssClass="label"></asp:Label>
                        <asp:DropDownList ID="DropDownListTutorMatriculat" runat="server" CssClass="txtBox_DropDownList">
                            <asp:ListItem>Domingo, Antonio</asp:ListItem>
                            <asp:ListItem>Fernández, Francisco</asp:ListItem>
                            <asp:ListItem>Galcerà, Xavier</asp:ListItem>
                            <asp:ListItem>García, José Luís</asp:ListItem>
                            <asp:ListItem>Ríos, Alex</asp:ListItem>
                            <asp:ListItem>Segura, Consuelo</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div id="profeMatriculat">
                        <asp:Label ID="LabelProfeMatriculat" runat="server" Text="Professor" CssClass="label"></asp:Label>
                        <asp:DropDownList ID="DropDownListProfeMatriculat" runat="server" CssClass="txtBox_DropDownList">
                            <asp:ListItem>Domingo, Antonio</asp:ListItem>
                            <asp:ListItem>Fernández, Francisco</asp:ListItem>
                            <asp:ListItem>Galcerà, Xavier</asp:ListItem>
                            <asp:ListItem>García, José Luís</asp:ListItem>
                            <asp:ListItem>Méndez, Urbano</asp:ListItem>
                            <asp:ListItem>Ríos, Alex</asp:ListItem>
                            <asp:ListItem>Segura, Consuelo</asp:ListItem>
                            <asp:ListItem>Serrano, Joan</asp:ListItem>
                            <asp:ListItem>Sotorra, Miquel</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </article>
            </section>
            <section id="sectionCursNou">
                <header>
                    <asp:Label ID="LabelHeaderCursNou" runat="server" Text="Curs on vol anar" CssClass="label"></asp:Label>
                </header>
                <article>
                    <div id="tornNou">
                        <asp:Label ID="LabelTornNou" runat="server" Text="Torn" CssClass="label"></asp:Label>
                        <asp:RadioButtonList ID="RadioButtonListTornNou" runat="server" CssClass="rbList" RepeatDirection="Horizontal" Width="248px" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonListTornNou_SelectedIndexChanged">
                            <asp:ListItem Selected="True">Matí</asp:ListItem>
                            <asp:ListItem>Tarda</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                    <div id="cursNou">
                        <asp:Label ID="LabelCursNou" runat="server" Text="Curs" CssClass="label"></asp:Label>
                        <asp:DropDownList ID="DropDownListCursNou" runat="server" CssClass="txtBox_DropDownList"></asp:DropDownList>
                    </div>
                    <div id="tutorNou">
                        <asp:Label ID="LabelTutorNou" runat="server" Text="Tutor" CssClass="label"></asp:Label>
                        <asp:DropDownList ID="DropDownListTutorNou" runat="server" CssClass="txtBox_DropDownList">
                            <asp:ListItem>Domingo, Antonio</asp:ListItem>
                            <asp:ListItem>Fernández, Francisco</asp:ListItem>
                            <asp:ListItem>Galcerà, Xavier</asp:ListItem>
                            <asp:ListItem>García, José Luís</asp:ListItem>
                            <asp:ListItem>Ríos, Alex</asp:ListItem>
                            <asp:ListItem>Segura, Consuelo</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div id="profeNou">
                        <asp:Label ID="LabelProfeNou" runat="server" Text="Professor" CssClass="label"></asp:Label>
                        <asp:DropDownList ID="DropDownListProfeNou" runat="server" CssClass="txtBox_DropDownList">
                            <asp:ListItem>Domingo, Antonio</asp:ListItem>
                            <asp:ListItem>Fernández, Francisco</asp:ListItem>
                            <asp:ListItem>Galcerà, Xavier</asp:ListItem>
                            <asp:ListItem>García, José Luís</asp:ListItem>
                            <asp:ListItem>Méndez, Urbano</asp:ListItem>
                            <asp:ListItem>Ríos, Alex</asp:ListItem>
                            <asp:ListItem>Segura, Consuelo</asp:ListItem>
                            <asp:ListItem>Serrano, Joan</asp:ListItem>
                            <asp:ListItem>Sotorra, Miquel</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </article>
            </section>
            <asp:Button ID="ButtonAfegirResum" runat="server" Text="Afegir Resum" CssClass="button" OnClick="ButtonAfegirResum_Click" />
            <asp:Label ID="LabelAfegirResum" runat="server" CssClass="lblMsg_RequiredValid"></asp:Label>
            <section id="resum">
                <header>
                    <asp:Label ID="LabelResum" runat="server" Text="Resum" CssClass="label"></asp:Label>
                </header>
                <article>
                    <asp:Button ID="ButtonEliminarSeleccionats" runat="server" Text="Eliminar Seleccionats" CssClass="button" CausesValidation="False" OnClick="ButtonEliminarSeleccionats_Click" />
                    <asp:Button ID="ButtonEliminarTots" runat="server" Text="Eliminar Tots" CssClass="button" CausesValidation="False" OnClick="ButtonEliminarTots_Click" />
                    <br />
                    <asp:ListBox ID="ListBoxResum" runat="server" SelectionMode="Multiple" Width="944px"></asp:ListBox>
                </article>
            </section>
        </div>
    </form>
</body>
</html>