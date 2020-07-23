<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Elemento.aspx.cs" Inherits="Elemento" %>

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

        .auto-style8 {
            width: 97%;
            position: relative;
            left: 0px;
            top: 1px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--No mover estos espacios-->
    <br />
    <!--No mover estos espacios-->
    <!--Resto del codigo-->
    <div class="jumbotron">
        <div class="content">
            <div class="animated fadeIn">
                <div class="row">
                    <div class="auto-style7">
                        <div class="card">
                            <div class="card-header"><strong>REGISTRAR ElEMENTO</strong></div>
                            <br />
                            <br />
                            <div class="card-body card-block">
                                <div class="form-group">
                                    <label for="Codigo" class=" form-control-label">Codigo</label><input type="number" id="Codigo" placeholder="Codigo del elemento" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="Nombre" class=" form-control-label">Nombre</label><input type="text" id="Nombre" placeholder="Nombre del elemento" class="form-control">
                                </div>
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="textarea-input" class=" form-control-label">Descripcion</label>
                                    </div>
                                    <div class="text-center" style="width: 97%; position: relative; left: 9px; top: 0px">
                                        <textarea name="textarea-input" id="textarea-input" rows="9" placeholder="Descripcion..." class="form-control"></textarea>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="Estado" class=" form-control-label">Estado</label>
                                    </div>
                                    <div class="text-center">
                                        <select name="Estado" id="Estado" class="form-control-sm form-control" style="width: 97%; position: relative; left: 9px; top: 0px">
                                            <option value="0">Elija una opcion</option>
                                            <option value="1">Funcional</option>
                                            <option value="2">No Funcional</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <div class="text-center">
                                            <label for="selectSm" class="form-control-label">Area</label>
                                        </div>
                                        <div class="text-center">
                                            <asp:DropDownList ID="cmbArea" runat="server" CssClass="auto-style8">
                                            </asp:DropDownList>
                                        </div>
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

