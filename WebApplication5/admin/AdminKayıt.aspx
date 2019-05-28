<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Main.Master" AutoEventWireup="true" CodeBehind="AdminKayıt.aspx.cs" Inherits="WebApplication5.AdminKayıt" %>

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
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div style="text-align: center; width: 100%; height: 50px; border-bottom: 1px solid #59bf67; line-height: 50px; font-size: 19px;"><strong>Yeni Admin Kayıt</strong></div>

        <asp:Panel ID="Panel1" runat="server" Style="position: absolute; top: 396px; margin-top: 10px; left: 397px; width: 621px;" Height="168px">
            <div style="margin-left: 100px; margin-top: 70px;">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">Kullanıcı Adı</td>
                        <td>
                            <asp:TextBox ID="TextBox5" CssClass="txtbox" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Şifre</td>
                        <td>
                            <asp:TextBox ID="TextBox6" CssClass="txtbox" Style="margin-top: 10px;" TextMode="Password" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td>

                            <asp:Button ID="Button1" runat="server" class="eklebutton" Style="margin-top: 10px;" OnClick="Button1_Click" Text="Giriş" Height="35px" Width="75px" />

                            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>

                        </td>
                    </tr>
                </table>
        </asp:Panel>
    </div>

    <div>
        <asp:Panel ID="Panel2" Style="position: absolute; top: 401px; left: 397px; height: 299px;" runat="server" Width="100%">

            <div style="margin-top: 100px; margin-right: 150px;">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">Admin Ad</td>
                        <td>
                            <asp:TextBox ID="TextBox3" CssClass="txtbox" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Admin Soyad</td>
                        <td>
                            <asp:TextBox ID="TextBox4" CssClass="txtbox" Style="margin-top: 10px;" runat="server"></asp:TextBox>
                        </td>

                    </tr>
                    <tr>
                        <td class="auto-style2" style="margin-top: 10px;">Kullanıcı Adı</td>
                        <td>
                            <asp:TextBox ID="TextBox1" CssClass="txtbox" Style="margin-top: 10px;" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Şifre</td>
                        <td>
                            <asp:TextBox ID="TextBox2" CssClass="txtbox" Style="margin-top: 10px;" TextMode="Password" runat="server"></asp:TextBox>
                        </td>


                    </tr>
                    <tr>
                        <td class="auto-style2">Şifre Tekrar</td>
                        <td>
                            <asp:TextBox ID="TextBox7" CssClass="txtbox" Style="margin-top: 10px;" TextMode="Password" runat="server"></asp:TextBox>
                        </td>


                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td>

                            <asp:Button ID="Button2" runat="server" class="eklebutton" Style="margin-top: 10px;" Text="Kaydet" Height="35px" Width="75px" OnClick="Button2_Click" />

                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

                        </td>
                    </tr>
                </table>
            </div>
        </asp:Panel>
    </div>


</asp:Content>
