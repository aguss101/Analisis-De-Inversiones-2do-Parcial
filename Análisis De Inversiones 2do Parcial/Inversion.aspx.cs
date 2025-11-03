using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
            TAP_1.Visible = true; TAP_2.Visible = true; TAP_3.Visible = true;
            //double txtP1 = Convert.ToDouble(txtP1.Text);
            //Promedio = TAP_1.Text
        }
    }
}