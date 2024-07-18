<%@ Page Title="" Language="C#" MasterPageFile="~/user/UserMaster.Master" AutoEventWireup="true" CodeBehind="DisplayArt.aspx.cs" Inherits="bca6.user.DisplayArt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="m-5">
        <div class="mt-5 p-5 rounded bg-light">
            <h1 class="text-center fw-bolder text-dark">Art Detail</h1>
            <div class="m-5 container border">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <asp:Image ID="Image1" CssClass="img-fluid" runat="server" />
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <center>
                        <asp:Label ID="lbltit" runat="server" CssClass="text-black fw-bold fs-3 text-center"></asp:Label><br />
                        
                        <asp:Label ID="lblatype" runat="server" CssClass="text-black fw-bold fs-3"></asp:Label>               </center>
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-12 my-4">
                                <asp:Image ID="Image2" CssClass="img-fluid" runat="server" />
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-12 my-4">
                                <asp:Image ID="Image3" CssClass="img-fluid" runat="server" />
                            </div>
                        </div>
                        <asp:Label ID="lbldescription" runat="server" CssClass="text-black fs-3"></asp:Label>
                        <br />
                        <asp:Label ID="lblqty" runat="server" CssClass="text-black fs-3"></asp:Label>
                        <br />
                        <asp:Label ID="lblprice" runat="server" CssClass="text-black fs-3"></asp:Label>
                        <br />
                        <center>
                            <button ID="btnbuynow" Class="btn btn-dark text-light my-4 " runat="server" onServerClick="btnbuynow_ServerClick"><i class="fa  fa-shopping-bag"></i>   Buy Now</button>
                           </center>
                    </div>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
