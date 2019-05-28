<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Giris.aspx.cs" Inherits="WebApplication5.Giris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">


<head runat="server">
    <title>ADMİN GİRİŞ</title>

    <link href="Style.css" rel="stylesheet" />
    <link href="w3.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="kayıt">
            <div class="ust">ADMİN GİRİŞ</div>
            <div class="alt">


                <div class="kullanıcıadı">
                    <span>Kullanıcı Adı</span>
                    <asp:TextBox ID="txtkullaniciadi" CssClass="txtbox" Style="border-radius: 15px;" runat="server"></asp:TextBox>
                </div>
                <div class="sifre">
                    <span>Şifre</span>
                    <asp:TextBox ID="şifre" CssClass="txtbox" Style="margin-left: 47.5px; margin-top: 25px; border-radius: 15px;" runat="server" TextMode="Password"></asp:TextBox>
                </div>

                <asp:Button ID="Button1" runat="server" class="eklebutton" Text="Giriş Yap" Style="margin-top: 15px; cursor: pointer; margin-left: 20px; background-color: #20b53e;" Height="45px" Width="103px" OnClick="Button1_Click" />
                <asp:Label ID="Label1" Text="" CssClass="lblsonuç" Style="margin-left: 15px;" runat="server" />        

            </div>
        </div>



    </form>
</body>
</html>
