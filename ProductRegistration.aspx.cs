using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppProductRegistrationForm
{
    public partial class ProductRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!Page.IsPostBack)
            {
                DdlCaterogy.Items.Add("Electronics");
                DdlCaterogy.Items.Add("Clothing");
                DdlCaterogy.Items.Add("Interiors");
                DdlCaterogy.Items.Add("Assessories");
            }
        }

        protected void BtnRProduct_Click(object sender, EventArgs e)
        {
            LblInfo.Text = "Product Registered Successfull!!";
            LblInfo.Text += "<br>Product Name: " + TxtName.Text;
            LblInfo.Text += "<br>Category: " + DdlCaterogy.Text;
            LblInfo.Text += "<br>Price: " + TxtPrice.Text;
            LblInfo.Text += "<br>Description: "+TxtDesc.Text;
            LblInfo.Text += "<br>Release Date: " + CalRDate.SelectedDate;
        }
    }
}