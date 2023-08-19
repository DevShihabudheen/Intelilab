<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminHome.aspx.cs" Inherits="Shihab_project.adminHome" %>

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

        .grid-view {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid #ccc;
            margin-bottom: 20px;
        }

        .grid-view th, .grid-view td {
            padding: 10px;
            border: 1px solid #ccc;
            text-align: left;
        }

        .button {
            padding: 5px 10px;
            font-size: 14px;
            background-color: #dc3545;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        .button:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>User List</h2>
            <asp:GridView ID="GridView1" runat="server" CssClass="grid-view" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" />
                    <asp:BoundField DataField="name" HeaderText="Name" />
                    <asp:BoundField DataField="dob" HeaderText="Date of Birth" />
                    <asp:BoundField DataField="age" HeaderText="Age" />
                    <asp:BoundField DataField="username" HeaderText="Username" />
                    <asp:BoundField DataField="phone" HeaderText="Phone" />
                    <asp:BoundField DataField="mail" HeaderText="Email" />
                    <asp:ButtonField ButtonType="Button" Text="Delete" CommandName="DeleteUser" HeaderText="Delete" ItemStyle-CssClass="button" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
