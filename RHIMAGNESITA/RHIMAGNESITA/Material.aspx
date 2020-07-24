<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Material.aspx.cs" Inherits="Material" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style3 {
            margin-bottom: 15px;
            text-align: center;
        }

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
    <!--No mover estos espacios-->
    <br />
    <!--No mover estos espacios-->
    <!--Resto del codigo-->
    <div class="jumbotron">
        <div class="animated fadeIn">
            <div class="row">
                  <div class="auto-style7">
                    <div class="card">
                        <div class="card-header"><strong>REGISTRO DE MATERIAL</strong></div>
                        <br />
                        <br />
                        <div class="card-body card-block">
                            <div class="auto-style3">
                                <label for="CodigoM" class=" form-control-label">Codigo</label><input type="text" id="CodigoM" placeholder="Ingrese un codigo" class="form-control">
                            </div>
                            <div class="auto-style3">
                                <label for="NombreM" class=" form-control-label">Nombre</label><input type="text" id="NombreM" placeholder="Nombre del material" class="form-control">
                            </div>
                            <div class="row form-group">
                                <div class="text-center">
                                    <label for="textarea-input" class=" form-control-label">Descripcion</label>
                                </div>
                                <div class="text-center" style="width: 97%; position: relative; left: 9px; top: 0px">
                                    <textarea name="textarea-input" id="textarea-input" rows="9" placeholder="Descripcion..." class="form-control"></textarea>
                                </div>
                            </div>
                            <div class="auto-style3">
                                <label for="UnidadM" class=" form-control-label">Unidad de Medida</label><input type="text" id="UnidadM" placeholder="Ingrese la unidad" class="form-control">
                            </div>
                            <button type="button" class="btn btn-success btn-sm">Guardar</button>
                            <button type="button" class="btn btn-danger btn-sm">Limpiar Todo</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

