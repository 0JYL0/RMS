<%@ Page Title="" Language="C#" MasterPageFile="~/View/layout/Trainer.Master" AutoEventWireup="true" CodeBehind="CreateAssessment.aspx.cs" Inherits="test.View.CreateAssessment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlace_Title" runat="server">
    Assessment
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="card text-center">
            <div class="card-header">
                <ul class="nav nav-tabs card-header-tabs">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="true" href="#">Create</a>
                    </li>
                </ul>
            </div>

            <asp:Panel ID="pnl1" runat="server" Visible="false">
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <asp:Label ID="invalid" Text="" runat="server" />
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            </asp:Panel>

            <div class="card-body">
                <h5 class="card-title">
                    <asp:Label ID="title" Text="" runat="server" /></h5>

                <div class="row g-3 pt-lg-5" align="left">
                    <div class="col-md-8 pb-5">
                        <label class="form-label">Question</label>
                        <asp:TextBox runat="server" class="form-control" ID="ques" placeholder="Enter Your Question" />
                    </div>
                    <div class="col-md-4 pb-5">
                        <label class="form-label">Score</label>
                        <asp:TextBox runat="server" class="form-control" ID="point" placeholder="Enter Score" />
                    </div>
                    <div class="col-md-8">
                        <label class="form-label">Option 1</label>
                        <asp:TextBox runat="server" class="form-control" ID="Opt1" placeholder="Enter Option 1" />
                    </div>
                    <div class="col-md-4">
                        <label class="form-label">Answer 1</label>
                        <asp:RadioButton ID="Op1" runat="server" class="form-check" GroupName="ans" />
                    </div>
                    <div class="col-md-8">
                        <label class="form-label">Option 2</label>
                        <asp:TextBox runat="server" class="form-control" ID="Opt2" placeholder="Enter Option 2" />
                    </div>
                    <div class="col-md-4">
                        <label class="form-label">Answer 2</label>
                        <asp:RadioButton ID="Op2" runat="server" class="form-check" GroupName="ans" />
                    </div>
                    <div class="col-md-8">
                        <label class="form-label">Option 3</label>
                        <asp:TextBox runat="server" class="form-control" ID="Opt3" placeholder="Enter Option 3" />
                    </div>
                    <div class="col-md-4">
                        <label class="form-label">Answer 3</label>
                        <asp:RadioButton ID="Op3" runat="server" class="form-check" GroupName="ans" />
                    </div>
                    <div class="col-md-8">
                        <label class="form-label">Option 4</label>
                        <asp:TextBox runat="server" class="form-control" ID="Opt4" placeholder="Enter Option 4" />
                    </div>
                    <div class="col-md-4">
                        <label class="form-label">Answer 4</label>
                        <asp:RadioButton ID="Op4" runat="server" class="form-check" GroupName="ans" />
                    </div>
                    <br />
                    <div class="col-6" style="text-align: center;">
                        <asp:Button Text="Add" runat="server" class="btn btn-success" ID="liveToastBtn" OnClick="liveToastBtn_Click" />
                    </div>
                    <div class="col-6" style="text-align: center;">
                        <button type="reset" class="btn btn-primary">Reset</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <asp:Panel ID="Panel1" runat="server">

        <div class="position-fixed bottom-0 end-0 p-3" style="z-index: 11">
            <div id="liveToast" class="toast hide" role="alert" aria-live="assertive" aria-atomic="true">
                <div class="toast-header">
                    <img src="..." class="rounded me-2" alt="...">
                    <strong class="me-auto">Bootstrap</strong>
                    <small>11 mins ago</small>
                    <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
                </div>
                <div class="toast-body">
                    Hello, world! This is a toast message.
                </div>
            </div>
        </div>
    </asp:Panel>

</asp:Content>
