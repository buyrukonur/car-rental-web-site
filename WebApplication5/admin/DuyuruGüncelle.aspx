<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Main.Master" AutoEventWireup="true" CodeBehind="DuyuruGüncelle.aspx.cs" Inherits="WebApplication5.DuyuruGüncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Style.css" rel="stylesheet" />
    <link href="w3.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            text-align: right;
        }

        .auto-style3 {
            width: 115px;
        }

        .auto-style4 {
            height: 50px;
            width: 115px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="duyurular">
        <div class="auto-style2" style="border-bottom: 1px solid red; height: 50px; line-height: 50px; text-align: center;">
            <strong style="text-align: center">DUYURU GÜNCELLE</strong>
        </div>
    </div>

    <div class="DuyuruSayfası">
    </div>

    <div style="margin-top: 10px; margin-left: 20px;">

        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Duyuru Başlık</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="txtduyuru" Height="25px" Width="130px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Duyuru Konu</td>
                <td>
                    <asp:TextBox ID="TextBox3" CssClass="txtduyuru" runat="server" Height="25px" Width="130px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Duyuru İçerik</td>
                <td>
                    <asp:TextBox ID="TextBox4" CssClass="ekletxt" runat="server" TextMode="MultiLine" Height="150px" Width="350px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td>

                    <asp:Button ID="Button1" class="eklebutton" runat="server" Text="Güncelle" Height="35px" Width="85px" OnClick="Button1_Click" />
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
