<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Shihab_project.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        
        #form1 {
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        
        .form-group {
            margin-bottom: 20px;
        }
        
        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        
        .form-group input[type="text"],
        .form-group input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        
        .btn-login,
        .btn-signup {
            display: inline-block;
            padding: 10px 20px;
            font-size: 14px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
        
        .btn-signup {
            background-color: #28a745;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-group">
            <label for="txt_usrname">Username:</label>
            <asp:TextBox ID="txt_usrname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfv_username" runat="server" ControlToValidate="txt_usrname"
                ErrorMessage="Username is required" Display="Dynamic" CssClass="error-text" />
        </div>
        <div class="form-group">
            <label for="txt_password">Password:</label>
            <asp:TextBox ID="txt_password" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfv_password" runat="server" ControlToValidate="txt_password"
                ErrorMessage="Password is required" Display="Dynamic" CssClass="error-text" />
        </div>
        <div class="form-group">
            <asp:Button ID="btn_login" OnClick="btn_login_Click" CssClass="btn-login" runat="server" Text="Login" />
            <asp:Button ID="btn_signup" OnClick="btn_signup_Click" CssClass="btn-signup" runat="server" Text="Sign Up" CausesValidation="false" />
        </div>
    </form>
</body></html>
