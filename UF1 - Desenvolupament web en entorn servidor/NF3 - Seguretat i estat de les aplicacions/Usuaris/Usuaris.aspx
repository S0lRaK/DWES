<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Usuaris.aspx.cs" Inherits="Usuaris" %>

<asp:Content ID="ContentHead" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="ContentSection" ContentPlaceHolderID="ContentPlaceHolderSection" Runat="Server">
    <asp:Panel ID="PanelUsuari" runat="server" CssClass="panel">
        <header>
            <asp:Label ID="LabelTitol" runat="server" Text="LabelTitol" CssClass="label"></asp:Label>
        </header>
        <asp:Label ID="LabelNomUsuari" runat="server" Text="Nom usuari" CssClass="label"></asp:Label>
        <asp:TextBox ID="TextBoxNomUsuari" runat="server" CssClass="txtBox"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorNomUsuari" runat="server" ErrorMessage="El nom d'usuari és obligatori." ControlToValidate="TextBoxNomUsuari" CssClass="error"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="LabelContrasenya" runat="server" Text="Contrasenya" CssClass="label"></asp:Label>
        <asp:TextBox ID="TextBoxContrasenya" runat="server" TextMode="Password" CssClass="txtBox"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorContrasenya" runat="server" ErrorMessage="La contrasenya és obligatoria." ControlToValidate="TextBoxContrasenya" CssClass="error"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="LabelConfirmContrasenya" runat="server" Text="Confirmar contrasenya" CssClass="label"></asp:Label>
        <asp:TextBox ID="TextBoxConfirmContrasenya" runat="server" TextMode="Password" CssClass="txtBox"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidatorConfirmContrasenya" runat="server" ErrorMessage="Les contrasenyes no coincideixen." ControlToValidate="TextBoxConfirmContrasenya" ControlToCompare="TextBoxContrasenya" CssClass="error"></asp:CompareValidator>
        <br />
        <asp:Label ID="LabelMail" runat="server" Text="Correu electrònic" CssClass="label"></asp:Label>
        <asp:TextBox ID="TextBoxMail" runat="server" CssClass="txtBox"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorMail" runat="server" ErrorMessage="El correu electrònic es obligatori." ControlToValidate="TextBoxMail" CssClass="error"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="LabelTlf" runat="server" Text="Telèfon" CssClass="label"></asp:Label>
        <asp:TextBox ID="TextBoxTlf" runat="server" CssClass="txtBox"></asp:TextBox>
        <br /><br />
        <asp:ImageButton ID="ImageButtonAccept" runat="server" ImageUrl="~/Imatges/accept_48.png" />
        <asp:ImageButton ID="ImageButtonCancel" runat="server" ImageUrl="~/Imatges/cancel_48.png" CausesValidation="False" />
        <asp:Label ID="LabelErrorPanelUsuari" runat="server" CssClass="error"></asp:Label>
    </asp:Panel>
    <asp:Panel ID="PanelUsuaris" runat="server" CssClass="panel">
        <header>Tots els usuaris</header>
        <asp:ImageButton ID="ImageButtonAltaUsuari" runat="server" ImageUrl="~/Imatges/add_user.png" />
        <asp:Label ID="LabelErrorPanelUsuaris" runat="server" CssClass="error"></asp:Label>
        <br /><br />
        <asp:GridView ID="GridViewUsuaris" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:CommandField />
                <asp:CommandField />
                <asp:BoundField HeaderText="Identificador" DataField="Id" Visible="False" />
                <asp:BoundField HeaderText="Nom usuari" DataField="UserName" />
                <asp:BoundField HeaderText="Correu electrònic" DataField="Email" />
                <asp:BoundField HeaderText="Telèfon" DataField="PhoneNumber" />
            </Columns>
        </asp:GridView>
    </asp:Panel>
</asp:Content>