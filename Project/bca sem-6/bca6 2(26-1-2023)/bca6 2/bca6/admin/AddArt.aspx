<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddArt.aspx.cs" Inherits="bca6.admin.AddArt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5 p-3 w-50 rounded" style="background-color:rgba(0,0,0,0.5)">
        <div class="row mb-3">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <h1 align="center" class="text-light">Add An Art</h1>
            </div>
        </div>
        <div class="row mb-3">
            <div class="col-lg-6 col-md-6 col-sm-6 mb-3">
                <asp:DropDownList ID="ddltype" runat="server" CssClass="form-select">
                    <asp:ListItem>---Select art type---</asp:ListItem>
                    <asp:ListItem>Dot Bookmark Mandala</asp:ListItem>
                    <asp:ListItem>Complex Ornamental Mandala</asp:ListItem>
                    <asp:ListItem>Gelly Roll Mandala</asp:ListItem>
                    <asp:ListItem>3D Mandala</asp:ListItem>
                    <asp:ListItem>Free Style Mandala</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" InitialValue="---Select art type---" runat="server" ValidationGroup="Save" ErrorMessage="Art Type is required." CssClass="text-light fw-bold" ControlToValidate="ddltype" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <asp:TextBox ID="txtartitle" runat="server" placeholder="Art Title" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="Save" ErrorMessage="Art Title is required." CssClass="text-light fw-bold" ControlToValidate="txtartitle" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row mb-3">
            <div class="col-lg-6 col-md-6 col-sm-6 mb-3">
                <asp:TextBox ID="txtartist" runat="server" placeholder="Artist Name" CssClass="form-control"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="Save" ErrorMessage="Art Name is required." CssClass="text-light fw-bold" ControlToValidate="txtartitle" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="false" CssClass="form-control" ToolTip="Art Image 1" />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="Save" ErrorMessage="Art Image 1 is required." CssClass="text-light fw-bold" ControlToValidate="txtartitle" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row mb-3">
            <div class="col-lg-6 col-md-6 col-sm-6 mb-3">
                <asp:FileUpload ID="FileUpload2" runat="server" AllowMultiple="false" CssClass="form-control" ToolTip="Art Image 2" />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ValidationGroup="Save" ErrorMessage="Art Image 2 is required." CssClass="text-light fw-bold" ControlToValidate="txtartitle" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <asp:FileUpload ID="FileUpload3" runat="server" AllowMultiple="false" CssClass="form-control" ToolTip="Art Image 3" />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ValidationGroup="Save" ErrorMessage="Art Image 3 is required." CssClass="text-light fw-bold" ControlToValidate="txtartitle" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row mb-3">
            <div class="col-lg-6 col-md-6 col-sm-6 mb-3">
                <asp:TextBox ID="txtqty" runat="server" placeholder="Quantity" CssClass="form-control"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ValidationGroup="Save" ErrorMessage="Art Quantity is required." CssClass="text-light fw-bold" ControlToValidate="txtartitle" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <asp:TextBox ID="txtprice" runat="server" placeholder="Price (Per art)" CssClass="form-control"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ValidationGroup="Save" ErrorMessage="Art Price is required." CssClass="text-light fw-bold" ControlToValidate="txtartitle" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row mb-3">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <asp:TextBox ID="txtdescr" runat="server" placeholder="Description" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ValidationGroup="Save" ErrorMessage="Art Description is required." CssClass="text-light fw-bold" ControlToValidate="txtartitle" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row mb-3">
            <div class="col-lg-12 col-md-12 col-sm-12 text-center">
                <asp:Button ID="btnsave" runat="server" Text="Add Art" CssClass="btn btn-primary mx-3"  ValidationGroup="Save" OnClick="btnsave_Click"/>
                <asp:Button ID="Btnupdet" runat="server" Text="upadet" CssClass="btn btn-primary mx-3"  OnClick="btnsave_Click"/>
                <asp:Button ID="Btndelet" runat="server" Text="Delete" CssClass="btn btn-primary mx-3"   OnClick="btnsave_Click"/>
                <asp:Button ID="btnclear" runat="server" Text="Cancel" CssClass="btn btn-danger" />
            </div>
        </div>
    </div>
</asp:Content>
