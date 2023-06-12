<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WTipoTramite.aspx.cs" Inherits="WTramites.WTipoTramite" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>WTIPO TRAMITES  ADVANCED PROGRAMMING - FOR BEGINERSSSSSS....</title>
    <style type="text/css">
        .auto-style1 {
            width: 69%;
            height: 407px;
        }
        .auto-style2 {
            width: 113px;
        }
        .auto-style3 {
            width: 165px;
        }
        .auto-style4 {
            width: 37px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
            <table style="background-color:dodgerblue" class="auto-style1">
                <tr>
                    <td class="auto-style2">Cédula</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtCedula" runat="server"></asp:TextBox>
                    </td>
                    <td colspan="2">CRUD WEB SERVICES SOAP</td>
                </tr>
                <tr>
                    <td class="auto-style2">Nombre</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    </td>
                    <td colspan="2">
                        <asp:Button ID="btnGuardarSOAP" runat="server" Text="GuardadSOAP" OnClick="btnGuardarSOAP_Click" />
                        <asp:Button ID="btnActualizarSOAP" runat="server" Text="ActualizarSOAP" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Apellido</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                    </td>
                    <td colspan="2">
                        <asp:Button ID="btnEliminarSOAP" runat="server" Text="EliminarSOAP" />
                        <asp:Button ID="btnBuscarSOAP" runat="server" Text="BuscarSOAP" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Nota</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtNota" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">CRUD ASP.NET</td>
                    <td colspan="2">CRUD WEB SERVICES REST</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" OnClick="btnActualizar_Click" />
                    </td>
                    <td class="auto-style4">
                        <asp:LinkButton ID="lnkGuardarREST" runat="server">guardarREST</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="lnkActualizarREST" runat="server">actualizarREST</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" style="height: 26px" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
                    </td>
                    <td class="auto-style4">
                        <asp:LinkButton ID="lnkEliminarREST" runat="server">eliminarREST</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="lnkBuscarREST" runat="server">buscarREST</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        Mensajes del Sistema :
                        <asp:Label ID="lblMensajes" runat="server" ForeColor="Red" Text="mensaje : "></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        REPORTE SISTEMA GRID</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3" rowspan="3">
                        <asp:GridView ID="grdtipoTramite" runat="server" BackColor="#FF9933" BorderColor="#000099" BorderWidth="2px" GridLines="Horizontal" Width="387px">
                            <EditRowStyle BackColor="#99FF33" BorderColor="#000099" />
                        </asp:GridView>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
    </form>
</body>
</html>
