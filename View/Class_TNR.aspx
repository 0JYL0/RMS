<%@ Page Title="" Language="C#" MasterPageFile="~/View/layout/Trainer.Master" AutoEventWireup="true" CodeBehind="Class_TNR.aspx.cs" Inherits="test.View.Class_TNR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlace_Title" runat="server">
    Class
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container pt-lg-5">
        <div class="card">
            <div class="row card-header">
                <div class="col-md-6">
                    <h5>Class</h5>
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
                            <h5 class="modal-title" id="exampleModalLabel">Create Class</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="form-label">Enter Class Name</label>
                                    <asp:TextBox runat="server" class="form-control" ID="cname" placeholder="Class Name" />
                                </div>
                                <div class="col-md-12">
                                    <label class="form-label">Description</label>
                                    <asp:TextBox runat="server" class="form-control" ID="desc" placeholder="Enter Description" />
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <asp:Button ID="add" Text="Add" runat="server" class="btn btn-primary" OnClick="Class_Add" />
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
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
                                <div class="spinner-grow text-success" role="status">
                                    <span class="visually-hidden">Loading...</span>
                                </div>
                                <asp:Label ID="status" Text='<%# Eval("status") %>' runat="server" Class="text-success" />
                                <div class="pt-4">
                                    <asp:Button ID="view" Text="View" runat="server" class="btn btn-outline-primary" OnClick="View"/>
                                    <asp:Button ID="inactive" Text="Inactive" runat="server" class="btn btn-outline-danger" OnClick="Inactive"/>
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
