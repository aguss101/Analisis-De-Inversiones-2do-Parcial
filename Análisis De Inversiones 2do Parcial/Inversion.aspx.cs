using System;
using System.Web.UI;

namespace Análisis_De_Inversiones_2do_Parcial
{
    public partial class Inversion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            }
        }

        protected void btnTAP_Click(object sender, EventArgs e)
        {
            TAP_1.Visible = true;
            TAP_2.Visible = true;
            TAP_3.Visible = true;

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


                double capital = 850000;

                double rendAnualP = capital * (1 + promP / 100.0);
                double rendTrimestralP = capital * Math.Pow((1 + (promP / 4.0) / 100.0), 4.0);
                double rendMensualP = capital * Math.Pow((1 + (promP / 12.0) / 100.0), 12.0);

                lblTAPS.Text = promP.ToString("0.00") + " %";
                lblAS.Text = "$" + rendAnualP.ToString("N0");
                lblTS.Text = "$" + rendTrimestralP.ToString("N0");
                lblMS.Text = "$" + rendMensualP.ToString("N0");
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
        }
    }
}
