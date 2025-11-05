<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inversiones.aspx.cs" Inherits="Análisis_De_Inversiones_2do_Parcial.Inversiones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title>Inversiones</title>
    <link rel="stylesheet" href="~/styles.css" />

</head>
<body>
    
    <form id="form1" runat="server">
        
        <!-- ---------- Título ---------- -->

        <div class="Title__Container">
            <h1 class="Title">Mejor opción de inversión</h1>
        </div>

        <!-- ---------- Título END ---------- -->

        <!-- ---------- Invertir ---------- -->

        <div class="AllBank__Container">

            <div class="Bank__Container">
                <h2 class="Bank__Title">Banco Provincia</h2>
                <div class="Bank__Input-Container">
                    <label>TA 1
                        <asp:TextBox ID="txtP1" runat="server" ValidationGroup="1" Class="Bank__Input-Modify"></asp:TextBox>
                    </label>
                    <label>TA 2
                        <asp:TextBox ID="txtP2" runat="server" ValidationGroup="1" Class="Bank__Input-Modify"></asp:TextBox>
                    </label>
                    <label>TA 3
                        <asp:TextBox ID="txtP3" runat="server" ValidationGroup="1" Class="Bank__Input-Modify"></asp:TextBox>
                    </label>
                </div>
                <asp:Label ID="TAP_1" runat="server" Visible="False" class="Bank__TAP"></asp:Label>
            </div>

            <div class="Bank__Container">
                <h2 class="Bank__Title">Banco Nación</h2>
                <div class="Bank__Input-Container">
                    <label>TA 1
                        <asp:TextBox ID="txtN1" runat="server" ValidationGroup="1" Class="Bank__Input-Modify"></asp:TextBox>
                    </label>
                    <label>TA 2
                        <asp:TextBox ID="txtN2" runat="server" ValidationGroup="1" Class="Bank__Input-Modify"></asp:TextBox>
                    </label>
                    <label>TA 3
                        <asp:TextBox ID="txtN3" runat="server" ValidationGroup="1" Class="Bank__Input-Modify"></asp:TextBox>
                    </label>
                </div>
                <asp:Label ID="TAP_2" runat="server" class="Bank__TAP"></asp:Label>
            </div>

            <div class="Bank__Container">
                <h2 class="Bank__Title">Banco Hipotecario</h2>
                <div class="Bank__Input-Container">
                    <label>TA 1
                        <asp:TextBox ID="txtH1" runat="server" ValidationGroup="1" Class="Bank__Input-Modify"></asp:TextBox>
                    </label>
                    <label>TA 2
                        <asp:TextBox ID="txtH2" runat="server" ValidationGroup="1" Class="Bank__Input-Modify"></asp:TextBox>
                    </label>
                    <label>TA 3
                        <asp:TextBox ID="txtH3" runat="server" ValidationGroup="1" Class="Bank__Input-Modify"></asp:TextBox>
                    </label>
                </div> 
                <asp:Label ID="TAP_3" runat="server" Visible="False" class="Bank__TAP"></asp:Label>
            </div>

        </div>

        <div class="Errores">
            <asp:RequiredFieldValidator ID="RFVtxt" runat="server" ControlToValidate="txtH3" ErrorMessage="Ingrese todos los datos" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
        </div>

        <div class="Submits">
             <!--  --> <asp:Button ID="btnTAP" runat="server" Text="Mostrar Promedio" ValidationGroup="1" OnClick="btnTAP_Click" />
            <!--  --> <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar Celdas" ValidationGroup="2" OnClick="btnLimpiar_Click" />
        </div>

        <!-- ---------- Invertir END ---------- -->

        <!-- ---------- Result ---------- -->

        <div class="Result__Container">

            <div class="Performance">

                <h2>Rendimientos</h2>

                <!-- Banco Provincia -->

                <div class="Performance__Container">
                    
                    <table>
                        <thead>
                            <tr>
                                <th>Banco Provincia</th>
                                <th>Capital</th>
                                <th>TAP</th>
                                <th>Anual</th>
                                <th>Trimestral</th>
                                <th>Mensual</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td></td>
                                <td> <span>$850.000</span> </td>
                                <td> <asp:Label ID="lblTAPS" runat="server"></asp:Label> </td>
                                <td> <asp:Label ID="lblAS" runat="server"></asp:Label> </td>
                                <td> <asp:Label ID="lblTS" runat="server"></asp:Label> </td>
                                <td> <asp:Label ID="lblMS" runat="server"></asp:Label> </td>
                            </tr>
                        </tbody>
                    </table>

                </div>

                <!-- Banco Nación -->

                <div class="Performance__Container">

                    <table>
                        <thead>
                            <tr>
                                <th>Banco Nación</th>
                                <th>Capital</th>
                                <th>TAP</th>
                                <th>Anual</th>
                                <th>Trimestral</th>
                                <th>Mensual</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td></td>
                                <td> <span>$850.000</span> </td>
                                <td> <asp:Label ID="lblTAPS2" runat="server"></asp:Label> </td>
                                <td> <asp:Label ID="lblAS2" runat="server"></asp:Label> </td>
                                <td> <asp:Label ID="lblTS2" runat="server"></asp:Label> </td>
                                <td> <asp:Label ID="lblMS2" runat="server"></asp:Label> </td>
                            </tr>
                        </tbody>
                    </table>

                </div>

                <!-- Banco Hipotecario -->

                <div class="Performance__Container">

                    <table>
                        <thead>
                            <tr>
                                <th>Banco Hipotecario</th>
                                <th>Capital</th>
                                <th>TAP</th>
                                <th>Anual</th>
                                <th>Trimestral</th>
                                <th>Mensual</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td></td>
                                <td> <span>$850.000</span> </td>
                                <td> <asp:Label ID="lblTAPS3" runat="server"></asp:Label> </td>
                                <td> <asp:Label ID="lblAS3" runat="server"></asp:Label> </td>
                                <td> <asp:Label ID="lblTS3" runat="server"></asp:Label> </td>
                                <td> <asp:Label ID="lblMS3" runat="server"></asp:Label> </td>
                            </tr>
                        </tbody>
                    </table>

                </div>

            </div>

            <!-- TABLE MOBILE -->

            <div class="Performance Performance2">

                <h2>Rendimientos</h2>

                <!-- Banco Provincia -->

                <div class="Performance__Container">
        
                    <table>
                        <tbody>
                            <tr>
                                <th>Banco Provincia</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th>Capital</th>
                                <td> <span>$850.000</span> </td>
                            </tr>

                            <tr>
                                <th>TAP</th>
                                <td> <asp:Label ID="LBL__TAP1" runat="server"></asp:Label> </td>
                            </tr>
                            <tr>
                                <th>Anual</th>
                                <td> <asp:Label ID="LBL__AS1" runat="server"></asp:Label> </td>
                            </tr>
                            <tr>
                                <th>Trimestral</th>
                                <td> <asp:Label ID="LBL__TS1" runat="server"></asp:Label> </td>
                            </tr>
                            <tr>
                                <th>Mensual</th>
                                <td> <asp:Label ID="LBL__MS1" runat="server"></asp:Label> </td>
                            </tr>
                        </tbody>
                    </table>

                </div>

                <!-- Banco Nación -->

                <div class="Performance__Container">

                    <table>
                        <tbody>
                            <tr>
                                <th>Banco Nación</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th>Capital</th>
                                <td> <span>$850.000</span> </td>
                            </tr>
                            <tr>
                                <th>TAP</th>
                                <td> <asp:Label ID="LBL__TAP2" runat="server"></asp:Label> </td>
                            </tr>
                            <tr>
                                <th>Anual</th>
                                <td> <asp:Label ID="LBL__AS2" runat="server"></asp:Label> </td>
                            </tr>
                            <tr>
                                <th>Trimestral</th>
                                <td> <asp:Label ID="LBL__TS2" runat="server"></asp:Label> </td>
                            </tr>
                            <tr>
                                <th>Mensual</th>
                                <td> <asp:Label ID="LBL__MS2" runat="server"></asp:Label> </td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <!-- Banco Hipotecario -->

                <div class="Performance__Container">

                    <table>
                        <tbody>
                            <tr>
                                <th>Banco Hipotecario</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th>Capital</th>
                                <td> <span>$850.000</span> </td>
                            </tr>
                            <tr>
                                <th>TAP</th>
                                <td> <asp:Label ID="LBL__TAP3" runat="server"></asp:Label> </td>
                            </tr>
                                <tr>
                                    <th>Anual</th>
                                    <td> <asp:Label ID="LBL__AS3" runat="server"></asp:Label> </td>
                                </tr>
                            <tr>
                                <th>Trimestral</th>
                                    <td> <asp:Label ID="LBL__TS3" runat="server"></asp:Label> </td>
                            </tr>
                            <tr>
                                <th>Mensual</th>
                                <td> <asp:Label ID="LBL__MS3" runat="server"></asp:Label> </td>
                            </tr>
                        </tbody>
                    </table>

                </div>

            </div>

            <!-- TABLE MOBILE END -->

            <div class="Result__Best">

                <h2>Mejor Inversión</h2>
                <div class="Result__Bank-Container">
                    <p>Banco : <asp:Label ID="lblBco" runat="server"></asp:Label> </p> 
                    <p>Tasa Anual : <asp:Label ID="lblT_Anual" runat="server"></asp:Label> </p>
                    <p>Tasa Trimestral : <asp:Label ID="lblT_Trimestral" runat="server"></asp:Label> </p>
                    <p>Tasa Mensual : <asp:Label ID="lblT_Mensual" runat="server"></asp:Label> </p>
                </div>

            </div>

            <!-- ---------- Result END ---------- -->

        </div>

    </form>

</body>
</html>
