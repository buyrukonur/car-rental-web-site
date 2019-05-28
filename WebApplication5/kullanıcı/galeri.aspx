<%@ Page Title="" Language="C#" MasterPageFile="~/kullanıcı/menu.Master" AutoEventWireup="true" CodeBehind="galeri.aspx.cs" Inherits="WebApplication5.kullanıcı.galeri" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="skins/default.css" rel="stylesheet" />

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- fontawesome.css -->
    <link rel="stylesheet" href="css/font-awesome.css">
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.5.0/css/all.css' integrity='sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU' crossorigin='anonymous'>

    <script src="sliderJS/jquery.js"></script>
    <script src="sliderJS/amazingslider.js"></script>
    <link rel="stylesheet" type="text/css" href="sliderJS/amazingslider-1.css">
    <script src="sliderJS/initslider-1.js"></script>

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
    <h1 style="margin-top: 100px;">
        <center> Araçlarımız</center>
    </h1>

     <div id="amazingslider-wrapper-1" style="display:block;position:relative;max-width:700px;margin:0px auto 56px;">
        <div id="amazingslider-1" style="display:block;position:relative;margin:0 auto;">
            <ul class="amazingslider-slides" style="display:none;">
               
                <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                         <li>
                             <img src="<%#Eval("Resimler") %>" alt="<%#Eval("Marka") %>"  title="<%#Eval("Marka") %>" />
                </li>
                    </ItemTemplate>
                </asp:DataList>

            </ul>
            <ul class="amazingslider-thumbnails" style="display:none;">
               
            </ul>
        <div class="amazingslider-engine"><a href="http://amazingslider.com" title="Responsive jQuery Slideshow">Responsive jQuery Slideshow</a></div>
        </div>
    </div>

    <div>
        <asp:DataList ID="DataList2" runat="server" RepeatColumns="4">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Resimler") %>'  style="width:300px; height:250px;"/>
            </ItemTemplate>
        </asp:DataList>
    </div>


</asp:Content>
