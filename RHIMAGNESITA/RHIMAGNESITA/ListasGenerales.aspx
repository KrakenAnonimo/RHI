<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ListasGenerales.aspx.cs" Inherits="ListasGenerales" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div style="position: relative; top: -5px; left: 22px;">
            <div class="btn-toolbar" role="toolbar">
                <button type="button" class="btn btn-default btn-lg" onclick="location.href='ListaU.aspx'">
                    <span class="glyphicon glyphicon-user"></span>Lista de Usuario
                </button>
                <div class="btn-toolbar" role="toolbar">
                    <button type="button" class="btn btn-default btn-lg" onclick="location.href='ListaA.aspx'">
                        <span class="glyphicon glyphicon-tree-deciduous"></span>Lista de Area
                    </button>
                    <div class="btn-toolbar" role="toolbar">
                        <button type="button" class="btn btn-default btn-lg" onclick="location.href='ListaM.aspx'">
                            <span class="glyphicon glyphicon-leaf"></span>Lista de Material
                        </button>
                        <div class="btn-toolbar" role="toolbar">
                            <button type="button" class="btn btn-default btn-lg" onclick="location.href='ListaE.aspx'">
                                <span class="glyphicon glyphicon-wrench"></span>Lista de Elemento
                            </button>
                            <div class="btn-toolbar" role="toolbar">
                                <button type="button" class="btn btn-default btn-lg" onclick="location.href='ListaP.aspx'">
                                    <span class="glyphicon glyphicon-list-alt"></span>Lista de Planificacion
                                </button>
                                <div class="btn-toolbar" role="toolbar">
                                    <button type="button" class="btn btn-default btn-lg" onclick="location.href='ListaOC.aspx'">
                                        <span class="glyphicon glyphicon-chevron-up"></span>Lista de OrdenMtto C
                                    </button>
                                    <div class="btn-toolbar" role="toolbar">
                                        <button type="button" class="btn btn-default btn-lg" onclick="location.href='ListaOP.aspx'">
                                            <span class="glyphicon glyphicon-chevron-down"></span>Lista de OrdenMtto P
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
        <div style="position: relative; top: 0px; left: 164px; margin-left: 40px">
            <div class="btn-toolbar" role="toolbar">
                <button type="button" class="btn btn-default btn-lg" onclick="location.href='ListaTM.aspx'">
                    <span class="glyphicon glyphicon-file"></span>Lista de Tarea Mtto
                </button>
                <div class="btn-toolbar" role="toolbar">
                    <button type="button" class="btn btn-default btn-lg" onclick="location.href='ListaTAVS.aspx'">
                        <span class="glyphicon glyphicon-th-list"></span>Lista de Tarea Averia S.
                    </button>
                    <div class="btn-toolbar" role="toolbar">
                        <button type="button" class="btn btn-default btn-lg" onclick="location.href='ListaRAVS.aspx'">
                            <span class="glyphicon glyphicon-stats"></span>Lista de Reporte Averia S.
                        </button>
                        <div class="btn-toolbar" role="toolbar">
                            <button type="button" class="btn btn-default btn-lg" onclick="location.href='ListaEM.aspx'">
                                <span class="glyphicon glyphicon-ok"></span>Lista de Ejecucion Mtto
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

