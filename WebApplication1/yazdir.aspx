<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yazdir.aspx.cs" Inherits="WebApplication1.yazdir" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 361px;
            height: 253px;
        }
        .vazgec{
            background-image:url('vazgec2.png');
            background-repeat:no-repeat;
        }
        .onayla{
            background-image:url('onayla.png');
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
                    <asp:Label ID="Label1" runat="server" Text="Listedeki Toplam Giren Miktar"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="146px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Listedeki Toplam Çıkan Miktar"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="146px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Listedeki Toplam Kalan Miktar"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="146px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="53px" Text="Vazgeç" Width="146px" CssClass="vazgec" OnClick="Button1_Click" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Height="53px" Text="Onayla" Width="146px" CssClass="onayla" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
