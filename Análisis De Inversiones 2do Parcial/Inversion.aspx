<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inversion.aspx.cs" Inherits="Análisis_De_Inversiones_2do_Parcial.Inversion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 113px;
        }
    </style>
</head>
<body>
    
    <form id="form1" runat="server">
        
        <table class="Table">
            
            <!-- ---------- TITLE ---------- -->

            <tr class="Title__Container">

                <td class="Title" colspan="8">

                    <asp:Label ID="lblMejor" runat="server" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" Text="Mejor opcion de inversión"></asp:Label>

                </td>

            </tr>

            <!-- ---------- TITLE END ---------- -->

            <!-- ***** SEPARADOR ***** -->

            <tr>
                <td colspan="8">&nbsp;</td>
            </tr>

            <!-- ***** SEPARADOR ***** -->

            <!-- ---------- SDds ---------- -->

            <tr>
                <td class="auto-style13" colspan="2">
                    <asp:Label ID="lblName1" runat="server" Text="Banco Provincia"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TA 1:&nbsp;
                    <asp:TextBox ID="txtP1" runat="server" ValidationGroup="1"></asp:TextBox>
                    TA 2:
                    <asp:TextBox ID="txtP2" runat="server" style="height: 22px" ValidationGroup="1"></asp:TextBox>
&nbsp; TA 3:<asp:TextBox ID="txtP3" runat="server" ValidationGroup="1"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbltap1" runat="server" Text="TAP" Visible="False"></asp:Label>
&nbsp; </td>
                <td class="auto-style14">
                    <asp:Label ID="TAP_1" runat="server" Visible="False"></asp:Label>
                </td>
                <td class="auto-style14"></td>
                <td class="auto-style14" colspan="3">
                    <asp:RequiredFieldValidator ID="RFVtxt" runat="server" ControlToValidate="txtH3" ErrorMessage="Ingrese todos los datos" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">
                    <asp:Label ID="lblName2" runat="server" Text="Banco Nación"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TA 1:&nbsp;
                    <asp:TextBox ID="txtN1" runat="server" ValidationGroup="1"></asp:TextBox>
                    TA 2:
                    <asp:TextBox ID="txtN2" runat="server" ValidationGroup="1"></asp:TextBox>
&nbsp; TA 3:<asp:TextBox ID="txtN3" runat="server" ValidationGroup="1"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbltap2" runat="server" Text="TAP" Visible="False"></asp:Label>
&nbsp; </td>
                <td>
                    <asp:Label ID="TAP_2" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style5" colspan="3">
                    <asp:RegularExpressionValidator ID="re" runat="server" ControlToValidate="txtN1" ErrorMessage="Ingrese solo numericos" ForeColor="#CC0000" ValidationExpression="^\d+(\.\d+)?$" ValidationGroup="1"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">
                    <asp:Label ID="lblName3" runat="server" Text="Banco Hipotecario"></asp:Label>
&nbsp;&nbsp;&nbsp; TA 1:&nbsp;
                    <asp:TextBox ID="txtH1" runat="server" ValidationGroup="1"></asp:TextBox>
                    TA 2:
                    <asp:TextBox ID="txtH2" runat="server" ValidationGroup="1"></asp:TextBox>
&nbsp; TA 3:<asp:TextBox ID="txtH3" runat="server" ValidationGroup="1"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbltap3" runat="server" Text="TAP" Visible="False"></asp:Label>
&nbsp; </td>
                <td>
                    <asp:Label ID="TAP_3" runat="server" Visible="False"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="btnTAP" runat="server" OnClick="btnTAP_Click" Text="Mostrar Promedio" ValidationGroup="1" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="btnLimpiar" runat="server" OnClick="btnLimpiar_Click" Text="Limpiar Celdas" ValidationGroup="1" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">
                    <asp:Label ID="lblBetterInvestment" runat="server" Font-Bold="True" Font-Overline="True" Font-Size="X-Large" Font-Underline="True" Text="Mejor inversión"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblRendimientos" runat="server" Font-Bold="True" Font-Names="Baskerville Old Face" Font-Size="Larger" Height="70px" Text="RENDIMIENTOS"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">Banco:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblBco" runat="server" Text="lblBanco"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblName2_P" runat="server" Font-Bold="True" Text="Banco Provincia"></asp:Label>
                </td>
                <td>Capital</td>
                <td class="auto-style5">TAP</td>
                <td>
                    <asp:Label ID="Label14" runat="server" Text="Anual"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label15" runat="server" Text="Trimestral"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="Label16" runat="server" Text="Mensual"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style10" colspan="2">Tasa Anual:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblT_Anual" runat="server"></asp:Label>
                </td>
                <td class="auto-style11"></td>
                <td class="auto-style11">$850.000</td>
                <td class="auto-style12">
                    <asp:Label ID="lblTAPS" runat="server"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:Label ID="lblAS" runat="server"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:Label ID="lblTS" runat="server"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="lblMS" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">Tasa Trimestral:&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblT_Trimestral" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">Tasa Mensual:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblT_Mensual" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblName2_N" runat="server" Font-Bold="True" Text="Banco Nación"></asp:Label>
                </td>
                <td>Capital</td>
                <td class="auto-style5">TAP</td>
                <td>
                    <asp:Label ID="Label17" runat="server" Text="Anual"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label18" runat="server" Text="Trimestral"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="Label19" runat="server" Text="Mensual"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>$850.000</td>
                <td class="auto-style5">
                    <asp:Label ID="lblTAPS2" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblAS2" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblTS2" runat="server"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="lblMS2" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7" colspan="2"></td>
                <td class="auto-style8">
                    <asp:Label ID="lblName2_H" runat="server" Font-Bold="True" Text="Banco Hipotecario"></asp:Label>
                </td>
                <td class="auto-style8">Capital</td>
                <td class="auto-style9">TAP</td>
                <td class="auto-style8">
                    <asp:Label ID="Label21" runat="server" Text="Anual"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:Label ID="Label22" runat="server" Text="Trimestral"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="Label23" runat="server" Text="Mensual"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>$850.000</td>
                <td class="auto-style5">
                    <asp:Label ID="lblTAPS3" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblAS3" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblTS3" runat="server"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="lblMS3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
        </table>

    </form>

</body>
</html>
