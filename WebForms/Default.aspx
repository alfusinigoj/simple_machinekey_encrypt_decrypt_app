<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebForms._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h2>Encryption</h2>
            <p>
                Encrypt/Decrypt a string
            </p>
            <p>
                Value:&nbsp; <asp:TextBox ID="txtValue" runat="server" Width="500px"></asp:TextBox>
                Purpose:&nbsp; <asp:TextBox ID="txtPurpose" runat="server" Width="500px"></asp:TextBox>
            </p>
        <p>
                <asp:Button ID="btnEncrypt" runat="server" Text="Encrypt" OnClick="btnEncrypt_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnDecrypt" runat="server" Text="Decrypt" OnClick="btnDecrypt_Click" />
            </p>
            <p>
                <asp:Label ID="lblResult" runat="server"></asp:Label>
                </p>
    </div>
</asp:Content>
