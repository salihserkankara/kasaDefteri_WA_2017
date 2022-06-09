<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="giren.aspx.cs" Inherits="WebApplication1.giren" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 361px;
            height: 253px;
        }
        .ekle{
            background-image:url('ekle.png');
            background-repeat:no-repeat;
        }
        .vazgec{
            background-image:url('vazgec.png');
            background-repeat:no-repeat;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1" style="background-color: #CCCCCC">
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Tarih="></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Date" Width="91px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Saat="></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Time" Width="91px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Açıklama="></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="232px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Giren Miktar="></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="232px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="38px" OnClick="Button1_Click" Text="Vazgeç" Width="121px" CssClass="vazgec" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Height="38px" OnClick="Button2_Click" Text="Ekle" Width="121px" CssClass="ekle" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
