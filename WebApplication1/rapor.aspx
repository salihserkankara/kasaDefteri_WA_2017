<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rapor.aspx.cs" Inherits="WebApplication1.rapor" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="372px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="816px">
            <LocalReport ReportPath="Report3.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource3" Name="DataSet3" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" SelectMethod="GetData" TypeName="WebApplication1.DataSet3TableAdapters.kasaTableAdapter"></asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetData" TypeName="WebApplication1.DataSet2TableAdapters.goruntuleTableAdapter"></asp:ObjectDataSource>
        <asp:Menu ID="Menu1" runat="server">
            <Items>
                <asp:MenuItem NavigateUrl="~/WebForm1.aspx" Text="Geri Dön" Value="Geri Dön"></asp:MenuItem>
            </Items>
        </asp:Menu>
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetData" TypeName="WebApplication1.DataSet1TableAdapters.goruntuleTableAdapter"></asp:ObjectDataSource>
    </form>
</body>
</html>
