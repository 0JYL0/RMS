<%@ Page Title="" Language="C#" MasterPageFile="~/View/layout/Trainee.Master" AutoEventWireup="true" CodeBehind="TNE_Home.aspx.cs" Inherits="test.View.TNE_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlace_Title" runat="server">
    Home
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="container">

                <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                    <div class="container-fluid">
                        <div class="row">
                </HeaderTemplate>

                <ItemTemplate>
                    <div class="col-sm-4 pt-3 pb-2">
                        <div class="card">
                            <div class="card-header">
                                <asp:Label ID="id" Text='<%# Eval("C_id") %>' runat="server" Visible="false"/>
                                <h4><asp:Label ID="Label1" Text='<%# Eval("c_name")  %>' runat="server" /></h4>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">
                                    <asp:Label ID="desc" Text='<%# Eval("descr")  %>' runat="server" />
                                </h5>
                                <div class="pt-4">
                                    <asp:Button ID="view" Text="View" runat="server" class="btn btn-outline-primary"/>
                                </div>

                            </div>
                        </div>
                    </div>
                </ItemTemplate>

                <FooterTemplate>
                    </div>
                    </div>
                </FooterTemplate>

            </asp:Repeater>

            </div>

    </div>
</asp:Content>
