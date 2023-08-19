<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signUp.aspx.cs" Inherits="Shihab_project.signUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
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
        .form-group input[type="password"],
        .form-group input[type="email"],
        .form-group input[type="date"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        
        .error-text {
            color: #ff0000;
            font-size: 12px;
            display: none;
        }
        
        .btn-submit {
            display: inline-block;
            padding: 10px 20px;
            font-size: 14px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
    </style>
    <script>
        function calculateAge() {
            var dobElement = document.getElementById('<%= txt_Dob.ClientID %>');
            var ageElement = document.getEleme  ntById('<%= lbl_age.ClientID %>');

            var dobValue = new Date(dobElement.value);
            var today = new Date();

            var age = today.getFullYear() - dobValue.getFullYear();

            if (today.getMonth() < dobValue.getMonth() ||
                (today.getMonth() === dobValue.getMonth() && today.getDate() < dobValue.getDate())) {
                age--;
            }

            ageElement.textContent = 'Age: ' + age;
            console.log(age);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="form-group">
                <label for="txt_fullName">Full Name:</label>
                <asp:TextBox ID="txt_fullName" runat="server" CssClass="required"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_fullName" runat="server" ControlToValidate="txt_fullName"
                    ErrorMessage="Full Name is required" Display="Dynamic" CssClass="error-text" />
            </div>
            <div class="form-group">
                <label for="txt_Dob">Date of Birth:</label>
                <asp:TextBox TextMode="Date" oninput="calculateAge()" ID="txt_Dob" OnSelectionChanged="calendarDate_SelectionChanged" runat="server" CssClass="required"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_Dob" runat="server" ControlToValidate="txt_Dob"
                    InitialValue="" ErrorMessage="Date of Birth is required" Display="Dynamic" CssClass="error-text" />
            </div>
            <div>
          


            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>


                <asp:UpdatePanel runat="server">
                    <ContentTemplate>
                         <div class="form-group">
                <asp:label ID="lbl_age" runat="server" ></asp:label>
            </div>

                    </ContentTemplate>

                    <Triggers>

                        <asp:AsyncPostBackTrigger  ControlID="txt_Dob"/>
                    </Triggers>

                </asp:UpdatePanel>
           

           






            <div class="form-group">
                <label for="txt_Username">Username:</label>
                <asp:TextBox ID="txt_Username" runat="server" CssClass="required"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_Username" runat="server" ControlToValidate="txt_Username"
                    ErrorMessage="Username is required" Display="Dynamic" CssClass="error-text" />
            </div>
            <div class="form-group">
                <label for="txt_password">Password:</label>
                <asp:TextBox TextMode="Password" ID="txt_password" runat="server" CssClass="required"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_password" runat="server" ControlToValidate="txt_password"
                    ErrorMessage="Password is required" Display="Dynamic" CssClass="error-text" />
            </div>
            <div class="form-group">
                <label for="txt_confirmPass">Confirm Password:</label>
                <asp:TextBox ID="txt_confirmPass" runat="server" TextMode="Password" CssClass="required"></asp:TextBox>
                <asp:CompareValidator ID="cv_confirmPass" runat="server" ControlToValidate="txt_confirmPass"
                    ControlToCompare="txt_password" Operator="Equal" ErrorMessage="Passwords do not match" Display="Dynamic" CssClass="error-text" />
            </div>
            <div class="form-group">
                <label for="txt_phone">Phone:</label>
                <asp:TextBox ID="txt_phone" runat="server" CssClass="required"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_phone" runat="server" ControlToValidate="txt_phone"
                    ErrorMessage="Phone is required" Display="Dynamic" CssClass="error-text" />
            </div>
            <div class="form-group">
                <label for="txt_mail">Email:</label>
                <asp:TextBox TextMode="Email" ID="txt_mail" runat="server" CssClass="required"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_mail" runat="server" ControlToValidate="txt_mail"
                    ErrorMessage="Email is required" Display="Dynamic" CssClass="error-text" />
                <asp:RegularExpressionValidator ID="rev_mail" runat="server" ControlToValidate="txt_mail"
                    ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$" 
                    ErrorMessage="Invalid email format" Display="Dynamic" CssClass="error-text" />
            </div>
            <div class="form-group">
                <asp:Button ID="btn_submit" OnClick="btn_submit_Click" CssClass="btn-submit" runat="server" Text="Submit" />
            </div>
        </div>
    </form>
</body>
</html>
