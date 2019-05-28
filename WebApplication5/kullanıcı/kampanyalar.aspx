<%@ Page Title="" Language="C#" MasterPageFile="~/kullanıcı/menu.Master" AutoEventWireup="true" CodeBehind="kampanyalar.aspx.cs" Inherits="WebApplication5.kullanıcı.kampanyalar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="skins/default.css" rel="stylesheet" />

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- fontawesome.css -->
    <link rel="stylesheet" href="css/style.css">
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
    <div class="kampanyalar" style="margin-top: 90px;">
        <h1>
            <center>KAMPANYALAR</center>
        </h1>
        <h3>
            <center>İş ortaklarımızla yaptığımız çeşitli kampanyalardan yararlanabilirsiniz.</center>
        </h3>

    </div>
    <div class="container-fluid">


        <div class="card" style="width: 18rem; float: left; margin-top: 65px; margin-left: 50px;">
            <img class="card-img-top" src="images/kampanya1.jpg" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">En Uzun Geceye Özel Fırsat!
                </h5>
                <p class="card-text">
                    21 Aralık 23:55'e kadar yapılan orta ve üst segmnet araç rezervasyonlarında %45 İndirim!
                </p>
                <asp:Button ID="Button1" runat="server" Text="Detaylı Bilgi" class="btn btn-success " />
            </div>
        </div>

        <div class="card" style="width: 18rem; float: left; margin-top: 65px; margin-left: 50px;">
            <img class="card-img-top" src="images/kampanya2.jpg" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">Enterprise'dan Yılın Son Kampanyası
                </h5>
                <p class="card-text">
                    Peugeot 3008 Dizel Otomatik 239 TL
                </p>
                <asp:Button ID="Button2" runat="server" Text="Detaylı Bilgi" class="btn btn-success " />
            </div>
        </div>

        <div class="card" style="width: 18rem; float: left; margin-top: 65px; margin-left: 50px;">
            <img class="card-img-top" src="images/kampanya3.jpg" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">Enterprise'dan Kaçırılmayacak Fırsat

                </h5>
                <p class="card-text">
                    26 Aralık'a kadar Hyundai i20 otomatik 139 TL!

                </p>
                <asp:Button ID="Button3" runat="server" Text="Detaylı Bilgi" class="btn btn-success " />
            </div>
        </div>


        <div class="card" style="width: 18rem; float: left; margin-top: 65px; margin-left: 50px;">
            <img class="card-img-top" src="images/kampanya4.jpg" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">Enterprise Miles&Smiles işbirliği ile 1000 mil'e kadar kazanma fırsatı!


                </h5>
                <p class="card-text">
                    Enterprise, Miles&Smiles işbirliği ile Yurtiçi ve Yurtdışında binlerce mil kazandırıyor!


                </p>
                <asp:Button ID="Button4" runat="server" Text="Detaylı Bilgi" class="btn btn-success " />
            </div>
        </div>
        <div class="card" style="width: 18rem; float: left; margin-top: 65px; margin-left: 50px;">
            <img class="card-img-top" src="images/kampanya5.png" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">Türk Telekom Prime'a Özel İndirim Enterprise'da sizi bekliyor!



                </h5>
                <p class="card-text">
                    Türk Telekom Prime'la Enterprise'da indirimli araç kiralama fırsatı!


                </p>
                <asp:Button ID="Button5" runat="server" Text="Detaylı Bilgi" class="btn btn-success " />
            </div>
        </div>
        <div class="card" style="width: 18rem; float: left; margin-top: 65px; margin-left: 50px;">
            <img class="card-img-top" src="images/kampanya6.jpg" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">Türk Telekom Mass Avantajları Enterprise'da!



                </h5>
                <p class="card-text">
                    Türk Telekom Aboneleri Enterprise'dan yapacakları tüm yurtiçi araç kiralamalarında %40 özel indirim avantajından yararlanıyor.



                </p>
                <asp:Button ID="Button6" runat="server" Text="Detaylı Bilgi" class="btn btn-success " />
            </div>
        </div>

        <div class="card" style="width: 18rem; float: left; margin-top: 65px; margin-left: 50px;">
            <img class="card-img-top" src="images/kampanya7.jpg" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">Kuveyt Türk Müşterilerine Enterprise Fırsatı





                </h5>
                <p class="card-text">
                    Kuveyt Türk müşterileri, personelleri ve aileleri  Enterprise'da %35 indirimle araç kiralıyor. Çeşitli kampanyalardan yararlanabilir.


                </p>
                <asp:Button ID="Button7" runat="server" Text="Detaylı Bilgi" class="btn btn-success " />
            </div>
        </div>
        <div class="card" style="width: 18rem; float: left; margin-top: 65px; margin-left: 50px;">
            <img class="card-img-top" src="images/kampanya8.jpg" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">Axess sahiplerine özel indirim!

                </h5>
                <p class="card-text">
                    Axess Platinum, Axess Classic, Axess Gold, Axess Business sahiplerine özel Enterprise'den Araç Kiralamada özel indirim!


                </p>
                <asp:Button ID="Button8" runat="server" Text="Detaylı Bilgi" class="btn btn-success " />
            </div>
        </div>

    </div>
</asp:Content>
