<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userHome.aspx.cs" Inherits="Shihab_project.userHome" %>

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
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        h2 {
            font-size: 24px;
            margin-bottom: 20px;
        }

        .interface-buttons {
            margin-bottom: 20px;
        }

        .interface-buttons button {
            padding: 10px 20px;
            font-size: 14px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            margin-right: 10px;
        }

        .interface-buttons button:hover {
            background-color: #0056b3;
        }

        .panel {
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 20px;
        }

        .label {
            font-weight: bold;
            margin-right: 5px;
        }

        .label-result {
            font-weight: normal;
        }

        .dropdown {
            margin-bottom: 10px;
        }

        .textbox {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            margin-bottom: 10px;
        }

        .button {
            padding: 10px 20px;
            font-size: 14px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        .button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>User Interfaces</h2>
            <div class="interface-buttons">
                <asp:Button ID="btnInterface1" runat="server" Text="Details" OnClick="btnInterface1_Click" />
                <asp:Button ID="btnInterface2" runat="server" Text="Buy Product" OnClick="btnInterface2_Click" />
                <asp:Button ID="btnInterface3" runat="server" Text="Reset password" OnClick="btnInterface3_Click" />
            </div>
            <asp:Panel ID="pnlInterface0" runat="server">
                <h1>WELCOME</h1>
            </asp:Panel>
            <asp:Panel ID="pnlInterface1" runat="server">
                <h1>Your Details</h1>
                <asp:Label ID="Label1" runat="server" Text="Label">NAME :</asp:Label> 
                <asp:Label ID="lbl_Name" runat="server" Text=""></asp:Label> <br />
                <asp:Label ID="Label2" runat="server" Text="Label">AGE :</asp:Label>
                <asp:Label ID="lbl_age" runat="server" Text=""></asp:Label><br />
                <asp:Label ID="Label3" runat="server" Text="Label">PHONE :</asp:Label>
                <asp:Label ID="lbl_phone" runat="server" Text=""></asp:Label><br />
                <asp:Label ID="Label4" runat="server" Text="Label">MAIL :</asp:Label>
                <asp:Label ID="lbl_mail" runat="server" Text=""></asp:Label><br />
                <asp:Label ID="Label5" runat="server" Text="Label">USER NAME :</asp:Label>
                <asp:Label ID="lbl_userName" runat="server" Text=""></asp:Label>
            </asp:Panel>
            
            <asp:Panel ID="pnlInterface2" runat="server" Visible="false">
                <h1>Buy Product</h1>
                <label>Select Product</label>
                <asp:DropDownList ID="DropDownList1"   runat="server"></asp:DropDownList><br />
                <label>select qountity</label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
                <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Total" /><br />
                <h1>Total :</h1> <asp:Label ID="lbl_total" runat="server" Text=""></asp:Label>
            </asp:Panel> 
            
            <asp:Panel ID="pnlInterface3" runat="server" Visible="false">
                <h1>Change password</h1>
                <asp:TextBox ID="txt_newPassword" runat="server" CssClass="textbox"></asp:TextBox>
                <asp:TextBox ID="txt_confirmPassword" runat="server" CssClass="textbox"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" CssClass="button" Text="Change" />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
