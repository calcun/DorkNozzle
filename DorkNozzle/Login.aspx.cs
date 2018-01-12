using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DorkNozzle
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            if (FormsAuthentication.Authenticate(usernameTextBox.Text, passwordTextBox.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(usernameTextBox.Text, true);
            }
        }
    }
}