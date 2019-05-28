<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Main.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication5._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="w3.css" rel="stylesheet" />
    <link href="Style.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            font-weight: bold;
            text-align: right;
        }

        .auto-style5 {
            font-weight: bold;
            text-align: right;
            height: 28px;
        }

        .auto-style6 {
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

        <div style="text-align: center; width: 100%; height: 50px; opacity: 0.7; border-bottom: 1px solid #59bf67; line-height: 50px; font-size: 19px;"><strong>GENEL ARAÇ BİLGİLERİ</strong></div>

        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Marka:</td>
                <td>
                    <asp:TextBox ID="txtmarka" runat="server" placeholder="Marka Giriniz" BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" Height="25px" CssClass="txtkayıt" Font-Size="Small"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Model:</td>
                <td>
                    <asp:TextBox ID="txtmodel" runat="server"  BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" Height="25px" CssClass="txtkayıt"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td class="auto-style2">Fiyat:</td>
                <td>
                    <asp:TextBox ID="txtfiyat" runat="server"  BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" Height="25px" CssClass="txtkayıt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Vites Türü:</td>
                <td class="auto-style6">

                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="txtkayıt" Style="border: 1px solid red;" Height="25px" Width="142px">
                 
                        <asp:ListItem>Manuel</asp:ListItem>
                        <asp:ListItem>Otomatik</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Yakıt:</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" placeholder="Yakıt Türü" CssClass="txtkayıt" Style="border: 1px solid red;" Height="25px" Width="142px">
                        <asp:ListItem>BENZİN</asp:ListItem>
                        <asp:ListItem>DİZEL</asp:ListItem>
                        <asp:ListItem>HİBRİT</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Koltuk Sayısı:</td>
                <td>
                    <asp:DropDownList ID="DropDownList4" runat="server" CssClass="txtkayıt" Style="border: 1px solid red;" Height="25px" Width="142px">
                        <asp:ListItem>4Koltuk</asp:ListItem>
                        <asp:ListItem>5Koltuk</asp:ListItem>
                        <asp:ListItem>6Koltuk</asp:ListItem>
                        <asp:ListItem>7Koltuk</asp:ListItem>
                    </asp:DropDownList>
                </td>

            </tr>
            <tr>
                <td class="auto-style2">Klima:</td>
                <td>

                    <asp:DropDownList ID="DropDownList3" runat="server" Height="25px" Style="border: solid 1px red;" Width="142px" CssClass="txtkayıt">
                        <asp:ListItem>VAR</asp:ListItem>
                        <asp:ListItem>YOK</asp:ListItem>
                    </asp:DropDownList>

                </td>
            </tr>
            <tr>
                <td class="auto-style2">Araç Resim:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" Height="27px" CssClass="txtkayıt" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Segment:</td>
                <td>

                    <asp:DropDownList ID="DropDownList5" runat="server" Height="25px" Style="border: solid 1px red;" Width="142px" CssClass="txtkayıt">
                        <asp:ListItem>Ekonomik</asp:ListItem>
                        <asp:ListItem>Orta</asp:ListItem>
                        <asp:ListItem>Lüks</asp:ListItem>
                        <asp:ListItem>Suv</asp:ListItem>
                        <asp:ListItem>Minibüs</asp:ListItem>
                    </asp:DropDownList>

                </td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp; &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;<asp:Button ID="btnkaydet" class="eklebutton" runat="server" Height="35px" Text="Kaydet" Width="100px" OnClick="btnkaydet_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>

                </td>
            </tr>
        </table>

    </div>



</asp:Content>
