<%@ Page Title="" Language="C#" MasterPageFile="~/kullanıcı/menu.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="WebApplication5.kullanıcı.iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="skins/default.css" rel="stylesheet" />
    <link href="http://localhost:4076/maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->

    <link href="https://fonts.googleapis.com/css?family=Oswald:700|Patua+One|Roboto+Condensed:700" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

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
    <style>
        .red {
            color: red;
        }

        .form-area {
            background-color: #FAFAFA;
            padding: 10px 40px 60px;
            margin: 10px 0px 60px;
            border: 1px solid GREY;
        }
    </style>
    <!-- scroll reveal js -->
    <script src="js/scrollreveal.min.js">
       
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 100px;">
        <div class="col-md-5">
            <div class="form-area">
                <form role="form">
                    <br style="clear: both">
                    <h3 style="margin-bottom: 25px; text-align: center;">İletişim Formu</h3>
                    <div class="form-group">
                        <asp:TextBox ID="txt_ad" runat="server" CssClass="form-control" placeholder="İsim" required Width="200px"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txt_soyad" runat="server" CssClass="form-control" placeholder="Soyisim" required Width="200px"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:TextBox ID="txt_email" runat="server" CssClass="form-control" placeholder="E-mail" required Width="200px"></asp:TextBox>

                    </div>
                  
                    <div class="form-group">
                        <asp:TextBox ID="txt_konu" runat="server" CssClass="form-control" placeholder="Konu" required Width="200px"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txt_icerik" runat="server" CssClass="form-control" placeholder="Mesaj" Height="150px" required Width="300px"></asp:TextBox>

                    </div>
                    <asp:Label ID="Label1" runat="server" style="color:green;" Text="Label"></asp:Label>
                    <asp:Button ID="Button1" runat="server" Text="Gönder" CssClass="btn btn-primary pull-right" OnClick="Button1_Click"   />


                </form>

            </div>


        </div>
    </div>
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d25336.910525066745!2d30.557136957628888!3d37.458034558357646!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14c4412465fcd33b%3A0x3663edef3f8ef7c7!2zQnVjYWssIFNleWRpa8O2eSBLw7Z5w7wvQnVjYWsvQnVyZHVy!5e0!3m2!1str!2str!4v1545745903876" width="1400" height="400" frameborder="0" style="border: 0" allowfullscreen></iframe>
</asp:Content>
