<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Main.Master" AutoEventWireup="true" CodeBehind="AraçSil.aspx.cs" Inherits="WebApplication5.AraçSil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Style.css" rel="stylesheet" />
    <link href="w3.css" rel="stylesheet" />
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align: center; width: 100%; height: 50px; opacity: 0.7; border-bottom: 1px solid #59bf67; line-height: 50px; font-size: 19px;"><strong>ARAÇ SİL</strong></div>

    <div style="margin-left:15px; margin-top:20px;">
        <asp:Label Text="Silinecek Araç Marka:" runat="server" />
      
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" class="dropdown1" DataTextField="Marka" DataValueField="Marka" Height="25px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="95px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DersConnectionString %>" SelectCommand="SELECT [Marka] FROM [Araba]"></asp:SqlDataSource>
      
        <br />
        <br />
        <asp:Button ID="Button1" class="eklebutton" runat="server" Text="Araç Sil" Height="35px" Width="75px" OnClick="Button1_Click" />
    </div>
</asp:Content>
