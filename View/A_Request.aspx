<%@ Page Title="" Language="C#" MasterPageFile="~/View/layout/Admin.Master" AutoEventWireup="true" CodeBehind="A_Request.aspx.cs" Inherits="test.View.A_Request" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Requests
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h3 class="pb-4">Requests of People</h3>

        <div class="container">
            <asp:Panel ID="pnl2" runat="server" Visible="false">
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <asp:Label ID="success" Text="" runat="server" />
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            </asp:Panel>
        </div>

        <asp:Repeater ID="Repeater1" runat="server">

            <HeaderTemplate>
                <table class="table">
                    <tr>
                        <th>ID
                        </th>
                        <th>First Name
                        </th>
                        <th>Middle Name
                        </th>
                        <th>Last Name
                        </th>
                        <th>Email
                        </th>
                        <th>Mobile No.
                        </th>
                        <th>Type
                        </th>
                        <th>#
                        </th>
                        <th>#
                        </th>
                    </tr>
            </HeaderTemplate>

            <ItemTemplate>

                <tr>

                    <td><asp:Label ID="id0" Text='<%# Eval("Id") %>' runat="server" /></td>


                    <td><asp:Label ID="fname" Text='<%# Eval("Fname") %>' runat="server" /></td>


                    <td>
                        <asp:Label ID="mname" Text='<%# Eval("Mname") %>' runat="server" /></td>


                    <td><asp:Label ID="lname" Text='<%# Eval("Lname") %>' runat="server" /></td>


                    <td><asp:Label ID="email" Text='<%# Eval("Email") %>' runat="server" /></td>


                    <td><asp:Label ID="mob" Text='<%# Eval("Mob") %>' runat="server" /></td>


                    <td><asp:Label ID="type" Text='<%# Eval("type") %>' runat="server" /></td>

                    <td>
                        <asp:Button Text="Accept" runat="server" CommandName="select" class="btn btn-outline-success" OnClick="Select" /></td>

                    <td>
                        <asp:Button Text="Decline" runat="server" CommandName="delete" class="btn btn-outline-danger" OnClick="Delete" /></td>

                </tr>



            </ItemTemplate>

            <FooterTemplate>
                </table>
            </FooterTemplate>

        </asp:Repeater>

    </div>

</asp:Content>
