<%@ Page Title="" Language="C#" MasterPageFile="~/View/Menu/Menu.Master" AutoEventWireup="true" CodeBehind="RegistrarTratamiento.aspx.cs" Inherits="Ejemplo.View.Tratamiento.RegistrarTratamiento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
     
        function Open(opc) {
            switch (opc) {
                case "1":
                    var div = document.getElementById("DivModal");
                    div.style.display = 'block';
                    break;
                //case "2":
                //    var div = document.getElementById("DivModal2");
                //    div.style.display = 'block';
                //    break;
            }
        }
        function Close(opc) {
            switch (opc) {
                case "1":
                    var div = document.getElementById("DivModal");
                    div.style.display = 'none';
                    break;
                //case "2":
                //    var div = document.getElementById("DivModal2");
                //    div.style.display = 'none';
                //    break;

            }
        }
    </script>






   
    <form runat="server">
        <div class="card">
            <div class="card-header" style="background: #28a745">
                <strong class="card-title">Informacion Bovino</strong>
            </div>
            <div class="card-body">
                <div id="bootstrap-data-table-export_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">

                    <div class="card-body card-block">

                        <label for="so" class="form-control-label">Bovino</label>

                        <br />

                        <asp:DropDownList runat="server" ID="lista_f" CssClass="form-control col-md-4" AppendDataBoundItems="true" AutoPostBack="true" OnSelectedIndexChanged="lista_SelectedIndexChanged">
                            <asp:ListItem Value="" Text="Seleccione una finca"></asp:ListItem>
                        </asp:DropDownList>

                    </div>
                    <br />

                    <div class="row">
                        <div class="col-sm-12">
                            <table id="bootstrap-data-table-export" class="table table-striped table-bordered dataTable no-footer" role="grid" aria-describedby="bootstrap-data-table-export_info">
                                <thead>
                                    <tr role="row">
                                        <th class="sorting_asc" tabindex="0" aria-controls="bootstrap-data-table-export" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 100px;">id bovino</th>
                                        <th class="sorting_asc" tabindex="0" aria-controls="bootstrap-data-table-export" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 100px;">Categoria</th>
                                        <th class="sorting_asc" tabindex="0" aria-controls="bootstrap-data-table-export" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 100px;">Fecha Ingreso</th>
                                        <th class="sorting" tabindex="0" aria-controls="bootstrap-data-table-export" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 100px;">Marca</th>
                                        <th class="sorting" tabindex="0" aria-controls="bootstrap-data-table-export" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 100px;">Raza</th>
                                        <th class="sorting" tabindex="0" aria-controls="bootstrap-data-table-export" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 100px;">Edad Ingreso</th>
                                        <th class="sorting" tabindex="0" aria-controls="bootstrap-data-table-export" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 100px;">Peso Ingreso</th>
                                        <th class="sorting" tabindex="0" aria-controls="bootstrap-data-table-export" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 100px;">Peso venta</th>
                                        <th class="sorting" tabindex="0" aria-controls="bootstrap-data-table-export" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 100px;">Fecha Venta</th>
                                        <th class="sorting" tabindex="0" aria-controls="bootstrap-data-table-export" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 100px;">Accion</th>
                                       
                                </thead>
                                <tbody>
                                    <asp:ListView runat="server" ID="list_bovino">
                                        <ItemTemplate>
                                            <tr>
                                                <td><%#Eval("idbovino")%></td>
                                                <td><%#Eval("categoria")%></td>
                                                <td><%#Eval("fecha_ingreso")%> </td>
                                                <td><%#Eval("marca")%></td>
                                                <td><%#Eval("raza")%></td>
                                                <td><%#Eval("edad_ingreso")%></td>
                                                <td><%#Eval("peso_ingreso")%></td>
                                                <td><%#Eval("peso_venta")%></td>
                                                <td><%#Eval("fecha_venta")%></td>

                                                <td style="width: 300px">

                                                    <asp:LinkButton Style="color: black" CommandArgument='<%#Eval("idbovino")%>' OnCommand="Registrar" runat="server" CommandName="traer"><i class="fa fa-pencil"></i>
                                                    Registrar Tratamiento</asp:LinkButton>
                                                </td>
                                                


                                            </tr>

                                        </ItemTemplate>
                                    </asp:ListView>
                                </tbody>
                            </table>
                          
                        </div>


                    </div>
                   
                </div>
            </div>



        </div>

        <div id="DivModal" style="display: none">
            <div class="modal fade show" id="mediumM" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" style="display: block; overflow-y:scroll; padding-left: 0px;">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header" style="background: #28a745">
                            <h5 class="modal-title" id="mediumModalL">Datos Bovino</h5>
                            <button type="button" class="close" data-dismiss="modal" onclick="Close('1')" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body">




                            <div class="row form-group">
                             <div class="col col-md-2">
                            <label for="so" class="form-control-label">Categoria</label>
                            </div>
                             <div class="col-11 col-md-9">
                            <asp:DropDownList runat="server" ID="Drop_tratamiento" AppendDataBoundItems="true" CssClass="form-control">
                                <asp:ListItem Value="" Text="- selecciona -"></asp:ListItem>
                                <asp:ListItem Value="vacuna" Text="Vacunas"></asp:ListItem>
                                <asp:ListItem Value="des" Text="Desparacitacion"></asp:ListItem>
                                <asp:ListItem Value="fum" Text="Fumigacion"></asp:ListItem>
                                <asp:ListItem Value="cap" Text="Capada"></asp:ListItem>
                                <asp:ListItem Value="desc" Text="Descornacion"></asp:ListItem>
                                <asp:ListItem Value="medic" Text="Medicamentos"></asp:ListItem>
                            </asp:DropDownList>
                            </div>
                            </div>
                            <br>


                            <div class="row form-group">
                                <div class="col col-md-2">
                                <label for="nf-email" class=" form-control-label">Fecha </label>
                                    </div>
                                <div class="col-11 col-md-9">
                                <input runat="server" type="date" id="fechat" name="nombres" class="form-control">
                            </div>
                          </div>
                            
                            <br>



                            <div class="row form-group">
                                <div class="col col-md-2">
                                <label for="nf-password" class=" form-control-label">Bovino</label>
                                 </div>
                                <div class="col-11 col-md-9">
                                <input runat="server" type="text" id="bovinofk" name="ubicaiones" class="form-control">
                            </div>
                              </div>
                            
                            <br>


                            <div class="modal-footer">


                              
                                <div class="col-11 col-md-8" >

                              <asp:Button ID="Button1" CssClass="btn btn-primary btn-success mt-4" runat="server" Text="Registrar" OnClick="Button1_Click" />

                            <asp:Button ID="Button3" CssClass="btn btn-secondary btn-round mt-4" runat="server" Text="Cerrar" />
               
                           
                           
                           </div>

                            </div>




                           
                        </div>
                    </div>
                        

                </div>
            </div>

            <div class="modal-backdrop fade show"></div>
        </div>

       <%--  <div id="DivModal2" style="display: none">
            <div class="modal fade show" id="mediumM2" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" style="display: block; padding-left: 0px;">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header" style="background:#28a745">
                            <h5 class="modal-title col-11 text-center" id="mediumModalL2">DATOS DE LA FINCA</h5>
                            <button type="button" class="close" data-dismiss="modal" onclick="Close('2')" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body">
                           

        
                                 <div class="row form-group">
                            <div class="col col-md-2">
                                <label for="nf-password" class=" form-control-label">id bovino</label>
                                </div>
                                <div class="col-11 col-md-9">
                                <input runat="server" type="text" id="bovinoid" name="ubicaiones" class="form-control">
                            </div>
                            </div>
                            <br>

                            <div class="row form-group">
                             <div class="col col-md-2">
                            <label for="so" class="form-control-label">Categoria</label>
                            </div>
                             <div class="col-11 col-md-9">
                            <asp:DropDownList runat="server" ID="DropDownList2" AppendDataBoundItems="true" CssClass="form-control">
                                <asp:ListItem Value="" Text="- selecciona -"></asp:ListItem>
                                <asp:ListItem Value="vientre" Text="Ganado de vientre"></asp:ListItem>
                                <asp:ListItem Value="levante" Text="Ternera de levante"></asp:ListItem>
                                <asp:ListItem Value="terlevante" Text="Ternero de levante"></asp:ListItem>
                                <asp:ListItem Value="reprod" Text="Reproductores"></asp:ListItem>
                                <asp:ListItem Value="ceba" Text="Ganado de ceba"></asp:ListItem>
                                <asp:ListItem Value="leche" Text="Productoras de leche"></asp:ListItem>
                            </asp:DropDownList>
                            </div>
                            </div>
                            <br>
                              <div class="row form-group">
                                <div class="col col-md-2">
                                <label for="nf-password" class=" form-control-label">Marca</label>
                                 </div>
                                <div class="col-11 col-md-9">
                                <input runat="server" type="text" id="marcab" name="ubicaiones" class="form-control">
                            </div>
                              </div>
                            
                            <br>



                           

                            
                               
                          


                             <div class="modal-footer"" >
                            
                           <div class="col-11 col-md-8" >
                             <asp:LinkButton ID="boton4"  CssClass="btn btn-primary btn-success  mt-4" runat="server"  OnClick="boton4_Click"><i class="fa fa-edit"></i>&nbsp;Eliminar</asp:LinkButton>                                                      
                              <asp:LinkButton ID="Boton5"  CssClass="btn btn-secondary btn-round mt-4" runat="server" ><i class="fa fa-arrows-alt"></i>&nbsp;Cerrar</asp:LinkButton>
               
                           
                           
                           </div>
                                </div>
                        </div>
                       
                    </div>
                </div>
            </div>
            <div class="modal-backdrop fade show"></div>
        </div>--%>


    </form>
</asp:Content>
