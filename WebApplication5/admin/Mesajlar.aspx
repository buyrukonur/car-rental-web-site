<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Main.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="WebApplication5.Mesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Style.css" rel="stylesheet" />
    <link href="w3.css" rel="stylesheet" />
    <style type="text/css">
        
        .auto-style8 {
            width: 60px;
            height: 27px;
            margin-left: 15px;
        }

        .auto-style9 {
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style9" style="height:50px; line-height:50px;"><strong>&nbsp;GELEN MESAJLAR</strong></div>
    <div>
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <div style="float: left;padding-left:20px; height: 29px; line-height: 29px; width: 894px; background-color: #00FFFF;">

                    <asp:Label ID="Label1" runat="server" style="color:blue;" Text='<%# Eval("iletisimAdSoyad") %>'></asp:Label>
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

                   <a href="https://www.google.com/intl/tr/gmail/about/"> <img alt="" class="auto-style3" src="icon/cevap.png" /> </a>

                </div>
                <div>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
            </ItemTemplate>

        </asp:DataList>
    </div>



</asp:Content>
