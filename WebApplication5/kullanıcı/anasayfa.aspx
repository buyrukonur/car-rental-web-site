<%@ Page Title="" Language="C#" MasterPageFile="~/kullanıcı/Site1.Master" AutoEventWireup="true" CodeBehind="anasayfa.aspx.cs" Inherits="WebApplication5.kullanıcı.anasayfa" %>

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
    <div id="booking" class="section">
        <div class="section-center">
            <div class="container">
                <div class="row" style="background-image: url('images/bg-car.png')">

                    <div class="col-md-4 col-md-pull-7" style="margin-top: 100px; height: auto; opacity: 0.9; border-radius: 15px; background-color: #f5f5f5">
                        <div class="booking-form">
                            <form>
                                <div class="form-group">

                                    <span class="form-label" style="margin-top: 15px;">Araç Alış Yeriniz</span>
                                    <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" type="text" placeholder="Adresinizi Giriniz."></asp:TextBox>
                                </div>
                                <div class="form-group">

                                    <span class="form-label">Araç Teslim Yeriniz</span>
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" type="text" placeholder="Adresinizi Giriniz."></asp:TextBox>
                                </div>

                                <div class="row">
                                    <div class="col-sm-6" style="float: left;">
                                        <div class="form-group" style="float: left; height: 35px;">
                                            <span class="form-label" style="color: #d84f4f;">Alış Tarihi</span>
                                            <i class="far fa-calendar-alt" style="font-size: 25px; color: blue;"></i>
                                            <asp:Calendar ID="Calendar1" runat="server" Style="float: left;" Height="16px" Width="154px" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" OnSelectionChanged="Calendar1_SelectionChanged">
                                                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                                <NextPrevStyle VerticalAlign="Bottom" />
                                                <OtherMonthDayStyle ForeColor="#808080" />
                                                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                                <SelectorStyle BackColor="#CCCCCC" />
                                                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                                <WeekendDayStyle BackColor="#FFFFCC" />
                                            </asp:Calendar>
                                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                        </div>

                                    </div>

                                </div>


                                <div class="col-sm-4">
                                    <div class="form-group" style="margin-left: 170px; margin-bottom: 50px; float: left;">

                                        <span class="form-label" style="color: #d84f4f;">Teslim Tarihi</span>
                                        <asp:Calendar ID="Calendar2" runat="server" Style="float: left;" Height="180px" Width="91px" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" OnSelectionChanged="Calendar2_SelectionChanged">
                                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                            <NextPrevStyle VerticalAlign="Bottom" />
                                            <OtherMonthDayStyle ForeColor="#808080" />
                                            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                            <SelectorStyle BackColor="#CCCCCC" />
                                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                            <WeekendDayStyle BackColor="#FFFFCC" />
                                        </asp:Calendar>
                                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

                                        <span class="select-arrow"></span>
                                    </div>
                                    <div style="width:400px;">
                                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                        <br />
                                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                        <br />
                                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                        <br />
                                         <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                    </div>
                                </div>
                                <div>
                                    <asp:DataList ID="DataList1" runat="server">
                                        <ItemTemplate>
                                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("Fiyat") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:DataList>
                                </div>

                                <div class="form-btn">
                                    <asp:Button ID="Button2" runat="server" CssClass="btn btn-success" class="glyphicon glyphicon-eye-open" Text="Araçlara Göz At" OnClick="Button2_Click" />
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
