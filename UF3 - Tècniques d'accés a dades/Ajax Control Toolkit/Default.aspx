<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>AJAX Toolkit Controls</title>
        <link href="Tabs.css" rel="stylesheet" />
    </head>
    <body>
        <form id="form1" runat="server">
            <div>
                <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager" runat="server"></ajaxToolkit:ToolkitScriptManager>
                <ajaxToolkit:TabContainer runat="server" Height="150px" ActiveTabIndex="0" Width="200px" ScrollBars="Auto" TabStripPlacement="TopRight" ID="tabContainer" CssClass="ajax__tab_xp">
                    <ajaxToolkit:TabPanel runat="server" HeaderText="Cicles" ID="tabCicles" TabIndex="1">
                       <ContentTemplate>
                           <asp:DropDownList ID="DropDownList_Cicles" runat="server"></asp:DropDownList>
                       </ContentTemplate> 
                    </ajaxToolkit:TabPanel> 
                    <ajaxToolkit:TabPanel runat="server" HeaderText="Cursos" ID="tabCursos" TabIndex="2">
                        
                    </ajaxToolkit:TabPanel>
                    <ajaxToolkit:TabPanel runat="server" HeaderText="Assignatures" ID="tabAssignatures" TabIndex="3">
                        
                    </ajaxToolkit:TabPanel>
                </ajaxToolkit:TabContainer>
            </div>
        </form>
    </body>
</html>
