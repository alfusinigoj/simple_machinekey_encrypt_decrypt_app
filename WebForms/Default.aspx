<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebForms._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <p>
            Encrypt/Decrypt a string using machinekey<br />
            <span style="color:red; font-size:smaller; font-style:italic">Note: Make sure the machine key section in this tool, is already updated by the desired one</span>
        </p>
       
        <p>
            Value:&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="txtValue" runat="server" Width="913px"></asp:TextBox>
        </p>
        <p>
            Purpose:&nbsp;
            <asp:TextBox ID="txtPurpose" runat="server" Width="453px"></asp:TextBox>
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnEncrypt" runat="server" Text="Encrypt" OnClick="btnEncrypt_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnDecrypt" runat="server" Text="Decrypt" OnClick="btnDecrypt_Click" />
        </p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtResult" runat="server" TextMode="MultiLine" ReadOnly="true" Height="257px" Width="910px"></asp:TextBox>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblErr" runat="server" ForeColor="Red"></asp:Label>
        </p>
    </div>
</asp:Content>
