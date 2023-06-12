<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tramite.aspx.cs" Inherits="WTramites.Tramite" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 88px;
        }
        .auto-style3 {
            width: 88px;
            height: 20px;
        }
        .auto-style4 {
            height: 20px;
            width: 143px;
        }
        .auto-style6 {
            width: 143px;
        }
        .auto-style7 {
            width: 362px;
            height: 112px;
        }
    </style>
</head>
<body>
    <img src="img/logo_itscor.png" class="auto-style7" />
    <form id="form1" runat="server">
        <div>
            <table style="width:25%;" border="3" bgcolor="yellow">
                <tr>
                    <td class="auto-style2">Cédula</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style2">Nombre</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtTramite" runat="server"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style2">Apellido</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtEstado" runat="server"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style2">Nota</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtTipoTramite" runat="server"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" />
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" />
                        <asp:Button ID="btnListar" runat="server" Text="Listar" />
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" />
                    </td>
                    <td class="auto-style4">
                        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" />
                        <asp:Button ID="btnSalir" runat="server" Text="Salir" />
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:GridView ID="grdTramites" runat="server">
                        </asp:GridView>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
