<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="bca6.admin.AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="carouselExampleIndicators" class="carousel slide mx-5 mt-4" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner" style="height: 60vh">
            <div class="carousel-item active">
                <img src="../images/art1.jpg" class="d-block w-100 rounded-3" alt="...">
            </div>
            <div class="carousel-item" data-bs-interval="2000">
                <img src="../images/art2.jpg" class="d-block w-100 rounded-3" alt="...">
            </div>
            <div class="carousel-item">
                <img src="../images/art3.jpg" class="d-block w-100 rounded-3" alt="...">
            </div>
        </div>

        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
    <div class="container mt-5 py-3 rounded rounded-3" style="background-color: rgba(0,0,0,0.5)">
        <div class="row g-0">
            <div class="col-lg-6 col-md-12 col-sm-12">
                <a href="" class="text-decoration-none">
                    <img src="../images/complex ornamental.jpg" class="img-fluid img-thumbnail border-0 rounded bg-transparent" alt="...">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 text-center">
                            <h1 class="text-center text-light">Complex Ornamental Mandala</h1>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-6 col-md-12 col-sm-12">
                <a href="" class="text-decoration-none">
                    <img src="../images/free style.jpg" class="img-fluid img-thumbnail border-0 rounded bg-transparent w-100" alt="...">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 text-center">
                            <h1 class="text-center text-light">Free Style Mandala</h1>
                        </div>
                    </div>
                </a>
            </div>
        </div>
        <div class="row g-0">
            <div class="col-lg-6 col-md-12 col-sm-12">
                <a href="" class="text-decoration-none">
                    <img src="../images/gelly roll.jpg" class="img-fluid img-thumbnail border-0 rounded bg-transparent" alt="...">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 text-center">
                            <h1 class="text-center text-light">Gelly Roll Mandala</h1>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-6 col-md-12 col-sm-12">
                <a href="" class="text-decoration-none">
                    <img src="../images/3d roll.jpg" class="img-fluid img-thumbnail border-0 rounded bg-transparent" alt="...">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 text-center">
                            <h1 class="text-center text-light">3D Mandala</h1>
                        </div>
                    </div>
                </a>
            </div>
        </div>
        <div class="row g-0 mt-0">
            <div class="col-lg-12 col-md-12 col-sm-12 d-flex justify-content-center">
                <a href="" class="text-decoration-none">
                    <img src="../images/book mark.jpg" class="img-fluid img-thumbnail border-0 rounded bg-transparent w-100 h-100" alt="...">

                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 text-center">
                            <h1 class="text-center text-light">Dot Book Mark Mandala</h1>
                        </div>
                    </div>
                </a>
            </div>
        </div>
        <%-- book mark --%>
    </div>
</asp:Content>
