<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 756px;
            height: 443px;
        }
        .giren{
            background-image:url('giren.png');
            background-repeat:no-repeat;
        }
        .cikan{
            background-image:url('cikan.png');
            background-repeat:no-repeat;
        }
        .sil{
            background-image:url('sil.png');
            background-repeat:no-repeat;
        }
        .yazdir{
            background-image:url('yazdir.png');
            background-repeat:no-repeat;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1" style="background-color: #CCCCCC">
            <tr>
                <td colspan="4" style="background-color: #999999">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/kasadefteri.png" />
&nbsp;KASA DEFTERİ</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Menu ID="Menu1" runat="server">
                        <Items>
                            <asp:MenuItem Text="Yardım" Value="Yardım" NavigateUrl="~/yardim.aspx"></asp:MenuItem>
                        </Items>
                    </asp:Menu>
                </td>
                <td colspan="2">
                    <asp:Menu ID="Menu2" runat="server">
                        <Items>
                            <asp:MenuItem Text="Rapor" Value="Rapor" NavigateUrl="~/rapor.aspx"></asp:MenuItem>
                        </Items>
                    </asp:Menu>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:GridView ID="GridView1" runat="server" Height="283px" Width="750px" AutoGenerateColumns="False" BackColor="White" DataSourceID="SqlDataSource1" DataKeyNames="kimlik" AllowPaging="True">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="kimlik" HeaderText="kimlik" SortExpression="kimlik" InsertVisible="False" ReadOnly="True" />
                            <asp:BoundField DataField="tarih" HeaderText="tarih" SortExpression="tarih" />
                            <asp:BoundField DataField="saat" HeaderText="saat" SortExpression="saat" />
                            <asp:BoundField DataField="tur" HeaderText="tur" SortExpression="tur" />
                            <asp:BoundField DataField="aciklama" HeaderText="aciklama" SortExpression="aciklama" />
                            <asp:BoundField DataField="giren" HeaderText="giren" SortExpression="giren" />
                            <asp:BoundField DataField="cikan" HeaderText="cikan" SortExpression="cikan" />
                        </Columns>
                        <SelectedRowStyle BackColor="Blue" ForeColor="White" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [kasa] ORDER BY [kimlik]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="58px" Text="Giren" Width="131px" OnClick="Button1_Click" CssClass="giren" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Height="58px" Text="Çıkan" Width="131px" OnClick="Button2_Click" CssClass="cikan" />
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Height="58px" Text="Sil" Width="131px" CssClass="sil" OnClick="Button3_Click" />
                </td>
                <td>
                    <asp:Button ID="Button5" runat="server" Height="58px" Text="Topla/Yazdır" Width="168px" CssClass="yazdir" OnClick="Button5_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
