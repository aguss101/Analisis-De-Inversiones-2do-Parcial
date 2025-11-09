using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Análisis_De_Inversiones_2do_Parcial
{
    public partial class Inversiones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            }
        }

        protected void MobileTableFill()
        {
            // CAPITAL
            LBL__Capital1.Text = lblCapitalProv.Text;
            LBL__Capital2.Text = lblCapitalNac.Text;
            LBL__Capital3.Text = lblCapitalProv.Text;

            // BANCO PROVINCIA
            LBL__TAP1.Text = lblTAPS.Text;
            LBL__AS1.Text = lblAS.Text;
            LBL__TS1.Text = lblTS.Text;
            LBL__MS1.Text = lblMS.Text;

            // BANCO NACION

            LBL__TAP2.Text = lblTAPS2.Text;
            LBL__AS2.Text = lblAS2.Text;
            LBL__TS2.Text = lblTS2.Text;
            LBL__MS2.Text = lblMS2.Text;

            // BANCO HIPOTECARIO

            LBL__TAP3.Text = lblTAPS3.Text;
            LBL__AS3.Text = lblAS3.Text;
            LBL__TS3.Text = lblTS3.Text;
            LBL__MS3.Text = lblMS3.Text;

        }

        // CALCULOS DE RENDIMIENTOS
        
        protected double RendAnual(double capital, double N)
        {
            return capital * (1 + (N/100));
        }

        protected double RendTrimestral(double capital, double N)
        {
            //double tasaTrimestral = elevar(1 + (N/100),3) - 1;
            //return capital * elevar(1+tasaTrimestral,4);
            double ganancia = 0;
            double res = capital;
            for (int i = 0; i < 4; i++)
            {
                ganancia = res * (N / 100);
                res += ganancia;
            }
            return res;
        }

        protected double RendMensual(double capital, double N)
        {
            //double tasaMensual = elevar(1+(N/100),12);
            //return capital * tasaMensual;
            double ganancia = 0;
            double res = capital; 
            for (int i=0;i<12;i++) {
                ganancia = res * (N / 100);
                res += ganancia;
            }
            return res;
        }

        // MEJOR INVERSIÓN

        protected void MejorInversion(double PromP, double PromN, double PromH)
        {

            double MejorRendimiento = PromP > PromN ? PromP : PromN;
            MejorRendimiento = MejorRendimiento > PromH ? MejorRendimiento : PromH;

            // ASIGNAR BANCO

            if (MejorRendimiento == PromP)
            {
                lblBco.Text = "Banco Provincia";
            }
            else if (MejorRendimiento == PromN)
            {
                lblBco.Text = "Banco Nación";
            }
            else
            {
                lblBco.Text = "Banco Hipotecario";
            }

            // ASIGNAR RENDIMIENTOS

            if (lblBco.Text == "Banco Provincia")
            {
                lblT_Anual.Text = lblAS.Text;
                lblT_Trimestral.Text = lblTS.Text;
                lblT_Mensual.Text = lblMS.Text;
            }
            else if (lblBco.Text == "Banco Nación")
            {
                lblT_Anual.Text = lblAS2.Text;
                lblT_Trimestral.Text = lblTS2.Text;
                lblT_Mensual.Text = lblMS2.Text;
            }
            else
            {
                lblT_Anual.Text = lblAS3.Text;
                lblT_Trimestral.Text = lblTS3.Text;
                lblT_Mensual.Text = lblMS3.Text;
            }

        }

        protected void btnTAP_Click(object sender, EventArgs e)
        {
            TAP_1.Visible = true;
            TAP_2.Visible = true;
            TAP_3.Visible = true;

            // Validar que todos los campos estén completos
            if (string.IsNullOrWhiteSpace(txtP1.Text) || string.IsNullOrWhiteSpace(txtP2.Text) || string.IsNullOrWhiteSpace(txtP3.Text) ||
                string.IsNullOrWhiteSpace(txtN1.Text) || string.IsNullOrWhiteSpace(txtN2.Text) || string.IsNullOrWhiteSpace(txtN3.Text) ||
                string.IsNullOrWhiteSpace(txtH1.Text) || string.IsNullOrWhiteSpace(txtH2.Text) || string.IsNullOrWhiteSpace(txtH3.Text))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Por favor, complete todos los campos antes de calcular.');", true);
                return;
            }

            try
            {

                double p1 = Convert.ToDouble(txtP1.Text);
                double p2 = Convert.ToDouble(txtP2.Text);
                double p3 = Convert.ToDouble(txtP3.Text);
                double promP = (p1 + p2 + p3) / 3;
                TAP_1.Text = promP.ToString("0.00") + " %";

                double n1 = Convert.ToDouble(txtN1.Text);
                double n2 = Convert.ToDouble(txtN2.Text);
                double n3 = Convert.ToDouble(txtN3.Text);
                double promN = (n1 + n2 + n3) / 3;
                TAP_2.Text = promN.ToString("0.00") + " %";

                double h1 = Convert.ToDouble(txtH1.Text);
                double h2 = Convert.ToDouble(txtH2.Text);
                double h3 = Convert.ToDouble(txtH3.Text);
                double promH = (h1 + h2 + h3) / 3;
                TAP_3.Text = promH.ToString("0.00") + " %";


                double capital = Convert.ToDouble(txtCapital.Text);

                //CAPITAL
                lblCapitalProv.Text = "$" + capital.ToString("N0");
                lblCapitalNac.Text = "$" + capital.ToString("N0");
                lblCapitalHip.Text = "$" + capital.ToString("N0");

                // RELLENAR LABELS

                lblTAPS.Text = promP.ToString("0.00") + " %";
                lblAS.Text = "$" + RendAnual(capital, promP).ToString("N0");
                lblTS.Text = "$" + RendTrimestral(capital, (promP/4)).ToString("N0");
                lblMS.Text = "$" + RendMensual(capital, (promP/12)).ToString("N0");

                lblTAPS2.Text = promN.ToString("0.00") + " %";
                lblAS2.Text = "$" + RendAnual(capital, promN).ToString("N0");
                lblTS2.Text = "$" + RendTrimestral(capital, (promN/4)).ToString("N0");
                lblMS2.Text = "$" + RendMensual(capital, (promN/12)).ToString("N0");

                lblTAPS3.Text = promH.ToString("0.00") + " %";
                lblAS3.Text = "$" + RendAnual(capital, promH).ToString("N0");
                lblTS3.Text = "$" + RendTrimestral(capital, (promH/4)).ToString("N0");
                lblMS3.Text = "$" + RendMensual(capital, (promH/12)).ToString("N0");

                // RELLENAR TABLA MOBILE

                MobileTableFill();

                // MEJOR INVERSIÓN

                MejorInversion(promP, promN, promH);

            }
            catch (FormatException)
            {
                ClientScript.RegisterStartupScript(
                    this.GetType(),
                    "alert",
                    "alert('Por favor, ingrese solo números válidos en todas las tasas.');",
                    true
                );
            }
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtP1.Text = "";
            txtP2.Text = "";
            txtP3.Text = "";
            txtN1.Text = "";
            txtN2.Text = "";
            txtN3.Text = "";
            txtH1.Text = "";
            txtH2.Text = "";
            txtH3.Text = "";

            TAP_1.Text = "";
            TAP_2.Text = "";
            TAP_3.Text = "";

            // TABLAS

            lblTAPS.Text = "";
            lblAS.Text = "";
            lblTS.Text = "";
            lblMS.Text = "";

            lblTAPS2.Text = "";
            lblAS2.Text = "";
            lblTS2.Text = "";
            lblMS2.Text = "";

            lblTAPS3.Text = "";
            lblAS3.Text = "";
            lblTS3.Text = "";
            lblMS3.Text = "";

            // TABLAS MOBILE

            MobileTableFill();

            // MEJOR INVERSION

            lblBco.Text = "";
            lblT_Anual.Text = "";
            lblT_Trimestral.Text = "";
            lblT_Mensual.Text = "";

        }
    }
}