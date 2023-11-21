<%@ Page Title="" Language="C#" MasterPageFile="~/View/Menu/Menu.Master" AutoEventWireup="true" CodeBehind="RegistrarFinca.aspx.cs" Inherits="Ejemplo.View.Finca.uno" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
        function Open(opc) {
            switch (opc) {
                case "1":
                    var div = document.getElementById("DivModal");
                    div.style.display = 'block';
                    break;
                case "2":
                    var div = document.getElementById("DivModal2");
                    div.style.display = 'block';
                    break;

                case "3":
                    var div = document.getElementById("DivModal3");
                    div.style.display = 'block';
                    break;
                //case "4":
                //    var div = document.getElementById("MessageSuccess");
                //    div.style.display = 'block';
                //    break;
                //case "5":
                //    var div = document.getElementById("MessageWarning");
                //    div.style.display = 'block';

                //    break;
                //case "6":
                //    var div = document.getElementById("MessageWarning1");
                //    div.style.display = 'block';
                //    break;
                //case "7":

                //    var div = document.getElementById("MessageWarning3");
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
                case "2":
                    var div = document.getElementById("DivModal2");
                    div.style.display = 'none';
                    break;

                case "3":
                    var div = document.getElementById("DivModal3");
                    div.style.display = 'none';
                    break;

                //case "4":
                //    var div = document.getElementById("MessageSuccess");
                //    div.style.display = 'none';

                //    break;
                //case "5":
                //    var div = document.getElementById("MessageWarning");
                //    div.style.display = 'none';

                //    break;
                //case "6":
                //    var div = document.getElementById("MessageWarning1");
                //    div.style.display = 'none';

                //    break;
            }
        }



    </script>
    <form runat="server">
        <div>
            <asp:Button ID="Button2" CssClass="btn btn-success btn-lg btn-block" Style="margin-bottom: 4px" runat="server" Text="Registrar Finca" OnClick="Button2_Click" />
       
             </div>
        <br />
        <div class="col-md-12">
            <asp:Repeater ID="repTarjetas" runat="server">
                <ItemTemplate>
                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-header text-center" style="background:#f23333">
                                <strong class="card-title mb-3">FINCA</strong>
                            </div>
                            <div class="card-body">
                                <div class="mx-auto d-block">
                                    <img class="rounded-circle mx-auto d-block" src="../../Imagenes/finca.jpg" alt="Card image cap">
                                    <h5 class="text-sm-center mt-2 mb-1"><%# Eval("Nombre") %></h5>
                                    <div class="location text-sm-center"><i class="fa fa-map-marker"> <%# Eval("Ubicacion") %></i></div>
                                </div>
                                <hr>
                                <div class="card-text text-sm-center">
                                    <%--<a onclick=""><i class="fa fa-save pr-1"></i></a>
                                    <a href="#"><i class="fa fa-twitter pr-1"></i></a>
                                    <a href="#"><i class="fa fa-linkedin pr-1"></i></a>
                                    <a href="#"><i class="fa fa-pinterest pr-1"></i></a>--%>



                                    <li>
                                            <asp:LinkButton ID="LinkButton1"
                                                runat="server"
                                                data-popup="tooltip"
                                                title="Modificar Finca"
                                                CssClass="fa fa-save pr-1"
                                                CommandArgument='<%#Eval("idFinca")+","+Eval("Nombre")+","+Eval("Ubicacion")+","+Eval("areaa")%>'
                                                OnCommand="LinkButton1_Command"> Modificar
                                            </asp:LinkButton>




                                         <asp:LinkButton ID="LinkButton2"
                                                runat="server"
                                                data-popup="tooltip"
                                                title="Eliminar Finca"
                                                CssClass="fa fa-save pr-1"
                                                CommandArgument='<%#Eval("idFinca")+","+Eval("Nombre")%>'
                                                OnCommand="LinkButton2_Command"> Eliminar
                                            </asp:LinkButton>

                                        </li>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div id="DivModal" style="display: none">
            <div class="modal fade show" id="mediumM" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" style="display: block; padding-left: 0px;">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header" style="background: #28a745">
                            <h5 class="modal-title col-11 text-center" id="mediumModalL">DATOS DE LA FINCA</h5>
                            <button type="button" class="close" data-dismiss="modal" onclick="Close('1')" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body">


                      
                            <div class="row form-group">
                                <div class="col col-md-2">
                                    <label for="text-input" class=" form-control-label">Id Finca:</label>
                                </div>
                                <div class="col-11 col-md-9">
                                    <input runat="server" type="text" id="idfinca" name="nombres" class="form-control">                            
                                </div>
                                </div>
                            <br>

                              <div class="row form-group">
                                <div class="col col-md-2">
                                    <label for="text-input" class=" form-control-label">Nombre:</label>
                                </div>
                                <div class="col-11 col-md-9">
                                    <input runat="server" type="text" id="nombre" name="nombres" class="form-control">                            
                                </div>
                                </div>
                            <br>
                              <div class="row form-group">
                                <div class="col col-md-2">
                                    <label for="text-input" class=" form-control-label">Ubicación:</label>
                                </div>
                                <div class="col-11 col-md-9">
                                    <input runat="server" type="text" id="ubicacion" name="nombres" class="form-control">                            
                                </div>
                                </div>
                            <br>
                              <div class="row form-group">
                                <div class="col col-md-2">
                                    <label for="text-input" class=" form-control-label">Area:</label>
                                </div>
                                <div class="col-11 col-md-9">
                                    <input runat="server" type="text" id="area" name="nombres" class="form-control">                            
                                </div>
                                </div>
                            <br>

                            <div class="modal-footer">


                              
                                <div class="col-11 col-md-8" >

                             <asp:LinkButton ID="boton1"  CssClass="btn btn-primary btn-success  mt-4" runat="server"  OnClick="Button1_Click"><i class="fa fa-edit"></i>&nbsp;Registrar</asp:LinkButton>                                                      
                              <asp:LinkButton ID="LinkButton3"  CssClass="btn btn-secondary btn-round mt-4" runat="server" ><i class="fa fa-arrows-alt"></i>&nbsp;Cerrar</asp:LinkButton>
               
                           
                           
                           </div>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="modal-backdrop fade show"></div>
        </div>




        <div id="DivModal2" style="display: none">
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
                                    <label for="text-input" class=" form-control-label">Id Finca:</label>
                                </div>
                                <div class="col-11 col-md-9">
                                    <asp:TextBox ID="IdF" ReadOnly="true" runat="server" CssClass="form-control">
                                    </asp:TextBox>
                                </div>
                                </div>
                            <br>

                          

                                <div class="row form-group">
                                <div class="col col-md-2">
                                    <label for="text-input" class=" form-control-label">Nombre:</label>
                                </div>
                                <div class="col-11 col-md-9">
                                    <asp:TextBox ID="TB_Nombre" ReadOnly="false" runat="server" CssClass="form-control">
                                    </asp:TextBox>
                                </div>
                        </div>

                            <br>
                            

                                    <div class="row form-group">
                                <div class="col col-md-2">
                                    <label for="text-input" class=" form-control-label">Ubicacion:</label>
                                </div>
                                <div class="col-11 col-md-9">
                                    <asp:TextBox ID="TUbicacion" ReadOnly="false" runat="server" CssClass="form-control">
                                    </asp:TextBox>
                                </div>
                          </div>
                            <br>
          


                                    <div class="row form-group">
                                <div class="col col-md-2">
                                    <label for="text-input" class=" form-control-label">Area:</label>
                                </div>
                                <div class="col-11 col-md-9">
                                    <asp:TextBox ID="TArea" ReadOnly="false" runat="server" CssClass="form-control">
                                    </asp:TextBox>
                                </div>
                                  </div>
                            <br>

                          

                             <div class="modal-footer"" >
                            
                           <div class="col-11 col-md-8" >
                             <asp:LinkButton ID="boton4"  CssClass="btn btn-primary btn-success  mt-4" runat="server"  OnClick="Button4_Click"><i class="fa fa-edit"></i>&nbsp;Modificar</asp:LinkButton>                                                      
                              <asp:LinkButton ID="Boton5"  CssClass="btn btn-secondary btn-round mt-4" runat="server" ><i class="fa fa-arrows-alt"></i>&nbsp;Cerrar</asp:LinkButton>
               
                           
                           
                           </div>
                                </div>
                        </div>
                       
                    </div>
                </div>
            </div>
            <div class="modal-backdrop fade show"></div>
        </div>


         <div id="DivModal3" style="display: none">
            <div class="modal fade show" id="mediumM3" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" style="display: block; padding-left: 0px;">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header" style="background:#28a745">
                            <h5 class="modal-title col-11 text-center" id="mediumModalL3">DATOS DE LA FINCA</h5>
                            <button type="button" class="close" data-dismiss="modal" onclick="Close('3')" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body">
                           


                            <div class="row form-group">
                                <div class="col col-md-2">
                                    <label for="text-input" class=" form-control-label">Id Finca:</label>
                                </div>
                                <div class="col-11 col-md-9">
                                    <asp:TextBox ID="idfii" ReadOnly="true" runat="server" CssClass="form-control">
                                    </asp:TextBox>
                                </div>
                                </div>
                            <br>

                            

                                <div class="row form-group">
                                <div class="col col-md-2">
                                    <label for="text-input" class=" form-control-label">Nombre:</label>
                                </div>
                                <div class="col-11 col-md-9">
                                    <asp:TextBox ID="nom" ReadOnly="false" runat="server" CssClass="form-control">
                                    </asp:TextBox>
                                </div>
                        </div>

                            <br>
                           

                           <br>

                             <div class="modal-footer"" >
                            
                           <div class="col-11 col-md-8" >
                             <asp:LinkButton ID="LinkButton4"  CssClass="btn btn-primary btn-success  mt-4" runat="server"  OnClick="Button5_Click"><i class="fa fa-edit"></i>&nbsp;Eliminar</asp:LinkButton>                                                      
                              <asp:LinkButton ID="LinkButton5"  CssClass="btn btn-secondary btn-round mt-4" runat="server" ><i class="fa fa-arrows-alt"></i>&nbsp;Cerrar</asp:LinkButton>
               
                           
                           
                           </div>
                                </div>
                        </div>
                       
                    </div>
                </div>
            </div>
            <div class="modal-backdrop fade show"></div>
        </div>



         <!-- ==================================================== Alertas de Confirmacion ============================================-->
        <%--<div id="MessageSuccess" style="display: none;">
            <div class="sweet-overlay" style="display: block; opacity: 1.05;"></div>
            <div class="sweet-alert showSweetAlert visible" style="display: block;" data-has-cancel-button="false" data-allow-ouside-click="false" data-has-done-function="false" data-timer="">
                <div class="icon success animate">
                    <span class="line tip animateSuccessTip"></span><span class="line long animateSuccessLong"></span>
                    <div class="placeholder"></div>
                    <div class="fix"></div>
                </div>
                <h2>¡Registro exitoso!</h2>
                <button class="confirm" type="button" onclick="Close('4')" style="box-shadow: 0px 0px 2px rgba(102,187,106,0.8), inset 0px 0px 0px 1px rgba(0,0,0,0.05); background-color: rgb(102, 187, 106);">Aceptar</button>
            </div>
        </div>

        <div style="display: none;" id="MessageWarning">
            <div id="Opack2" class="sweet-overlay" style="display: block; opacity: 1.03;"></div>
            <div id="modal2" class="sweet-alert showSweetAlert visible" style="display: block;" data-has-cancel-button="false" data-allow-ouside-click="false" data-has-done-function="false" data-timer="">
                <div class="icon warning pulseWarning" style="display: block;"><span class="body pulseWarningIns"></span><span class="dot pulseWarningIns"></span></div>
                <h2 id="h2Mensaje" runat="server">¡Algo salio mal!</h2>
                <button class="confirm" onclick="Close('5')" style="box-shadow: 0px 0px 2px rgba(239,83,80,0.8), inset 0px 0px 0px 1px rgba(0,0,0,0.05); background-color: rgb(239, 83, 80);">Aceptar</button>
            </div>
        </div>


        <div style="display: none;" id="MessageWarning1">
            <div id="Opack3" class="sweet-overlay" style="display: block; opacity: 1.03;"></div>
            <div id="modal3" class="sweet-alert showSweetAlert visible" style="display: block;" data-has-cancel-button="false" data-allow-ouside-click="false" data-has-done-function="false" data-timer="">
                <div class="icon warning pulseWarning" style="display: block;"><span class="body pulseWarningIns"></span><span class="dot pulseWarningIns"></span></div>
                <h2 id="h1" runat="server">¡Campos Vacios!</h2>
                <button class="confirm" onclick="Close('6')" style="box-shadow: 0px 0px 2px rgba(239,83,80,0.8), inset 0px 0px 0px 1px rgba(0,0,0,0.05); background-color: rgb(239, 83, 80);">Aceptar</button>
            </div>
        </div>--%>
       <%-- <div style="display: none;" id="MessageWarning3">
            <div id="Opack4" class="sweet-overlay" style="display: block; opacity: 1.03;"></div>
            <div id="modal4" class="sweet-alert showSweetAlert visible" style="display: block;" data-has-cancel-button="false" data-allow-ouside-click="false" data-has-done-function="false" data-timer="">
                <div class="icon warning pulseWarning" style="display: block;"><span class="body pulseWarningIns"></span><span class="dot pulseWarningIns"></span></div>
                <h2 id="h2" runat="server">¡No hay archivo!</h2>
                <button class="confirm" onclick="Close(6)" style="box-shadow: 0px 0px 2px rgba(239,83,80,0.8), inset 0px 0px 0px 1px rgba(0,0,0,0.05); background-color: rgb(239, 83, 80);">Aceptar</button>
            </div>
            </div>--%>
            <!-- /==================================================== Alertas de Confirmacion ============================================-->







    
    </form>
      
</asp:Content>


                             