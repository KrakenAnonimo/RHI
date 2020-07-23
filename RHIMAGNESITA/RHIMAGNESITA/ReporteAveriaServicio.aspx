<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ReporteAveriaServicio.aspx.cs" Inherits="ReporteAveriaServicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type ="text/css" {}>
        .auto-style7{
            position:relative;
            min-height:1px;
            float:left;
            width:50%;
            text-align:center;
            padding-left:15px;
            padding-right:15px;
            left:360px;
            top:-75px;
        }
    .auto-style8 {
        margin-bottom: 15px;
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--No mover estos espacios-->
    <br />
    <br />
    <br />
    <br />
    <!--No mover estos espacios-->
    <!--Resto del Codigo-->
    <div class="content">
        <div class="animated fadeIn">
            <div class="row">
                <div class="auto-style7">
                    <div class="card">
                        <div class="card-header"><strong>REGISTRAR REPORTE AVERIA SERVICIO</strong></div>
                        <br />
                        <br />
                        <div class="card-body card-block">
                            <div class="form-group">
                                <label for="NumReporte" class=" form-control-label">Numero Reporte</label><input type="text" id="NumReporte" placeholder="Numero del Reporte" class="form-control">
                            </div>
                            <div class="auto-style8">
                                <label for="Titulo" class=" form-control-label">Titulo</label><input type="text" id="Titulo" placeholder="Titulo" class="form-control">
                            </div>
                            <div class="row form-group">
                                <div class="text-center">
                                    <label for="textarea-input" class=" form-control-label">Descripcion</label>
                                </div>
                                <div class="text-center">
                                    <textarea name="textarea-input" id="textarea-input" rows="9" placeholder="Descripcion..." class="form-control"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="FechaReporte" class=" form-control-label">Fecha Reporte</label><input type="time" id="FechaReporte" placeholder="Fecha del Reporte" class="form-control">
                            </div>
                            <!-- Campo para el combo box-->
                            <button type="button" class="btn btn-success btn-sm">Guardar</button>
                            <button type="button" class="btn btn-danger btn-sm">Borrar Todo</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

