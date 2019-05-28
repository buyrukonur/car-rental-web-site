    <%@ Page Title="" Language="C#" MasterPageFile="~/admin/Main.Master" AutoEventWireup="true" CodeBehind="DuyuruGöster.aspx.cs" Inherits="WebApplication5.DuyuruGöster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Style.css" rel="stylesheet" />
    <link href="w3.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 50px;
        }

        .auto-style2 {
            width: 76px;
        }

        .auto-style3 {
            width: 208px;
        }

        .auto-style6 {
            width: 219px;
        }

        .auto-style8 {
            width: 55px;
        }

        .auto-style19 {
            width: 35px;
            height: 46px;
            margin-left: 0;
        }

        .auto-style20 {
            width: 212px;
        }

        .auto-style22 {
            width: 31px;
        }

        .auto-style23 {
            width: 865px;
            text-align: center;
            height: 62px;
        }

        .auto-style24 {
            height: 62px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">

        <div style="text-align: center; width: 100%; height: 50px; opacity: 0.7; border-bottom: 1px solid #59bf67; line-height: 50px; font-size: 19px;"><strong>DUYURULAR</strong></div>
        <div style="height: 35px; background-color: black; line-height: 35px; color: white;">
            &nbsp;&nbsp;&nbsp; ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Duyuru Başlık&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Duyuru Konu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; Duyuru Tarih&nbsp;&nbsp;&nbsp;&nbsp;
        </div>

        <div>
            <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style2">&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("duyuruID") %>'></asp:Label>
                            </td>
                            <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("duyuruBaslik") %>'></asp:Label>
                            </td>
                            <td class="auto-style20">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("duyuruKonu") %>'></asp:Label>
                            </td>
                            <td class="auto-style6">
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("duyuruTarih","{0:dd MMMM yyyy}") %>'></asp:Label>
                            </td>
                            <td class="auto-style22">
                                <a href="DuyuruGöster.aspx?duyuruID=<%#Eval("duyuruID") %>&islem=göster">
                                    <img alt="" class="auto-style19" src="icon/oku.png" />
                                </a>

                            </td>
                            <td class="auto-style8">
                                <a href="DuyuruGöster.aspx?duyuruID=<%#Eval("duyuruID")%>&islem=sil">
                                    <img alt="Sil" class="auto-style19" src="icon/Delete.png" /></a>

                            </td>
                            <td>
                              <a href="DuyuruGüncelle.aspx?duyuruID=<%#Eval("duyuruID") %>">  <img alt="" class="auto-style19" src="icon/update.png" /></a>

                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>

    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <div>
            <table class="auto-style12">
                <tr>
                    <td class="auto-style23"><strong>Duyuru İçerik&nbsp; </strong></td>
                    
                    <td class="auto-style24">

                        <a href="DuyuruGöster.aspx">
                            <img alt="" class="auto-style15" style="float: right; border:1px solid green; border-radius:25px;" src="icon/gerial1.png" /></a>

                    </td>
                </tr>
            </table>
        </div>

         <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("duyuruIcerik") %>'></asp:Literal>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </ItemTemplate>
        </asp:DataList>



    </asp:Panel>




</asp:Content>
