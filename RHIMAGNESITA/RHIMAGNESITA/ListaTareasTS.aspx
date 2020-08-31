<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="ListaTareasTS.aspx.cs" Inherits="ListaTareasTS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <div style="align-content: center; align-items: center; text-align: center;">
            <asp:Label ID="lblTP" runat="server" Text="Tareas de Planificacion"></asp:Label>
            <asp:Panel ID="Panel1" runat="server">
                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            </asp:Panel>
        </div>
    </div>
    <div>
        <div style="align-content: center; align-items: center; text-align: center;">
            <asp:Label ID="lblT" runat="server" Text="Tareas de Mantenimiento"></asp:Label>
            <asp:Panel ID="Panel2" runat="server">
                <asp:GridView ID="GridView2" runat="server"></asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
            </asp:Panel>
        </div>
    </div>
</asp:Content>

