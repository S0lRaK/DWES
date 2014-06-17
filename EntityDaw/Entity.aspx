<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Entity.aspx.cs" Inherits="Entity" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Ciclos"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownListCiclos" runat="server" AutoPostBack="True" Height="22px" OnSelectedIndexChanged="DropDownListCiclos_SelectedIndexChanged" style="margin-left: 1px" Width="320px"></asp:DropDownList>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Ciclos"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownListCiclos2" runat="server" DataSourceID="EntityDataSourceCiclos" DataTextField="codi" DataValueField="id" Height="19px" Width="305px">
        </asp:DropDownList>
        <br />
        <br />
        <asp:GridView ID="GridViewCursos" runat="server">
        </asp:GridView>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="EntityDataSourceCiclos" OnRowDeleted="GridView1_RowDeleted">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="codi" HeaderText="codi" SortExpression="codi" />
                <asp:BoundField DataField="descripcio" HeaderText="descripcio" SortExpression="descripcio" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <br />
        <br />
        <asp:EntityDataSource ID="EntityDataSourceCiclos" runat="server" ConnectionString="name=aulacepEntities" DefaultContainerName="aulacepEntities" EnableFlattening="False" EntitySetName="cicles" EnableDelete="True" EnableInsert="True" EnableUpdate="True">
        </asp:EntityDataSource>
        <br />
        <br />
    </div>
    </form>
</body>
</html>
