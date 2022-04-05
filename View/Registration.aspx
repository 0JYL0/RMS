<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="test.View.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Registration</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.1/font/bootstrap-icons.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container pt-lg-5 pb-lg-5">
            <div class="card text-center">
                <div class="card-header">
                    <ul class="nav nav-tabs card-header-tabs">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="true" href="Registration.aspx">Registration</a>
                        </li>
                    </ul>
                </div>
                <div class="card-body">
                    <h5 class="card-title">Become a Part of Rise</h5>
                    <div class="row g-3 pt-lg-5" align="left">
                        <div class="col-md-4">
                            <label class="form-label">First Name</label>
                            <asp:RequiredFieldValidator ID="Fname1" runat="server" ErrorMessage="*" ControlToValidate="fname" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            <asp:TextBox runat="server" class="form-control" ID="fname" placeholder="Enter your first name" />
                        </div>
                        <div class="col-md-4">
                            <label class="form-label">Middle Name</label>
                            <asp:RequiredFieldValidator ID="Mname1" runat="server" ErrorMessage="*" ControlToValidate="mname" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            <asp:TextBox runat="server" class="form-control" ID="mname" placeholder="Enter your middle name" />
                        </div>
                        <div class="col-md-4">
                            <label class="form-label">Last Name</label>
                            <asp:RequiredFieldValidator ID="Lname1" runat="server" ErrorMessage="*" ControlToValidate="lname" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            <asp:TextBox runat="server" class="form-control" ID="lname" placeholder="Enter your last name" />
                        </div>
                        <div class="col-6">
                            <label for="inputEmail4" class="form-label">Email</label>
                            <asp:RequiredFieldValidator ID="Email1" runat="server" ErrorMessage="*" ControlToValidate="email" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            <asp:TextBox runat="server" class="form-control" ID="email" placeholder="Enter your email" TextMode="Email" />
                        </div>
                        <div class="col-6">
                            <label for="inputPhone" class="form-label">Mobile No.</label>
                            <asp:RequiredFieldValidator ID="mob1" runat="server" ErrorMessage="*" ControlToValidate="mob" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            <asp:TextBox runat="server" class="form-control" ID="mob" placeholder="Enter your mobile number" />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="mob" ErrorMessage="Please enter 10 digits only" ForeColor="#FF3300" ValidationExpression="([0-9]){10}"></asp:RegularExpressionValidator>
                        </div>
                        <div class="col-md-6">
                            <label for="inputState" class="form-label">Password</label>
                            <asp:RequiredFieldValidator ID="Pwd" runat="server" ErrorMessage="*" ControlToValidate="password" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            <asp:TextBox runat="server" class="form-control" ID="password" placeholder="Create your password" TextMode="Password" />
                        </div>
                        <div class="col-md-6">
                            <label for="inputCity" class="form-label">Confirm Password</label>
                            <asp:RequiredFieldValidator ID="cpsw" runat="server" ErrorMessage="*" ControlToValidate="cpassword" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            <asp:TextBox runat="server" class="form-control" ID="cpassword" placeholder="Re-Enter your password" TextMode="Password" />
                            <asp:CompareValidator ID="CPwd" runat="server" ErrorMessage="Password Must Be Same" ControlToCompare="password" ControlToValidate="cpassword" ForeColor="Red"></asp:CompareValidator>
                        </div>

                        <div class="col-md-12">
                            <label for="inputRole" class="form-label">Choose your Role<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="+++" ></asp:CustomValidator>
                            </label>
                            &nbsp;<div class="dropdown">
                                <asp:DropDownList ID="DropDownList1" runat="server" Width="100%" class="form-select">
                                    <asp:ListItem class="dropdown-item">---Select---</asp:ListItem>
                                    <asp:ListItem class="dropdown-item">Trainer</asp:ListItem>
                                    <asp:ListItem class="dropdown-item">Trainee</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <asp:Panel ID="pnl1" runat="server" Visible="false">
                                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                    <asp:Label ID="invalid" Text="" runat="server" />
                                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                </div>
                            </asp:Panel>
                        </div>

                        <div class="col-md-12">
                            <asp:Panel ID="pnl2" runat="server" Visible="false">
                                <div class="alert alert-success alert-dismissible fade show" role="alert">
                                    <asp:Label ID="success" Text="" runat="server" />
                                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                </div>
                            </asp:Panel>
                        </div>

                        <br />
                        <div class="col-12">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="gridCheck" required="required" />
                                <label class="form-check-label" for="gridCheck">
                                    I accepted all terms and conditions.
                                </label>
                            </div>
                            <br />
                        </div>
                        <div class="col-4" style="text-align: center;">
                            <asp:Button Text="Sign Up" runat="server" class="btn btn-primary" OnClick="signin" />
                        </div>
                        <div class="col-4" style="text-align: center;">
                            <button type="reset" class="btn btn-primary">Reset</button>
                        </div>
                        <div class="col-4" style="text-align: center;">
                            <a href="Login.aspx" type="button" class="btn btn-primary">Cancel</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
