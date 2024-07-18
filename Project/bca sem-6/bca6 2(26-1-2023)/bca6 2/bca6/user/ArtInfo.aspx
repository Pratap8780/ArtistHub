<%@ Page Title="" Language="C#" MasterPageFile="~/user/UserMaster.Master" AutoEventWireup="true" CodeBehind="~/user/ArtInfo.aspx" Inherits="bca6.user.ArtInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .img {
            margin: 20px;
            /*text-align: center;*/
            /*background-color:#E7CBA9;*/
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <h1 align="center" class="text-dark text-center" style="background-color: rgba(255,255,255,0.5)">Art Information</h1>
        <div class="border border-3 rounded rounded-3 bg-light">
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="4">
                <ItemTemplate>
                    <div class="single-product p-2">
                        <div class="product-img">
                            <a href='DisplayArt.aspx?id=<%#Eval("aId") %>' >
                                <asp:Image ID="img1" class="default-img" runat="server" ImageUrl='<%#Eval("img1") %>' Height="450" Width="350" />
                            <%--    <asp:Image ID="Image1" class="hover-img" runat="server" ImageUrl='<%#Eval("img1") %>' Height="450" Width="350" />--%>
                            </a>
                            <%--<div class="button-head">
                                <div class="product-action">
                                    <asp:LinkButton data-toggle="modal" ID="lnk" data-target="#exampleModal" title="Quick View" runat="server"><i class=" ti-eye"></i><span>Quick Shop</span></asp:LinkButton>
                                    <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                    <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                </div>
                                <div class="product-action-2">
                                    <a title="Add to cart" href="#">Add to cart</a>
                                </div>
                            </div>--%>
                        </div>
                        <div class="product-content">

                            <h4><a href='DisplayArt.aspx?id=<%#Eval("aId") %>' class="text-decoration-none  text-dark">
                                <asp:Label ID="lblanm" runat="server" Text='<%#Eval("atitle") %>'></asp:Label></a></h4>
                            <div class="product-price">
                                <span>
                                    <asp:Label ID="lblprice" runat="server" Text='<%# "₹  "+Eval("price") %>' Font-Size="Larger"></asp:Label></span>
                            </div>
                        </div>
                    </div>
                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span class="ti-close" aria-hidden="true"></span></button>
                                </div>
                                <div class="modal-body">
                                    <div class="row no-gutters">
                                        <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                                            <!-- Product Slider -->
                                            <div class="product-gallery">
                                                <div class="quickview-slider-active">
                                                    <div class="single-slider">
                                                        <asp:Image ID="art1" runat="server" ImageUrl="~/images/3d roll.jpg" />
                                                    </div>
                                                    <div class="single-slider">
                                                        <asp:Image ID="art2" runat="server" ImageUrl="~/images/free style.jpg" />
                                                    </div>
                                                    <div class="single-slider">
                                                        <asp:Image ID="art3" runat="server" ImageUrl="~/images/dot bookmark.jpg" />
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- End Product slider -->
                                        </div>
                                        <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                                            <div class="quickview-content">
                                                <h2>Flared Shift Dress</h2>
                                                <div class="quickview-ratting-review">
                                                    <div class="quickview-ratting-wrap">
                                                        <div class="quickview-ratting">
                                                            <i class="yellow fa fa-star"></i>
                                                            <i class="yellow fa fa-star"></i>
                                                            <i class="yellow fa fa-star"></i>
                                                            <i class="yellow fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                        </div>
                                                        <a href="#">(1 customer review)</a>
                                                    </div>
                                                    <div class="quickview-stock">
                                                        <span><i class="fa fa-check-circle-o"></i>in stock</span>
                                                    </div>
                                                </div>
                                                <h3>$29.00</h3>
                                                <div class="quickview-peragraph">
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia iste laborum ad impedit pariatur esse optio tempora sint ullam autem deleniti nam in quos qui nemo ipsum numquam.</p>
                                                </div>

                                                <div class="quantity">
                                                    <!-- Input Order -->
                                                    <div class="input-group">
                                                        <div class="button minus">
                                                            <button type="button" class="btn btn-primary btn-number" disabled="disabled" data-type="minus" data-field="quant[1]">
                                                                <i class="ti-minus"></i>
                                                            </button>
                                                        </div>
                                                        <input type="text" name="quant[1]" class="input-number" data-min="1" data-max="1000" value="1">
                                                        <div class="button plus">
                                                            <button type="button" class="btn btn-primary btn-number" data-type="plus" data-field="quant[1]">
                                                                <i class="ti-plus"></i>
                                                            </button>
                                                        </div>
                                                    </div>
                                                    <!--/ End Input Order -->
                                                </div>
                                                <div class="add-to-cart">
                                                    <a href="#" class="btn">Add to cart</a>
                                                    <a href="#" class="btn min"><i class="ti-heart"></i></a>
                                                    <a href="#" class="btn min"><i class="fa fa-compress"></i></a>
                                                </div>
                                                <div class="default-social">
                                                    <h4 class="share-now">Share:</h4>
                                                    <ul>
                                                        <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                                                        <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                                                        <li><a class="youtube" href="#"><i class="fa fa-pinterest-p"></i></a></li>
                                                        <li><a class="dribbble" href="#"><i class="fa fa-google-plus"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Modal end -->
                </ItemTemplate>
            </asp:DataList>

        </div>

    </div>

    <!-- Jquery -->
    <script src="../js/jquery.min.js"></script>
    <script src="../js/jquery-migrate-3.0.0.js"></script>
    <script src="../js/jquery-ui.min.js"></script>
    <!-- Popper JS -->
    <script src="../js/popper.min.js"></script>
    <!-- Bootstrap JS -->
    <script src="../js/bootstrap.min.js"></script>
    <!-- Color JS -->
    <script src="../js/colors.js"></script>
    <!-- Slicknav JS -->
    <script src="../js/slicknav.min.js"></script>
    <!-- Owl Carousel JS -->
    <script src="../js/owl-carousel.js"></script>
    <!-- Magnific Popup JS -->
    <script src="../js/magnific-popup.js"></script>
    <!-- Fancybox JS -->
    <script src="../js/facnybox.min.js"></script>
    <!-- Waypoints JS -->
    <script src="../js/waypoints.min.js"></script>
    <!-- Countdown JS -->
    <script src="../js/finalcountdown.min.js"></script>
    <!-- Nice Select JS -->
    <script src="../js/nicesellect.js"></script>
    <!-- Ytplayer JS -->
    <script src="../js/ytplayer.min.js"></script>
    <!-- Flex Slider JS -->
    <script src="../js/flex-slider.js"></script>
    <!-- ScrollUp JS -->
    <script src="../js/scrollup.js"></script>
    <!-- Onepage Nav JS -->
    <script src="../js/onepage-nav.min.js"></script>
    <!-- Easing JS -->
    <script src="../js/easing.js"></script>
    <!-- Active JS -->
    <script src="../js/active.js"></script>
</asp:Content>
