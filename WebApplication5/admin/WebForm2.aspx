<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication5.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="GirisStyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="ust1">
     <div class="kullanıcıadı1">
                    <span>Kullanıcı Adı</span>
                    <asp:TextBox ID="txtkullaniciadi" CssClass="txtbox1" runat="server"></asp:TextBox>
                        </div>
                        <div class="sifre1">
                    <span>Şifre</span>
                    <asp:TextBox ID="şifre" CssClass="txtbox1" runat="server"></asp:TextBox>
                            </div>
            <asp:Button ID="Button1" runat="server" Text="Giriş" OnClick="Button1_Click" />
            </div>

    
    </form>
</body>
</html>
