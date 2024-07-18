<%@ Page Title="" Language="C#" MasterPageFile="~/user/UserMaster.Master" AutoEventWireup="true" CodeBehind="MyOrders.aspx.cs" Inherits="bca6.user.MyOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">
        <h3 align="center" class="fw-bold my-3">My Orders</h3>
        <asp:GridView ID="GridView1" runat="server" CssClass="table table-light table-responsive" AutoGenerateColumns="false">
            <Columns>
                <asp:TemplateField HeaderText="ID">
                    <ItemTemplate>
                        <asp:Label ID="lblid" runat="server" Text='<%#Eval("sid") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Art Type">
                    <ItemTemplate>
                        <asp:Label ID="lblatype" runat="server" Text='<%#Eval("artType") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Art Title">
                    <ItemTemplate>
                        <asp:Label ID="lblatitle" runat="server" Text='<%#Eval("atitle") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                     <asp:Image ID="img1" runat="server" Height="150" Width="150" ImageUrl='<%#Eval("img1") %>'/>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Price">
                    <ItemTemplate>
                        <asp:Label ID="lblprice" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Quantity">
                    <ItemTemplate>
                        <asp:Label ID="lblqty" runat="server" Text='<%#Eval("qty") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Address">
                    <ItemTemplate>
                        <asp:Label ID="lbladdr" runat="server" Text='<%#Eval("addr") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Total Price">
                    <ItemTemplate>
                        <asp:Label ID="lbltprice" runat="server" Text='<%#Eval("total") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Cancel Order">
                    <ItemTemplate>
                       <a href='MyOrders.aspx?id=<%#Eval("sid") %>' class="h4"><span class="fa fa-trash text-danger"></span></a>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
