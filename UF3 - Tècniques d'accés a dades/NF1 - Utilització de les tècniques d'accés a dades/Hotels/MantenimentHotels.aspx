<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MantenimentHotels.aspx.cs" Inherits="MantenimentHotels" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Manteniment Hotels</title>
    <link href="Content/bootstrap.amelia.min.css" rel="stylesheet" />
</head>
<body>
    <form id="formMantenimentHotels" runat="server">
        <div id="tot">
            <asp:Panel ID="PanelHotel" runat="server">
                <h1>Alta hotel</h1>
                <div class="form-group">
                    <asp:Label ID="LabelCiutat" runat="server" Text="Ciutat" CssClass="col-md-2"></asp:Label>
                    <asp:DropDownList ID="DropDownListCiutat" runat="server" CssClass="col-md-10"></asp:DropDownList>
                </div>
                <div class="form-group">
                    <asp:Label ID="LabelNomHotel" runat="server" Text="Nom" CssClass="col-md-2"></asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox ID="TextBoxNomHotel" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorNomHotel" runat="server" ErrorMessage="El nom de l'hotel es obligatori" ControlToValidate="TextBoxNomHotel"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="PanelGrid" runat="server"></asp:Panel>
        </div>
    </form>
</body>
</html>
