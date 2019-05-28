<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Main.Master" AutoEventWireup="true" CodeBehind="YorumDüzenle.aspx.cs" Inherits="WebApplication5.admin.YorumDüzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Style.css" rel="stylesheet" />
    <link href="w3.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="duyurular">
        <div class="auto-style2" style="border-bottom: 1px solid red; height: 50px; line-height: 50px; text-align: center;">
            <strong style="text-align: center">YORUM GÜNCELLE</strong>
        </div>
    </div>

    <div class="DuyuruSayfası">
    </div>

    <div style="margin-top: 10px; margin-left: 20px;">

        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Gönderen Ad Soyad:</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" style="float:left;" CssClass="txtduyuru" Height="25px" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Gönderen E mail: </td>
                <td>
                    <asp:TextBox ID="TextBox3" CssClass="txtduyuru" style="float:left; margin-top:10px;" runat="server" Height="25px" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Yorum İçerik: </td>
                <td>
                    <asp:TextBox ID="TextBox4" CssClass="ekletxt"  style="margin-top:10px;" runat="server" TextMode="MultiLine" Height="150px" Width="350px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                 Yorum Onay:   <asp:CheckBox ID="CheckBox1" runat="server" />
                </td>
                <td>
                   
                    
                    <asp:Button ID="Button1" class="eklebutton" style="margin-top:10px;" runat="server" Text="Onayla" Height="35px" Width="85px"  />
                    &nbsp;<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>


            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td></td>


            </tr>
        </table>
    </div>
</asp:Content>
