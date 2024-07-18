<%@ Page Title="" Language="C#" MasterPageFile="~/user/UserMaster.Master" AutoEventWireup="true" CodeBehind="BuyNow.aspx.cs" Inherits="bca6.user.BuyNow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="m-5">
        <div class="mt-1 p-4 rounded bg-light">
            <h1 class="text-center fw-bolder text-dark">Buy Now</h1>
            <div class="m-4 container border">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-12">
                        <asp:Image ID="Image1" Height="300" Width="300" runat="server" />
                    </div>
                    <div class="col-lg-8 col-md-8 col-sm-12 py-4">
                        <center><asp:Label ID="Lbltit" runat="server" CssClass="h4" Text="Label"></asp:Label></center>
                        <div class="row mt-3">
                            <div class="col-lg-6 col-md-6 col-sm-12 pt-2">
                                <b class="h4">Price:</b> ₹
                                <asp:Label ID="Lblprice" runat="server" CssClass="h4 my-3" Text="Label"></asp:Label>
                                <asp:TextBox ID="txtqty" runat="server" CssClass="form-control my-3" AutoPostBack="true" TextMode="Number" placeholder="Quantity" Text="1" OnTextChanged="txtqty_TextChanged"></asp:TextBox>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-12">
                                <asp:TextBox ID="txtaddr" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" placeholder="Address"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row ">
                            <div class="col-lg-6 col-md-6 col-sm-12 my-2">
                                <asp:TextBox ID="txtcity" runat="server" CssClass="form-control" ReadOnly="true" placeholder="City"></asp:TextBox>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-12 my-2">
                                <asp:TextBox ID="txtpin" runat="server" CssClass="form-control" ReadOnly="true" TextMode="Number" placeholder="Pincode"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-12 my-2">
                                <asp:TextBox ID="txtcont" runat="server" CssClass="form-control" TextMode="Number" placeholder="Contact Number" ReadOnly="true"></asp:TextBox>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-12 my-2">
                                <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" placeholder="Email" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 text-center">
                                <b class="h4">Total:</b> ₹  <asp:Label ID="lbltprice" runat="server" CssClass="h4 my-3" Text="Label"></asp:Label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 text-center my-2">
                                <asp:Button ID="Button1" runat="server" Text="Buy Now" CssClass="btn btn-outline-dark" OnClick="Button1_Click"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>




</asp:Content>
