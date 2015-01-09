<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Examen.aspx.cs" Inherits="Examen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Examen DWES UF1 ORD1</title>
    <link rel="stylesheet" href="Examen.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="tot">
            <asp:Panel ID="PanelExamen" runat="server">
                <asp:Button ID="ButtonProleg" runat="server" Text="Pròleg" CssClass="boto" OnClick="ButtonProleg_Click" />
                <asp:Button ID="ButtonCapitol1" runat="server" Text="Capítol I" CssClass="boto" OnClick="ButtonCapitol1_Click" />
                <asp:Button ID="ButtonCapitol2" runat="server" Text="Capítol II" CssClass="boto" OnClick="ButtonCapitol2_Click" />
                <asp:Button ID="ButtonEpileg" runat="server" Text="Epíleg" CssClass="boto" OnClick="ButtonEpileg_Click" />
            </asp:Panel>
            <asp:Panel ID="PanelGrids" runat="server">
                <asp:GridView ID="GridViewUsuaris" runat="server" AutoGenerateColumns="False" CssClass="grid">
                    <Columns>
                        <asp:BoundField HeaderText="Identificador" DataField="Id" />
                        <asp:BoundField HeaderText="Nom Usuari" DataField="UserName" />
                        <asp:BoundField HeaderText="Correu electrònic" DataField="Email" />
                        <asp:BoundField HeaderText="Telèfon" DataField="PhoneNumber" />
                    </Columns>
                </asp:GridView>
                <asp:GridView ID="GridViewRols" runat="server" AutoGenerateColumns="False" CssClass="grid">
                    <Columns>
                        <asp:BoundField HeaderText="Identificador" DataField="Id" />
                        <asp:BoundField DataField="Name" HeaderText="Nom Rol" />
                    </Columns>
                </asp:GridView>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
