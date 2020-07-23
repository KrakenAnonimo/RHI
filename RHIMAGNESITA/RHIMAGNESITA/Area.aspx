﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Area.aspx.cs" Inherits="Area" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style7 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 50%;
            text-align: center;
            padding-left: 15px;
            padding-right: 15px;
            left: 360px;
            top: -75px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--no mover estos espacios-->
    <br />
    <!--no mover estos espacios-->
    <!--resto del codigo-->
    <div class="jumbotron">
        <div class="content">
            <div class="animated fadeIn">
                <div class="row">
                    <div class="auto-style7">
                        <div class="card">
                            <div class="card-header"><strong>REGISTRAR AREA</strong></div>
                            <br />
                            <br />
                            <div class="card-body card-block">
                                <div class="form-group">
                                    <label for="NombreA" class=" form-control-label">Nombre del Area</label><input type="text" id="NombreA" placeholder="Nombre del Area" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="Ubicacion" class=" form-control-label">Ubicacion</label><input type="text" id="Ubicacion" placeholder="Ingrese la Ubicacion" class="form-control">
                                </div>


                                <button type="button" class="btn btn-success btn-sm">Guardar</button>
                                <button type="button" class="btn btn-danger btn-sm">Limpiar Todo</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

