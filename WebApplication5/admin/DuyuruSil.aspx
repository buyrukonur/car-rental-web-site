<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Main.Master" AutoEventWireup="true" CodeBehind="DuyuruSil.aspx.cs" Inherits="WebApplication5.DuyuruSil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Style.css" rel="stylesheet" />
    <link href="w3.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align: center; width: 100%; height: 50px; opacity: 0.7; border-bottom: 1px solid #59bf67; line-height: 50px; font-size: 19px;"><strong>DUYURU SİL</strong></div>

    <div style="margin-left: 15px; margin-top: 20px;">
        <asp:Label ID="Label1" Text="Silinecek Duyuru Başlık:" runat="server" />
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown1" DataSourceID="SqlDataSource1" DataTextField="Baslik" DataValueField="Baslik" Style="border-radius: 10px" Width="95px" Height="30px"></asp:DropDownList>



        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DersConnectionString %>" SelectCommand="SELECT [Baslik] FROM [Duyurular]"></asp:SqlDataSource>

        <br />
        <br />
        <asp:Button ID="Button1" class="eklebutton" runat="server" Text="Duyuru Sil" Height="35px" Width="95px" OnClick="Button1_Click" />
        <asp:Label ID="Label2" Style="margin-left: 50px;" runat="server" Text="Label"></asp:Label>
    </div>

</asp:Content>
