<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yardim.aspx.cs" Inherits="WebApplication1.yardim" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 677px;
            height: 450px;
        }
        .auto-style2 {
            height: 3px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1" style="background-color: #999999">
            <tr>
                <td class="auto-style2" colspan="2" style="background-color: #666666">YARDIM</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Kasa Defteri programına hoşgeldiniz. Bu programda iş yerinizde kasaya giren çıkan bütün işlemleri güvenli bir veritabanında tutabilirsiniz. Programı ilk açtığımızda karşımıza gelen bir listeleme menüsü vardır. Bu menü veritabanınızdaki bütün giren-çıkan işlemleri tutulur ve karşınıza liste halinde çıkar. Kasanıza giren işlemlerini yapabilmeniz için sol alt kısımda bulunan &quot;Giren&quot; düğmesine tıklamanız gerekir. Akabinde 1 adet tarih ve 1 adet saat gösteren kutucuk bulunur. İşleme ait tarih ve saati belirtmek için bu kutucukları doldurmanız gerekir. Açıklama kısmına işlemle ilgili gerekli bilgileri doldurabilirsiniz. Onun altında bulunan kutucuğa ise kasanıza giren miktarı belirttikten sonra &quot;Onayla&quot; butonuna tıkladığınızda işleminiz gerçekleşir, veritabanına kayıt yapılır ve ana menüdeki listede görüntülenir. Yukarıdaki paragrafta anlatılanlar &quot;Giren&quot; butonunun yanında yer alan &quot;Çıkan&quot; butonu içinde birebir geçerlidir." Height="400px" Width="300px"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Height="400px" Text="&quot;Sil&quot; butonu programın ana menüsündeki veri listesiyle alakalıdır. Listeden &quot;Select&quot; butonu yardımıyla seçtiğiniz listedeki herhangi bir veriyi &quot;Sil&quot; butonuna tıkladığınızda verinin veritabanından silinmesi işlemini gerçekleştirmiş olursunuz. Programımızda yer alan son buton ise altta en sağda yer alan &quot;Topla/Yazdır&quot; butonudur. Bu buton tıklandığında karşınıza 3 adet metin kutusu çıkar. Bu kutucuklarda sırayla kasadaki toplam giren miktar, çıkan miktar ve net kar rakamları gösterilmektedir. &quot;Onayla&quot; butonuna tıkladığınızda ise karşınıza verilerin tamamını yazdırmanıza yarayan bir menü çıkar ve bu menüden Excel gibi programlara aktarım yapabilirsiniz. Programımızın en üst kısmına geldiğimizde ise sizi 2 adet menü butonu karşılıyor. Bunlar &quot;Yardım&quot; ve &quot;Rapor&quot; dur. &quot;Yardım&quot; butonunun işlevi sizi bu menüye yönlendirmektir. &quot;Rapor&quot; butonu ise girmiş olduğunuz verileri rapor olarak hazırlama ve size sunma görevindedir." Width="300px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Menu ID="Menu1" runat="server">
                        <Items>
                            <asp:MenuItem NavigateUrl="~/WebForm1.aspx" Text="Geri Dön" Value="Geri Dön"></asp:MenuItem>
                        </Items>
                    </asp:Menu>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
