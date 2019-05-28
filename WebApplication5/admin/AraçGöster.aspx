<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Main.Master" AutoEventWireup="true" CodeBehind="AraçGöster.aspx.cs" Inherits="WebApplication5.Programlama" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style7 {
            width: 52px;
            height: 33px;
        }
        .auto-style8 {
            width: 70px;
        }
        .auto-style15 {
            width: 93px;
        }
        .auto-style17 {
            width: 84px;
        }
    </style>
    <link href="Style.css" rel="stylesheet" />
    <link href="w3.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="aracgöster">
        <div class="auto-style1" style="border-bottom: 1px solid red; height: 50px; line-height: 50px;">
            <strong>TÜM ARAÇLAR</strong>
        </div>
    </div>
    <div  style="height:50px; background-color:black; line-height:50px; color:white;">

        Marka&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; Model&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Fiyat&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Vites Türü&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Yakıt&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Koltuk Sayısı&nbsp;&nbsp;&nbsp;&nbsp; Klima&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Segment&nbsp;&nbsp;&nbsp;</div>
    <div>
        <asp:DataList ID="DataList1" runat="server" Width="928px" >
          
            <ItemTemplate>
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style15">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Marka") %>'></asp:Label> 
                        </td>
                        <td class="auto-style15">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Model") %>'></asp:Label>
                        </td>
                        <td class="auto-style15">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Fiyat") %>'></asp:Label>
                        </td>
                        <td class="auto-style15">
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("VitesTürü") %>'></asp:Label>
                        </td>
                        <td class="auto-style15">
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Yakıt") %>'></asp:Label>
                        </td>
                        <td class="auto-style15">
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("KoltukSayısı") %>'></asp:Label>
                        </td>
                        <td class="auto-style15">
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("Klima") %>'></asp:Label>
                        </td>
                        <td class="auto-style15">
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("Segment") %>'></asp:Label>
                        </td>
                        
                        <td class="auto-style17" >
                           <a href="AraçGüncelle.aspx?arabaID=<%#Eval("arabaID") %>"> <img alt="" style="float:right;" class="auto-style7" src="icon/update.png" /></a>
                        </td>
                        <td class="auto-style8">
                          <a href="AraçGöster.aspx?arabaID=<%#Eval("arabaID") %>&islem=sil"> <img alt="" style="float:right;" class="auto-style7" src="icon/Delete.png" /></a> 
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
    <div>
       

    </div>
   
 

</asp:Content>
