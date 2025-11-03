<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inversion.aspx.cs" Inherits="Análisis_De_Inversiones_2do_Parcial.Inversion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 795px;
        }
        .auto-style5 {
            width: 4px;
        }
        .auto-style7 {
            height: 21px;
            width: 795px;
        }
        .auto-style8 {
            height: 21px;
        }
        .auto-style9 {
            height: 21px;
            width: 4px;
        }
        .auto-style10 {
            width: 795px;
            height: 23px;
        }
        .auto-style11 {
            height: 23px;
        }
        .auto-style12 {
            width: 4px;
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Font-Overline="True" Font-Strikeout="False" Font-Underline="True" Text="Mejor opcion de inversión"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Banco Provincia"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TA 1:&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    TA 2:
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
&nbsp; TA 3:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server" Text="TAP" Visible="False"></asp:Label>
&nbsp;
                    <asp:Label ID="TAP_1" runat="server" Visible="False"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Text="Banco Nación"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TA 1:&nbsp;
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    TA 2:
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
&nbsp; TA 3:<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server" Text="TAP" Visible="False"></asp:Label>
&nbsp;
                    <asp:Label ID="TAP_2" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label5" runat="server" Text="Banco Hipotecario"></asp:Label>
&nbsp;&nbsp;&nbsp; TA 1:&nbsp;
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    TA 2:
                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
&nbsp; TA 3:<asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label8" runat="server" Text="TAP" Visible="False"></asp:Label>
&nbsp;
                    <asp:Label ID="TAP_3" runat="server" Visible="False"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="btnTAP" runat="server" OnClick="btnTAP_Click" Text="Mostrar Promedio" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label39" runat="server" Font-Bold="True" Font-Overline="True" Font-Size="X-Large" Font-Underline="True" Text="Mejor inversión"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblRendimientos0" runat="server" Font-Bold="True" Font-Names="Baskerville Old Face" Font-Size="Larger" Height="70px" Text="RENDIMIENTOS"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Banco:
                    <asp:Label ID="Label40" runat="server" Text="lblBanco"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label25" runat="server" Font-Bold="True" Text="Banco Provincia"></asp:Label>
                </td>
                <td>Capital</td>
                <td class="auto-style5">TAP</td>
                <td>
                    <asp:Label ID="Label14" runat="server" Text="Anual"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label15" runat="server" Text="Trimestral"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label16" runat="server" Text="Mensual"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">Tasa Anual:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tasa Trimestral:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tasa Mensual:</td>
                <td class="auto-style11"></td>
                <td class="auto-style11">$850.000</td>
                <td class="auto-style12">
                    <asp:Label ID="Label36" runat="server"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:Label ID="Label33" runat="server"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:Label ID="Label34" runat="server"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:Label ID="Label35" runat="server"></asp:Label>
                </td>
                <td class="auto-style11"></td>
                <td class="auto-style11"></td>
                <td class="auto-style11"></td>
                <td class="auto-style11"></td>
                <td class="auto-style11"></td>
                <td class="auto-style11"></td>
                <td class="auto-style11"></td>
                <td class="auto-style11"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Label ID="Label26" runat="server" Font-Bold="True" Text="Banco Nación"></asp:Label>
                </td>
                <td>Capital</td>
                <td class="auto-style5">TAP</td>
                <td>
                    <asp:Label ID="Label17" runat="server" Text="Anual"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label18" runat="server" Text="Trimestral"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label19" runat="server" Text="Mensual"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>$850.000</td>
                <td class="auto-style5">
                    <asp:Label ID="Label37" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label30" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label31" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label32" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8">
                    <asp:Label ID="Label24" runat="server" Font-Bold="True" Text="Banco Hipotecario"></asp:Label>
                </td>
                <td class="auto-style8">Capital</td>
                <td class="auto-style9">TAP</td>
                <td class="auto-style8">
                    <asp:Label ID="Label21" runat="server" Text="Anual"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:Label ID="Label22" runat="server" Text="Trimestral"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:Label ID="Label23" runat="server" Text="Mensual"></asp:Label>
                </td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>$850.000</td>
                <td class="auto-style5">
                    <asp:Label ID="Label38" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label27" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label28" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label29" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
