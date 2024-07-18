<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminChangePassword.aspx.cs" Inherits="bca6.admin.AdminChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5 bg-dark p-3 rounded" style="width: 25rem">
        <div class="row mb-3">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <h1 align="center" class="text-light">Change Password</h1>
            </div>
        </div>
        <div class="row mb-3">
            <div class="col-lg-12 col-md-12 col-sm-12 mb-3">
                <asp:TextBox ID="txtoldpwd" TextMode="Password" placeholder="Old Password" runat="server" CssClass="form-control" ValidationGroup="Save"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" Display="Dynamic" ControlToValidate="txtoldpwd" Font-Bold="true" ErrorMessage="Old password is required" ValidationGroup="Save"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row mb-3">
            <div class="col-lg-12 col-md-12 col-sm-12 mb-3">
                <asp:TextBox ID="txtnewpwd" TextMode="Password" placeholder="New Password" runat="server" CssClass="form-control" ValidationGroup="Save"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtnewpwd" Display="Dynamic" runat="server" ForeColor="Red" Font-Bold="true" ErrorMessage="New password is required" ValidationGroup="Save"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row mb-3">
            <div class="col-lg-12 col-md-12 col-sm-12 mb-3">
                <asp:TextBox ID="txtcnfpwd" TextMode="Password" placeholder="Confirm Password" runat="server" CssClass="form-control" ValidationGroup="Save"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtcnfpwd" Display="Dynamic" runat="server" ForeColor="Red" Font-Bold="true" ErrorMessage="Confirm password is required" ValidationGroup="Save"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" Display="Dynamic" runat="server" ErrorMessage="Password doesn't match." ControlToCompare="txtnewpwd" ControlToValidate="txtcnfpwd"  Font-Bold="true" ForeColor="Red"></asp:CompareValidator>
            </div>
            <div class="row mb-3">
                <div class="col-lg-12 col-md-12 col-sm-12 text-center">
                    <asp:Button ID="btnchangepassword" runat="server" Text="Change password" CssClass="btn btn-primary mx-3" ValidationGroup="Save" OnClick="btnchangepassword_Click" />
                    <asp:Button ID="btnclear" runat="server" Text="Cancel" CssClass="btn btn-danger" />
                </div>
            </div>

        </div>
    </div>
</asp:Content>
