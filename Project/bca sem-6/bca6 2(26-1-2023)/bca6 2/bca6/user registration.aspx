<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user registration.aspx.cs" Inherits="bca6.user_registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/site.css" rel="stylesheet" />
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section class="h-100 bg-dark">
                <div class="container py-5 h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col">
                            <div class="card card-registration my-4">
                                <div class="row g-0">
                                    <div class="col-xl-6 d-none d-xl-block">
                                        <img src="images/laptop.jpg"
                                            alt="Sample photo" class="img-fluid"
                                            style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
                                    </div>
                                    <div class="col-xl-6">
                                        <div class="card-body p-md-5 text-black">
                                            
                                            <h3 class="mb-5 text-uppercase">User registration</h3>
                                                

                                            <div class="row">
                                                <div class="col-md-6 mb-4">
                                                    <div class="form-outline">
                                                        <asp:TextBox ID="txtfnm" runat="server" CssClass="form-control form-control-lg" placeholder="First Name" OnTextChanged="txtfnm_TextChanged" />
                                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="Save" ErrorMessage="enter your First Name ." CssClass="text-danger fw-bold" ControlToValidate="txtfnm" Display="Dynamic"></asp:RequiredFieldValidator>
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtfnm" ErrorMessage="please enter a-z and A-Z*" ForeColor="Red" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" ValidationGroup="Save"></asp:RegularExpressionValidator>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 mb-4">
                                                    <div class="form-outline">
                                                        <asp:TextBox ID="txtlnm" runat="server" CssClass="form-control form-control-lg" placeholder="Last Name" />
                                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="Save" ErrorMessage="enter your Last Name." CssClass="text-danger fw-bold" ControlToValidate="txtlnm" Display="Dynamic"></asp:RequiredFieldValidator>
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtlnm" ErrorMessage="please enter a-z and A-Z*" ForeColor="Red" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" ValidationGroup="Save"></asp:RegularExpressionValidator>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-outline mb-4">
                                                <asp:TextBox ID="txtaddr" runat="server" TextMode="MultiLine" CssClass="form-control form-control-lg" placeholder="Address" />
                                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="Save" ErrorMessage=" enter your Address." CssClass="text-danger fw-bold" ControlToValidate="txtaddr" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </div>

                                            <div class="d-md-flex justify-content-start align-items-center mb-4 py-2">

                                                <h6 class="mb-0 me-4">Gender: </h6>
                                                <div class="form-check form-check-inline mb-0 me-4">
                                                    <asp:RadioButton ID="rdomale" runat="server" Font-Size="Large" GroupName="g" CssClass="form-check form-check-inline" Text="Male" />

                                                </div>

                                                <div class="form-check form-check-inline mb-0 me-4">
                                                    <asp:RadioButton ID="rdofemale" runat="server" Font-Size="Large" GroupName="g" CssClass="form-check" Text="Female" />
                                                </div>

                                                <div class="form-check form-check-inline mb-0">
                                                    <asp:RadioButton ID="rdoother" runat="server" CssClass="form-check" Font-Size="Large" GroupName="g" Text="Other" />
                                                </div>

                                            </div>

                                            <div class="row">
                                                <div class="col-md-6 mb-4">

                                                    <asp:DropDownList ID="ddlstate" runat="server" CssClass="form-select  form-select-lg" AutoPostBack="True" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged">
                                                        <asp:ListItem>---select state---</asp:ListItem>
                                                         <asp:ListItem>gujarat</asp:ListItem>
                                                        <asp:ListItem>punjab</asp:ListItem>
                                                        <asp:ListItem>maharastra</asp:ListItem>

                                                    </asp:DropDownList>

                                                </div>
                                                <div class="col-md-6 mb-4">

                                                    <asp:DropDownList ID="ddlcity" runat="server" CssClass="form-select form-select-lg" AutoPostBack="True">
                                                        <asp:ListItem>---select city---</asp:ListItem>
                                                    </asp:DropDownList>

                                                </div>
                                            </div>

                                            <div class="form-outline mb-4">
                                                <asp:TextBox ID="txtdob" runat="server" TextMode="Date" ToolTip="Date of Birth" CssClass="form-control form-control-lg"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ValidationGroup="Save" ErrorMessage=" enter your Date of Birth." CssClass="text-danger fw-bold" ControlToValidate="txtdob" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </div>

                                            <div class="form-outline mb-4">
                                                <asp:TextBox ID="txtpin" runat="server" placeholder="Pincode" CssClass="form-control form-control-lg" MaxLength="6"></asp:TextBox>
                                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ValidationGroup="Save" ErrorMessage=" enter your Pincode ." CssClass="text-danger fw-bold" ControlToValidate="txtpin" Display="Dynamic"></asp:RequiredFieldValidator>

                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtpin" Display="Dynamic" ErrorMessage="please enter proper pincode*" ForeColor="Red" ValidationExpression="\d{6}" ValidationGroup="Save"></asp:RegularExpressionValidator>

                                            </div>

                                            <div class="form-outline mb-4">
                                                <asp:TextBox ID="txtcont" runat="server" placeholder="Contact Number" CssClass="form-control form-control-lg" MaxLength="10" OnTextChanged="txtcont_TextChanged"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ValidationGroup="Save" ErrorMessage="enter your Contact Number." CssClass="text-danger fw-bold" ControlToValidate="txtcont" Display="Dynamic"></asp:RequiredFieldValidator>

                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtcont" Display="Dynamic" ErrorMessage="please enter proper contact no*" ForeColor="Red" ValidationExpression="^([7-9{1}])([0-9]{9})$" ValidationGroup="save"></asp:RegularExpressionValidator>

                                            </div>

                                            <div class="form-outline mb-4">
                                                <asp:TextBox ID="txtemail" runat="server" placeholder="Email ID" CssClass="form-control form-control-lg"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ValidationGroup="Save" ErrorMessage="enter your Email ID." CssClass="text-danger fw-bold" ControlToValidate="txtemail" Display="Dynamic"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="please enter proper email*" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="save"></asp:RegularExpressionValidator>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6 mb-4">
                                                    <asp:TextBox ID="txtpsw" runat="server" placeholder="Password" TextMode="Password" CssClass="form-control form-control-lg"></asp:TextBox>
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ValidationGroup="Save" ErrorMessage="enter your Password." CssClass="text-danger fw-bold" ControlToValidate="txtpsw" Display="Dynamic"></asp:RequiredFieldValidator>
                                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtcnfpsw" ControlToValidate="txtpsw" ErrorMessage="password does not match*" ForeColor="Red" ValidationGroup="Save"></asp:CompareValidator>
                                                </div>
                                                <div class="col-md-6 mb-4">
                                                    <asp:TextBox ID="txtcnfpsw" runat="server" placeholder="Confirm Password" TextMode="Password" CssClass="form-control form-control-lg"></asp:TextBox>
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ValidationGroup="Save" ErrorMessage="enter your Confirm Password." CssClass="text-danger fw-bold" ControlToValidate="txtcnfpsw" Display="Dynamic"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>


                                            <div class="d-flex justify-content-end pt-3">
                                                <asp:Button ID="btnclear" CssClass="btn btn-light btn-lg" runat="server" Text="Reset all" />
                                                <asp:Button ID="btnsave" CssClass="btn btn-warning btn-lg ms-2" runat="server"  ValidationGroup="Save" Text="Save" OnClick="btnsave_Click" />
                                            </div>
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
