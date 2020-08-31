<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage5.master" AutoEventWireup="true" CodeFile="BackUp.aspx.cs" Inherits="BackUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div style="align-content: center; align-items: center; text-align: center;">
            <asp:Label class=" form-control-label" runat="server" Text="Descarga backup!"></asp:Label>
            <br />
            <asp:Button runat="server" Text="Descargar" ID="btnBackup" OnClick="Unnamed3_Click" />
            <asp:label runat="server" id="Label3"></asp:label>
        </div>
    </div>
</asp:Content>

