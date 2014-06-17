<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ciclos.aspx.cs" Inherits="ciclos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Identificador"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBoxIdentificador" runat="server" Width="196px"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Código"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBoxCodigo" runat="server" Width="190px"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Descripción"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBoxDescripcion" runat="server" Width="198px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="ButtonEjecutar" runat="server" OnClick="ButtonEjecutar_Click" Text="Ejecutar" />
    
    &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="LabelMensaje" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
