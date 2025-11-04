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
            </div>

        </div>

        <div class="Submits">
             <!-- OnClick="btnTAP_Click" --> <asp:Button ID="btnTAP" runat="server" Text="Mostrar Promedio" ValidationGroup="1" />
            <!-- OnClick="btnLimpiar_Click" --> <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar Celdas" ValidationGroup="1" />
        </div>

        <!-- ---------- Invertir END ---------- -->

        <div class="Result__Container">

            <div class="Result__Best">

                <h2>Mejor Inversión</h2>
                <div class="Result__Bank-Container">
                    <p>Banco : </p> <asp:Label ID="lblBco" runat="server" Text="lblBanco"></asp:Label>
                </div>

            </div>

            <div class="Performance">

            </div>

        </div>

    </form>

</body>
</html>
