<%@ Page Title="" Language="C#" MasterPageFile="~/View/layout/Trainer.Master" AutoEventWireup="true" CodeBehind="Classroom_TNR.aspx.cs" Inherits="test.View.Classroom_TNR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlace_Title" runat="server">
    Classroom
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <asp:Panel ID="Panel1" runat="server" Visible="false">
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <asp:Label ID="invalid" Text="" runat="server" />
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        </asp:Panel>
    </div>

    <div class="row">

        <div class="col">

            <div class="container">
                <asp:Repeater ID="Repeater1" runat="server">

                    <HeaderTemplate>
                        <table class="table">
                            <tr>
                                <th>#
                                </th>
                                <th>Trainee ID
                                </th>
                                <th>First Name
                                </th>
                                <th>Middle Name
                                </th>
                                <th>Last Name
                                </th>
                                <th>Email
                                </th>
                                <th>#
                                </th>
                                <th>#
                                </th>
                            </tr>
                    </HeaderTemplate>

                    <ItemTemplate>

                        <tr>
                            <td>
                                <asp:Label ID="Label1" Text='<%# Container.ItemIndex + 1 %>' runat="server" />
                            </td>

                            <td>
                                <asp:Label ID="id0" Text='<%# Eval("TNE_Id") %>' runat="server" />
                            </td>


                            <td>
                                <asp:Label ID="Label3" Text='<%# Eval("Fname") %>' runat="server" />
                            </td>


                            <td>
                                <asp:Label ID="Label4" Text='<%# Eval("Mname") %>' runat="server" />
                            </td>


                            <td>
                                <asp:Label ID="Label5" Text='<%# Eval("Lname") %>' runat="server" />
                            </td>


                            <td>
                                <asp:Label ID="Label6" Text='<%# Eval("Email") %>' runat="server" />
                            </td>

                            <td>
                                <asp:Button Text="Add" runat="server" CommandName="select" class="btn btn-outline-success" OnClick="add_t" />
                            </td>

                            <td>
                                <asp:Button Text="Remove" runat="server" CommandName="delete" class="btn btn-outline-danger" />
                            </td>

                        </tr>

                    </ItemTemplate>

                    <FooterTemplate>
                        </table>
                    </FooterTemplate>

                </asp:Repeater>
            </div>

        </div>

        <div class="col">

            <div class="container">
                <asp:Repeater ID="Repeater2" runat="server">

                    <HeaderTemplate>
                        <table class="table">
                            <tr>
                                <th>#
                                </th>
                                <th>Trainee ID
                                </th>
                                <th>Email
                                </th>
                            </tr>
                    </HeaderTemplate>

                    <ItemTemplate>

                        <tr>
                            <td>
                                <asp:Label ID="index" Text='<%# Container.ItemIndex + 1 %>' runat="server" />
                            </td>

                            <td>
                                <asp:Label ID="id1" Text='<%# Eval("TNE_Id") %>' runat="server" />
                            </td>


                            <td>
                                <asp:Label ID="fname" Text='<%# Eval("Email") %>' runat="server" />
                            </td>

                        </tr>

                    </ItemTemplate>

                    <FooterTemplate>
                        </table>
                    </FooterTemplate>


                </asp:Repeater>
            </div>

        </div>

    </div>


    <div class="container-fluid pt-lg-5">
        <div class="card">
            <div class="row card-header">
                <div class="col-md-6">
                    <h5>Assessment List</h5>
                </div>
                <div class="col-md-6 d-flex justify-content-end">
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-outline-success" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        ADD +
                    </button>
                </div>


            </div>
            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Create Assessment</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="form-label">Assessment Name</label>
                                    <asp:TextBox runat="server" class="form-control" ID="Aname" placeholder="Enter Assessment Name" />
                                </div>
                                <div class="col-md-12">
                                    <label class="form-label">Description</label>
                                    <asp:TextBox runat="server" class="form-control" ID="desc" placeholder="Enter Description" />
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <asp:Button ID="add" Text="Add" runat="server" class="btn btn-primary" OnClick="asmt" />
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
            <asp:Repeater ID="Repeater3" runat="server">
                <HeaderTemplate>
                    <div class="container pt-5">
                        <table class="table table-bordered table-striped">
                            <tr class="text-center">
                                <th>#</th>
                                <th>Name</th>
                                <th>Description</th>
                                <th>View</th>
                            </tr>
                </HeaderTemplate>

                <ItemTemplate>
                    <tr>
                        <th class="text-center">
                            <asp:Label Text='<%# Container.ItemIndex + 1 %>' runat="server" />
                            <asp:Label ID="Aid" Text='<%#Eval("Asmnt_Id")%>' runat="server" Visible="false" />
                        </th>
                        <td>
                            <asp:Label ID="name" Text='<%# Eval("name") %>' runat="server" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("desc") %>' runat="server" /></td>
                        <td style="text-align:center;">
                            <asp:Button Text="View" runat="server" class="btn btn-outline-info" OnClick="ques"/></td>
                    </tr>
                </ItemTemplate>

                <FooterTemplate>
                    </table>
                    </div>
                </FooterTemplate>

            </asp:Repeater>
        </div>
    </div>

</asp:Content>
