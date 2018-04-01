<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>C# Form Processing</title>
</head>
<body>
    <form onsubmit="return validation();" runat="server">
        <div style="float: left">
            Basic Information: <br />
            <asp:Label ID="lblFirstName" runat="server" Text="First Name: "></asp:Label><asp:TextBox ID="txtFirstName" runat="server" ClientIDMode="Static"></asp:TextBox> 
            <br /><br />
            <asp:Label ID="lblAge" runat="server" Text="Age: "></asp:Label><asp:TextBox ID="txtAge" runat="server" ClientIDMode="Static"></asp:TextBox>
            <br /><br />
            <asp:Label ID="lblEmail" runat="server" Text="Email: "></asp:Label><asp:TextBox ID="txtEmail" runat="server" ClientIDMode="Static"></asp:TextBox>
            <br /><br />
            <asp:Label ID="lblPhone" runat="server" Text="Phone: "></asp:Label><asp:TextBox ID="txtPhone" runat="server" ClientIDMode="Static"></asp:TextBox>
            <br /><br />

            Hobbies: <br />
            <asp:CheckBox ID="chkMusic" text="Music" runat="server" /><br />
            <asp:CheckBox ID="chkSports" text="Sports" runat="server" /><br />
            <asp:CheckBox ID="chkReading" text="Reading" runat="server" /><br />
            <asp:CheckBox ID="chkVolunteering" text="Volunteering" runat="server" /><br /><br />

            Music Preference: <br />
            <asp:RadioButton ID="rbRock" text="Rock" runat="server" GroupName="PreferredGenre" /><br />
            <asp:RadioButton ID="rbPop" text="Pop" runat="server" GroupName="PreferredGenre" /><br />
            <asp:RadioButton ID="rbClassical" text="Classical" runat="server" GroupName="PreferredGenre" /><br />
            <asp:RadioButton ID="rbJazz" text="Jazz" runat="server" GroupName="PreferredGenre" /><br />
            <asp:RadioButton ID="rbOther" text="Other" runat="server" Checked="True" GroupName="PreferredGenre" /><br /><br />

            Favorite Color: &nbsp
            <asp:DropDownList ID="ddlColor" runat="server">
                <asp:ListItem>Red</asp:ListItem>
                <asp:ListItem>Orange</asp:ListItem>
                <asp:ListItem>Green</asp:ListItem>
                <asp:ListItem>Blue</asp:ListItem>
                <asp:ListItem>Purple</asp:ListItem>
                <asp:ListItem>Pink</asp:ListItem>
                <asp:ListItem>White</asp:ListItem>
                <asp:ListItem>Black</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList><br /><br />
            <input id="btnSubmit" type="submit" value="Submit"/> &nbsp <input id="btnReset" type="button" value="Reset" />
        </div>
    </form>
    <span id="information" style="float: right">
    <asp:Label ID="lblInfo" runat="server" Text=""></asp:Label>
    </span>
    <script src="validation.js" type="text/javascript"></script>
</body>
</html>
