<%@ Page Title="" Language="C#" MasterPageFile="~/kullanıcı/menu.Master" AutoEventWireup="true" CodeBehind="uyekayit.aspx.cs" Inherits="WebApplication5.kullanıcı.uyekayit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="skins/default.css" rel="stylesheet" />

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- fontawesome.css -->
    <link rel="stylesheet" href="css/font-awesome.css">
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.5.0/css/all.css' integrity='sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU' crossorigin='anonymous'>



    <!--font-->
    <link href="https://fonts.googleap is.com/css?family=Roboto:300,400" rel="stylesheet" />

    <!-- lightbox CSS -->
    <link rel="stylesheet" href="css/lightbox.css" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.CSS" />

    <!-- style.CSS -->
    <link rel="stylesheet" href="css/style.css">
    <!-- scroll reveal js -->
    <script src="js/scrollreveal.min.js">
       
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 100px; background-image: url('images/bg-car.png')">


        <div class="col-md-4 col-md-pull-7" style="border-radius: 15px; margin-top: 100px; opacity: 0.9; filter: alpha(opacity=80); background-color: #f5f5f5">
            <i class="fas fa-address-card" style="font-size: 45px; color: red; margin-top: 10px;"></i>
            <asp:Label ID="Label1" runat="server" Text="Üyelik Oluştur."></asp:Label>
            <asp:Label ID="Label2" runat="server" Style="color: green" Text="Üyeliğiniz Başarıyla Alınmıştır."></asp:Label>

            <div class="booking-form">
                <div class="form-group ">

                    <br />
                    <asp:TextBox ID="TextBox1" placeholder="İsim" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Boş geçilemez" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>


                <div class="form-group">

                    <br />
                    <asp:TextBox ID="TextBox2" placeholder="Soyisim" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Boş geçilemez" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group">

                    <br />
                    <asp:TextBox ID="TextBox3" placeholder="Kullanıcı Adı" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Boş geçilemez" ForeColor="Red"></asp:RequiredFieldValidator>

                </div>

                <div class="form-group">

                    <br />
                    <asp:TextBox ID="TextBox4" placeholder="Şifre" TextMode="Password" runat="server" Width="200px"></asp:TextBox>

                </div>
                <div class="form-group">
                    <br />
                    <asp:TextBox ID="TextBox6" placeholder="Şifre Tekrar" TextMode="Password" runat="server" Width="200px"></asp:TextBox><br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Alanlar Eşleşmiyor." ControlToCompare="TextBox4" ControlToValidate="TextBox6" ForeColor="Red"></asp:CompareValidator>
                </div>

                <div class="form-group">

                    <br />
                    <asp:TextBox ID="TextBox5" placeholder="E-mail" runat="server" Width="200px"></asp:TextBox>


                </div>

                <div class="form-group">
                    <asp:CheckBox ID="CheckBox1" runat="server" /> <span> <a href="kullanicisözlesmesi.aspx"> Sözleşmeyi okudum ve kabul ediyorum. </a></span> <br />
                    <asp:CheckBox ID="CheckBox2" runat="server" /> <span>E-mail-SMS gönderilmesini kabul ediyorum.</span>



                    <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Kayıt Ol." OnClick="Button1_Click" />
                    <i class="fas fa-save" style="font-size: 25px;"></i>

                </div>
            </div>
        </div>

    </div>


</asp:Content>
