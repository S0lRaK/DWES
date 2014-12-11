<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Examen.aspx.cs" Inherits="Examen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Examen UF1 DWES DAW2A</title>
    <link href="Examen.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="tot">
        <asp:Panel ID="PanelExamen" runat="server">
            <asp:Button ID="ButtonAltaUsuaris" runat="server" Text="Alta Usuaris" CssClass="button" OnClick="ButtonAltaUsuaris_Click" />
            <asp:Button ID="ButtonAltaRols" runat="server" Text="Alta Rols" CssClass="button" OnClick="ButtonAltaRols_Click" />
            <asp:Button ID="ButtonModificarUsuaris" runat="server" Text="Modificar Usuaris" CssClass="button" />
            <asp:Button ID="ButtonModificarRols" runat="server" Text="Modificar Rols" CssClass="button" />
            <asp:Button ID="ButtonEsborrarUsuaris" runat="server" Text="Esborrar Usuaris" CssClass="button" />
            <asp:Button ID="ButtonEsborrarRols" runat="server" Text="Esborrar Rols" CssClass="button" />
        </asp:Panel>
        <asp:Panel ID="PanelGrids" runat="server">
            <asp:GridView ID="GridViewUsuaris" runat="server" AutoGenerateColumns="False" CssClass="grid">
                <Columns>
                    <asp:BoundField HeaderText="Identificador" DataField="id" />
                    <asp:BoundField HeaderText="Nom usuari" DataField="UserName" />
                    <asp:BoundField HeaderText="Correu electrònic" DataField="Email" />
                    <asp:BoundField HeaderText="Telèfon" DataField="PhoneNumber" />
                </Columns>
            </asp:GridView>
            <asp:GridView ID="GridViewRols" runat="server" AutoGenerateColumns="false" CssClass="grid">
                <Columns>
                    <asp:BoundField HeaderText="Identificador" DataField="id" />
                    <asp:BoundField HeaderText="Nom usuari" DataField="Name" />
                </Columns>
            </asp:GridView>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
