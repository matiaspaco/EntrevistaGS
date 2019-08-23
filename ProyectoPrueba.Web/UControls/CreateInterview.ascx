<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CreateInterview.ascx.cs" Inherits="ProyectoPrueba.Web.UControls.CreateInterview" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>

<div class="panel-body">
    <div class="form-row">  
        <div class="form-group col-md-3">
            
                

                <div class="<%=styleClassFechaEntrevista%>">
                    <asp:Label ID="lblFechaEntrevista" runat="server" Text="Fecha de entrevista" CssClass="control-label"></asp:Label>
                    <div class='input-group date' id='date'>
                        <asp:TextBox ID="txtFechaAlta" MaxLength="100" runat="server" class="form-control" placeholder="dd/mm/yyyy" AutoPostBack="false"></asp:TextBox>
                        <ajax:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" Enabled="True" TargetControlID="txtFechaAlta" FilterType=" Numbers, Custom" FilterMode="ValidChars" ValidChars="/"></ajax:FilteredTextBoxExtender>
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar">
                            </span>
                        </span>
                    </div>
                </div>


            

        </div>



    </div>

    <div class="form-row">
        <div class="form-group col-md-6">
            <div class="<%=styleClassNombre%>">
                <asp:Label ID="lblNombre" runat="server" Text="Nombre" class="control-label"></asp:Label>
                <asp:TextBox ID="txtNombre" runat="server" MaxLength="50" class="form-control" placeholder="Ingrese el nombre..." ReadOnly="false"></asp:TextBox>
                <ajax:FilteredTextBoxExtender ID="txtNombrefilter" runat="server" Enabled="True" TargetControlID="txtNombre" FilterType="lowercaseLetters, uppercaseLetters" FilterMode="ValidChars" ValidChars=" .ñ"></ajax:FilteredTextBoxExtender>

            </div>
        </div>
        <div class="form-group col-md-6">
            <div class="<%=styleClassApellido%>">
                <asp:Label ID="lblApellido" runat="server" Text="Apellido" class="control-label"></asp:Label>
                <asp:TextBox ID="txtApellido" runat="server" MaxLength="50" class="form-control" placeholder="Ingrese el Apellido..." ReadOnly="false"></asp:TextBox>
                <ajax:FilteredTextBoxExtender ID="txtApellidoFilter" runat="server" Enabled="True" TargetControlID="txtApellido" FilterType="lowercaseLetters, uppercaseLetters, custom" FilterMode="ValidChars" ValidChars=" .ñ"></ajax:FilteredTextBoxExtender>

            </div>
        </div>
    </div>

    <div class="form-row">
        <div class="form-group col-md-6">
            <div class="<%=styleClassDNI%>">
                <asp:Label ID="lblDNI" runat="server" Text="DNI" class="control-label"></asp:Label>
                <asp:TextBox ID="txtDNI" runat="server" MaxLength="8" class="form-control" placeholder="DNI" ReadOnly="false"></asp:TextBox>
                <ajax:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" Enabled="True" TargetControlID="txtDNI" FilterType=" Numbers,custom" FilterMode="ValidChars" ValidChars=""></ajax:FilteredTextBoxExtender>

            </div>
        </div>

        <div class="form-group col-md-6">
            <div class="<%=styleClassTelefono%>">
                <asp:Label ID="lblTelefono" runat="server" Text="Telefono" class="control-label"></asp:Label>
                <asp:TextBox ID="txtTelefono" runat="server" MaxLength="8" class="form-control" placeholder="Telefono" ReadOnly="false"></asp:TextBox>
                <ajax:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" Enabled="True" TargetControlID="txtTelefono" FilterType=" Numbers,custom" FilterMode="ValidChars" ValidChars=""></ajax:FilteredTextBoxExtender>

            </div>
        </div>


    </div>

    <div class="form-row">

        <div class="form-group col-md-6">
                <div class="<%=styleClasschkAsistencia%>">
                <asp:Label ID="lblAsiste" runat="server" Text="Asiste:" class="control-label"></asp:Label>
                <asp:CheckBox ID="chkAsistencia" runat="server"  />          
            </div>
        </div>
            


        <div class="form-group col-md-6">
            <div class="<%=styleClassValoracion%>">
                <asp:Label ID="lblaValoracion" runat="server" Text="Valoracion" class="control-label"></asp:Label>
                <asp:TextBox ID="txtValoracion" runat="server" MaxLength="3" class="form-control" placeholder="Puntaje" ReadOnly="false"></asp:TextBox>
                <ajax:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" Enabled="True" TargetControlID="txtValoracion" FilterType=" Numbers,custom" FilterMode="ValidChars" ValidChars=""></ajax:FilteredTextBoxExtender>

            </div>
        </div>



    </div>

    <div class="row"> 
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-body">
                <asp:Label ID="lblEntrevistas" runat="server" Text="Entrevistas:"></asp:Label>
                <%--<asp:DropDownList runat="server" class="form-control" ID="ddlConsorcio" OnSelectedIndexChanged="ddlConsorcio_SelectedIndexChanged" AutoPostBack="true" />--%>
            </div>
        </div>
    </div>
    </div>


    <div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">

            <div class="panel-body">

                <asp:Repeater ID="Repeater1" OnItemDataBound="RPMenu_ItemDataBound" runat="server">
                    <HeaderTemplate>
                        <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-framework">

                            <thead>
                                <tr>
                                    <td><b>Nombre</b></td>
                                    <td><b>Apellido</b></td>
                                    <td><b>DNI</b></td>
                                    <td><b>fecha Entrevista</b></td>
                                    <td><b>Valoracion</b></td>
                                    
                                </tr>
                            </thead>
                    </HeaderTemplate>

                    <ItemTemplate>
                        <tr>

                            <td>
                                <%--<asp:Label ID="lblProveedorNombre" Text='<%# DataBinder.Eval(Container.DataItem, "tbl_Proveedore.RazonSocial" ) %>' runat="server" />--%>
                                <asp:Label ID="lblNombre" Text='<%# Eval( "Nombre" ) %>' runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="lblApellidoRepeater" Text='Aca va el apellido' runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="lblDniRepeater" Text='Aca va el DNI' runat="server" />
                            </td>

                            <td>
                                <asp:Label ID="lblFechaRepeater" Text="" runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="lblValoracion" Text='<%# DataBinder.Eval(Container.DataItem, "Saldo") %>' runat="server" />
                            </td>
                      

                           <%-- <td>
                                <asp:HyperLink ID="lnkInfo" class="btn btn-outline btn-info" runat="server">+Info</asp:HyperLink>
                                <asp:HyperLink ID="lnkEditar" class="btn btn-outline btn-info" runat="server">Editar</asp:HyperLink>
                               

                            </td>--%>
                        </tr>
                    </ItemTemplate>

                    

                    <FooterTemplate>
                        </table>
                    </FooterTemplate>

                </asp:Repeater>
                
                <div class="well">
                <p>Entrevistas cargadas</p>    
                </div>
            </div>

        </div>

    </div>

</div>



</div>
