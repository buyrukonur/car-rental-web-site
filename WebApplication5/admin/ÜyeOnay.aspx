<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Main.Master" AutoEventWireup="true" CodeBehind="ÜyeOnay.aspx.cs" Inherits="WebApplication5.ÜyeOnay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Style.css" rel="stylesheet" />
    <link href="w3.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style2 {
            width: 47px;
            height: 34px;
        }

        .auto-style3 {
            width: 45px;
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <div style="float: left;padding-left:20px; height: 29px; line-height: 29px; width: 920px; background-color: #00FFFF;">

                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("iletisimAdSoyad") %>'></asp:Label>
                    &nbsp;&nbsp; -&nbsp;
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("iletisimEmail") %>'></asp:Label>
                    &nbsp;&nbsp; -&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("iletisimKonu") %>'></asp:Label>
                    &nbsp;&nbsp; -&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("iletisimTarih","{0:dd MMMM yy}") %>'></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                       
                </div>
                <div style="float: left; width: 910px;padding-left:10px; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; background-color: #C0C0C0;">
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("iletisimIcerik") %>'></asp:Label>
                </div>

                <div style="padding-left:600px;background-color: #C0C0C0;">

                    <a href="Mesajlar.aspx?iletisimID= <%#Eval("iletisimID") %>&islem=sil">
                                    <img alt="" class="auto-style8" style="float: left; height: 28px; width: 56px;" src="icon/Delete.png" /></a>

                    <img alt="" class="auto-style3" src="icon/oku.png" />

                </div>
                <div>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
            </ItemTemplate>

        </asp:DataList>
    </div>
</asp:Content>
