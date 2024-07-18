<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="DisplayArts.aspx.cs" Inherits="bca6.admin.DisplayArts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container p-5 mt-5">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="table table-light">
            <Columns>
                <asp:TemplateField HeaderText="ID">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lblid" Text='<%#Eval("aid") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Art Type">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lblatype" Text='<%#Eval("artType") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Title">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lbltit" Text='<%#Eval("atitle") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Artist Name">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lblartist" Text='<%#Eval("artist") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                       <asp:Image ID="img1" runat="server" Height="150" Width="150" ImageUrl='<%#Eval("img1") %>'/>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Quantity">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lblqty" Text='<%#Eval("qty") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                       <a href='DisplayArts.aspx?id=<%#Eval("aId") %>' class="btn btn-danger"><i class="fa fa-trash"></i></a>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
