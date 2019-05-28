<%@ Page Title="" Language="C#" MasterPageFile="~/kullanıcı/menu.Master" AutoEventWireup="true" CodeBehind="duyurular.aspx.cs" Inherits="WebApplication5.kullanıcı.duyurular" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="skins/default.css" rel="stylesheet" />

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- fontawesome.css -->
    <link rel="stylesheet" href="css/font-awesome.css">
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.5.0/css/all.css' integrity='sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU' crossorigin='anonymous'>



    <!--font-->
    <link href="https://fonts.googleap is.com/css?family=Roboto:300,400" rel="stylesheet">

    <!-- lightbox CSS -->
    <link rel="stylesheet" href="css/lightbox.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.CSS">

    <!-- style.CSS -->
    <link rel="stylesheet" href="css/style.css">
    <!-- scroll reveal js -->
    <script src="js/scrollreveal.min.js">
       
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-image:url(images/araba.jpg); background-repeat:repeat;">
        <div style="margin: 0 auto; background-color: #e1d2d2; opacity:0.9; width: 960px; height: auto;">
            <div style="padding-top: 85px; text-align: center;">
                <h2>Duyurular</h2>
            </div>
            <div>
                <asp:DataList ID="DataList1" runat="server" CellSpacing="8" Width="958px">
                    <ItemTemplate>
                        <div style="float: left; margin-left: 5px; margin-top: 10px;">
                            <asp:Image ID="Image1" runat="server" Style="width: 300px; height: 200px;" ImageUrl='<%# Eval("duyuruResim") %>' />
                        </div>
                        <div style="float: left; margin-left: 15px; margin-top: 10px; width: 592px;">
                            <asp:Label ID="Label1" runat="server" Style="color: #1c42a9; font-size: 22px;" Text='<%# Eval("duyuruBaslik") %>'></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="Label2" runat="server" Style="color: gray;" Text='<%# Eval("duyuruKonu") %>'></asp:Label>
                            <br />
                            <br />
                            <div style="width: 70%;">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("duyuruIcerik") %>' Height="24px" Width="586px"></asp:Label>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>
    </div>
</asp:Content>
