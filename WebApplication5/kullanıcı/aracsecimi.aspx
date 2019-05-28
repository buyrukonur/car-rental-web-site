<%@ Page Title="" Language="C#" MasterPageFile="~/kullanıcı/menu.Master" AutoEventWireup="true" CodeBehind="aracsecimi.aspx.cs" Inherits="WebApplication5.kullanıcı.aracsecimi" %>

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
    <style type="text/css">
        .auto-style1 {
            width: 27px;
            height: 27px;
        }

        .auto-style2 {
            width: 50px;
            height: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-color: #1d46b7; margin-top: 80px; width: 100%; height: 60px;">
        <span style="float: left; color: white; line-height: 60px;">
            <h4>Araç Seçimi </h4>
        </span>
        <div style="float: right; line-height: 60px; margin-right: 10px;">
            <asp:Button ID="Button1" runat="server" Style="margin-top: 5px;" Text="Bul" CssClass="btn btn-success" OnClick="Button1_Click" />
        </div>

        <div style="float: right; margin-right: 10px; line-height: 60px;">
            <span style="line-height: 60px; color: white;">Sınıf</span>
            <asp:DropDownList ID="DropDownList1" Style="border-radius: 10px;" runat="server" Height="30px">
                <asp:ListItem>Tümü</asp:ListItem>
                <asp:ListItem>Ekonomik</asp:ListItem>
                <asp:ListItem>Orta</asp:ListItem>
                <asp:ListItem>Lüks</asp:ListItem>
                <asp:ListItem>Suv</asp:ListItem>
                <asp:ListItem>Minibüs</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div style="float: right; margin-right: 10px; line-height: 60px;">
            <span style="line-height: 60px; color: white;">Vites</span>
            <asp:DropDownList ID="DropDownList2" Style="border-radius: 10px;" runat="server" Height="30px">
                <asp:ListItem>Tümü</asp:ListItem>
                <asp:ListItem>Otomatik</asp:ListItem>
                <asp:ListItem>Manuel</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div style="float: right; margin-right: 10px; line-height: 60px;">
            <span style="line-height: 60px; color: white;">Yakıt</span>
            <asp:DropDownList ID="DropDownList3" runat="server" Style="border-radius: 10px;" Height="30px">
                <asp:ListItem>Tümü</asp:ListItem>
                <asp:ListItem>Hibrit</asp:ListItem>
                <asp:ListItem>Benzin</asp:ListItem>
                <asp:ListItem>Dizel</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>
    <div style="float: right; height: 200px; background-color: green; width: 250px;">
        <div style="float: right; height: 195px; background-color: green; width: 250px;">
            <asp:DataList ID="DataList2" runat="server" Height="158px" Width="223px">
                <ItemTemplate>
                    <span style="color: red;">Toplam Bakiye=</span>
                    <asp:Label ID="Label7" runat="server" Style="color: black; margin-top: 50px;" Text='<%# Eval("Fiyat") %>'></asp:Label>
                    TL            
                </ItemTemplate>
            </asp:DataList>
        </div>
        <div style="float: right; height: 200px; background-color: green; width: 250px;">
            <asp:DataList ID="DataList3" runat="server" Width="225px">
                <ItemTemplate>
                    <span>Alış Yeri:</span>
                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("kiralamaAlısYeri") %>'></asp:Label> <br />
                    <span>Teslim Yeri:</span>
                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("kiralamaTeslimYeri") %>'></asp:Label> <br />
                    <span>Kiralama Başlangıç Tarih</span>
                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("kiralamaAlısTarih","{0:dd MMMM yyyy}") %>'></asp:Label> <br />
                    <span>Kiralama Başlangıç Tarih</span>
                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("kiralamaTeslimTarih","{0:dd MMMM yyyy}") %>'></asp:Label> <br />      

                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>

    <div>
        <asp:DataList ID="DataList1" runat="server" Width="900px" RepeatColumns="2">
            <ItemTemplate>
                <div style="float: left;">
                    <asp:Image ID="Image1" runat="server" Style="width: 300px; height: 250px;" ImageUrl='<%# Eval("Resimler") %>' />
                </div>
                <div style="margin-top: 10px;">

                    <div style="margin-top: 5px;">
                        <i class="fas fa-car"></i>
                        <asp:Label ID="Label1" runat="server" Style="font-size: 20px;" Text='<%# Eval("Marka") %>'></asp:Label>
                    </div>

                    <div style="margin-top: 5px;">
                        <i class="fas fa-car"></i>
                        <asp:Label ID="Label2" runat="server" Style="font-size: 20px;" Text='<%# Eval("Model") %>'></asp:Label>
                    </div>
                    <div style="margin-top: 5px;">
                        <i class="fas fa-dollar-sign" style="color: #e6e835;"></i>
                        Günlük
                        <asp:Label ID="Label3" runat="server" Style="font-size: 20px;" Text='<%# Eval("Fiyat") %>'></asp:Label>
                        TL
                    </div>
                    <div style="margin-top: 5px;">
                        <i class="fas fa-cogs" style="color: purple"></i>
                        <asp:Label ID="Label4" runat="server" Style="font-size: 20px;" Text='<%# Eval("VitesTürü") %>'></asp:Label>
                        Vites
                    </div>
                    <div style="margin-top: 5px;">
                        <i class="fas fa-gas-pump" style="color: green;"></i>
                        <asp:Label ID="Label5" runat="server" Style="font-size: 18px;" Text='<%# Eval("Yakıt") %>'></asp:Label>
                    </div>
                    <div style="margin-top: 5px;">
                        <i class="fa fa-users" style="color: #ff6a00;"></i>
                        <asp:Label ID="Label6" runat="server" Style="font-size: 18px;" Text='<%# Eval("KoltukSayısı") %>'></asp:Label>
                        <br />

                        <div style="margin-top: 5px;">
                            Kirala  <a href="aracsecimi.aspx?arabaID=<%#Eval("arabaID") %>&islem=kirala">
                                <img alt="" class="auto-style1" src="images/next.png" />
                            </a>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>


</asp:Content>
