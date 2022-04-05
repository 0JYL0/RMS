<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="test.View.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <div
                    style="width: 500px; padding: 40px; background: rgba(0, 0, 0, 0.6); text-align: center; transition: 0.25s; margin-top: 70px; border-radius: 10px;">
                    <h2 class="secondry center text-light">LOGIN</h2>
                    <br />
                    <div class="form-floating">
                        <asp:TextBox ID="uname" runat="server" class="form-control" name="user" placeholder="Username" TabIndex="1" ValidateRequestMode="Enabled"></asp:TextBox>
                        <label for="floatingInput"><i class="bi bi-person">Username</i></label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="uname" Font-Bold="True" ForeColor="Red" Font-Size="Larger"></asp:RequiredFieldValidator>
                    </div>
                    <br />
                    <div class="form-floating">
                        <asp:TextBox ID="pass" runat="server" class="form-control" name="user" placeholder="Password" TabIndex="2" TextMode="Password" ValidateRequestMode="Enabled"></asp:TextBox>
                        <label for="floatingPassword"><i class="bi bi-key">Password</i></label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="pass" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <br />

                    <div>
                        <div class="dropdown">
                            <asp:DropDownList ID="DropDownList1" runat="server" Width="100%" class="form-select" TabIndex="3">
                                <asp:ListItem class="dropdown-item" Value="0">---Select---</asp:ListItem>
                                <asp:ListItem class="dropdown-item">Trainer</asp:ListItem>
                                <asp:ListItem class="dropdown-item">Trainee</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <br />

                    <div class="d-grid gap-2 pt-3">
                        <asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-outline-light" TabIndex="4" OnClick="Button1_Click" />
                    </div>
                    <br />
                    <a class="dropdown-item" href="Registration.aspx" style="border-radius: 5px;">New around here? Sign up</a>
                    <%--<a class="dropdown-item" href="#" style="border-radius: 5px;">Forgot password?</a>--%>

                    <asp:Panel ID="Panel1" runat="server" Visible="False">

                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            <asp:Label ID="alert" runat="server" Text=""></asp:Label>
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>

                    </asp:Panel>

                </div>
            </center>
        </div>
    </form>
</body>
</html>
