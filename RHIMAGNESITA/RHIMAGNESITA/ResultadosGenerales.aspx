<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ResultadosGenerales.aspx.cs" Inherits="ResultadosGenerales" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div style="position: relative; top: -5px; left: 22px;">
            <div class="btn-toolbar" role="toolbar">
                <button type="button" class="btn btn-default btn-lg" onclick="location.href='ResultadoEP.aspx'">
                    <span class="glyphicon glyphicon-user"></span>Lista de Resultado Planificacion de Elemento
                </button>
                <div class="btn-toolbar" role="toolbar">
                    <button type="button" class="btn btn-default btn-lg" onclick="location.href='Resultado.aspx'">
                        <span class="glyphicon glyphicon-tree-deciduous"></span>Lista de Resultado Seguimiento
                    </button>
                    <div class="btn-toolbar" role="toolbar">
                        <button type="button" class="btn btn-default btn-lg" onclick="location.href='asdasd.aspx'">
                            <span class="glyphicon glyphicon-leaf"></span>Lista de Resultado xxxx
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

