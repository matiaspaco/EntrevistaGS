<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaPrincipal .Master" AutoEventWireup="true" CodeBehind="GestionDeEntrevistas.aspx.cs" Inherits="ProyectoPrueba.Web.GestionDeEntrevistas" %>

<%@ Register Src="~/UControls/CreateInterview.ascx" TagPrefix="uc1" TagName="CreateInterview" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <uc1:CreateInterview runat="server" id="CreateInterview" />

<%--<table>
    <tr>
        <td class="celdaPropiedad">
            Fecha Entrevista:
        </td>
        <td class="celdaValor" colspan="3">
            <input id="txtFechaEntrevista"type="text" class="form-control" style="width:120px;" maxlength:9/>
        </td>
    </tr>
    <tr>
        <td class ="celdaPropiedad">
            Nombre:            
        </td>
        <td class="celdaValor">
            <input id="txtNombre" type="text" class="form-control" style="width:350px" />
        </td>
        <td class ="celdaPropiedad">
            Apellido:            
        </td>
        <td class="celdaValor">
            <input id="txtApellido" type="text" class="form-control" style="width:350px" />
        </td>
    </tr>

    <tr>
        <td class ="celdaPropiedad">
            DNI:            
        </td>
        <td class="celdaValor">
            <input id="txtDNI" type="text" class="form-control" style="width:120px" maxlength:8/>
        </td>
        <td class ="celdaPropiedad">
            Telefono:            
        </td>
        <td class="celdaValor">
            <input id="txtTelefono" type="text" class="form-control" style="width:350px" maxlength:10/>
        </td>
    </tr>
    <tr>
        <td class ="celdaPropiedad">
            Asiste:            
        </td>
        <td class="celdaValor">
            <input id="ChkAsistencia" type="checkbox"/>
        </td>
        <td class ="celdaPropiedad">
            Valoracion:            
        </td>
        <td class="celdaValor">
            <input id="txtValoracion" type="text" class="form-control" style="width:350px" maxlength:2/>
        </td>
    </tr>
    <tr>
        <td colspan="4" style="text-align:center; padding-top:45px">
            <button type="button" id="btnSaveInterview" class="btn btn-sm btn-primary" title="Guardar entrevista">Guardar</button>
        </td>
    </tr>

</table>--%>

</asp:Content>
