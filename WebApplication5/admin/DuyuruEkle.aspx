<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Main.Master" AutoEventWireup="true" CodeBehind="DuyuruEkle.aspx.cs" Inherits="WebApplication5.DuyuruEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Style.css" rel="stylesheet" />
    <link href="w3.css" rel="stylesheet" />


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="duyurular">
        <div class="auto-style2" style="border-bottom: 1px solid red; height: 50px; line-height: 50px; text-align: center;">
            <strong style="text-align: center">DUYURU EKLE</strong>
        </div>
    </div>

    <div class="DuyuruSayfası">
    </div>

    <div style="margin-top: 10px; margin-left: 20px;">

        <table class="auto-style1">
            <tr>
                <td class="auto-style4" style="height: 50px; width: 50px;"></td>
                <td>
                    <asp:TextBox ID="txt_duyurubaslik" CssClass="txtduyuru" runat="server" style="border-radius:10px;" placeholder="Başlık Giriniz..." Height="35px" Width="220px" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="height: 50px; width: 50px;"></td>
                <td>
                    <asp:TextBox ID="txt_duyurukonu"  CssClass="txtduyuru" style="border-radius:10px;" runat="server" placeholder="Konu Giriniz..." Height="35px" Width="220px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style4" style="height: 50px; width: 50px;"></td>
                <td>
                    <asp:TextBox ID="txt_duyuruicerik"  CssClass="txtduyuru" runat="server" style="border-radius:10px;" placeholder="Duyuru İçeriğini Giriniz..." TextMode="MultiLine" Height="150px" Width="350px"></asp:TextBox>
                    <asp:Label ID="Label2" runat="server" Style="color: red;"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="height: 50px; width: 50px;">Tarih</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>

            </tr>
            <tr>
                <td>
                    
                </td>
                <td>
                    <asp:FileUpload ID="fl_duyururesim" runat="server"  BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" Height="27px" CssClass="txtkayıt" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="Button1" class="eklebutton" style="margin-top:10px;" runat="server" OnClick="Button1_Click1" Text="KAYDET" Height="35px" Width="85px" /> 
                    </td>

            </tr>
        </table>
    </div>
</asp:Content>
