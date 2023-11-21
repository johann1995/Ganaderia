<%@ Page Title="" Language="C#" MasterPageFile="~/View/Menu/Menu.Master" AutoEventWireup="true" CodeBehind="RegistrarBovinos.aspx.cs" Inherits="Ejemplo.View.Bovinos.RegistrarBovinos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <div class="content  col-lg-6 offset-md-3">
            <div class="card">
                <div style="background-color: #28a745" class="card-header ">
                    <strong>Bovino</strong>
                </div>

                <div class="card-body card-block">
                    <%--<div class="form-group" >
                        <label for="nf-email" class=" form-control-label">Categoria</label>
                        <input runat="server" type="text" id="cedula" name="nombres" class="form-control col-lg-12">
                    </div>--%>

                    <label for="so" class="form-control-label">Categoria</label>
                    <br />
                    <asp:DropDownList runat="server" ID="Drop_Categoria" AppendDataBoundItems="true" CssClass="form-control">
                        <asp:ListItem Value="" Text="- selecciona -"></asp:ListItem>
                        <asp:ListItem Value="vientre" Text="Ganado de vientre"></asp:ListItem>
                        <asp:ListItem Value="levante" Text="Ternera de levante"></asp:ListItem>
                        <asp:ListItem Value="terlevante" Text="Ternero de levante"></asp:ListItem>
                        <asp:ListItem Value="reprod" Text="Reproductores"></asp:ListItem>
                       <asp:ListItem Value="ceba" Text="Ganado de ceba"></asp:ListItem>
                        <asp:ListItem Value="leche" Text="Productoras de leche"></asp:ListItem>
                    </asp:DropDownList>



                    <div class="form-group">
                        <label for="nf-email" class=" form-control-label">Fecha Ingreso</label>
                        <input runat="server" type="date" id="fechai" name="nombres" class="form-control col-lg-12">
                    </div>

                    <div class="form-group">
                        <label for="nf-password" class=" form-control-label">Marca</label>
                        <input runat="server" type="text" id="marca" name="ubicaiones" class="form-control col-lg-12">
                    </div>
                    <div class="form-group">
                        <label for="nf-password" class=" form-control-label">Raza</label>
                        <input type="text" runat="server" id="raza" name="areas" class="form-control col-lg-12">
                    </div>
                    <div class="form-group">
                        <label for="nf-password" class=" form-control-label">Edad Ingreso</label>
                        <input type="text" runat="server" id="edad" name="areas" class="form-control col-lg-12">
                    </div>
                    <div class="form-group">
                        <label for="nf-password" class=" form-control-label">Peso Ingreso</label>
                        <input type="text" runat="server" id="peso" name="areas" class="form-control col-lg-12">
                    </div>

                    <label for="so" class="form-control-label">Finca</label>
                    <br />
                    <asp:DropDownList runat="server" ID="drl_finca" AppendDataBoundItems="false" CssClass="form-control">
                    </asp:DropDownList>
                </div>
                <%--<<%--div class="card-footer">
                                                        <button type="submit"  ="btn btn-primary btn-sm offset-md-5">
                                                            <i class="fa fa-dot-circle-o"></i> Registrar
                                                        </button>
                                                        
                                                    </div>--%>
                <div class="text-center">
                    <asp:Button ID="Button1" Style="color: #212529" CssClass="btn btn-secondary btn-lg btn-success" runat="server" Text="Registrar" OnClick="Button1_Click" />
                    <%--<button type="submit" class="btn btn-primary btn-round mt-4" runat="server" OnClick="Registro">Registrar </button>--%>
                </div>
                <br />

            </div>

        </div>
    </form>
</asp:Content>
