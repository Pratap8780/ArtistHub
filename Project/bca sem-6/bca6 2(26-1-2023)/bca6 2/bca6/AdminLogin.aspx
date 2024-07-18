<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="bca6.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/site.css" rel="stylesheet" />
</head>
<body>
   <form id="form1" runat="server">
        <div>
            <section class="h-100 gradient-form" style="background-color: #eee;">
                <div class="container py-5 h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col-xl-10">
                            <div class="card rounded-3 text-black">
                                <div class="row g-0">
                                    <div class="col-lg-6">
                                        <div class="card-body p-md-5 mx-md-4">
                                            <div class="text-center">
                                                <h4 class="mt-1 mb-5 pb-1">The Artist Hub</h4>
                                            </div>
                                            <form>
                                                <p>Please login to your account</p>

                                                <div class="form-outline mb-4">
                                                    <asp:TextBox ID="txtusr" CssClass="form-control" runat="server" placeholder="Username"></asp:TextBox>
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ValidationGroup="btnlogin" ErrorMessage="enter your Phone number or email address." CssClass="text-danger fw-bold" ControlToValidate="txtusr" Display="Dynamic"></asp:RequiredFieldValidator>
                                                </div>

                                                <div class="form-outline mb-4">

                                                    <asp:TextBox ID="txtpass" CssClass="form-control" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ValidationGroup="btnlogin" ErrorMessage="enter your Password." CssClass="text-danger fw-bold" ControlToValidate="txtpass" Display="Dynamic"></asp:RequiredFieldValidator>
                                                </div>

                                                <div class="text-center pt-1 mb-5 pb-1">
                                                    <%--<button class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3" type="button">Log
                      in</button>--%>
                                                    <asp:Button ID="btnlogin" CssClass="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3" ValidationGroup="btnlogin" runat="server" Text="Log in" OnClick="btnlogin_Click"/>
                                                    <br />
                                                    <a class="text-muted" href="#!">Forgot password?</a>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 d-flex align-items-center gradient-custom-2">
                                        <div class="text-white px-3 py-4 p-md-5 mx-md-4">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </form>
</body>
</html>
