using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Management.Automation;

namespace PasswordChangerApplication
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitButton_Clicked(object sender, EventArgs e)
        {
            var shell = PowerShell.Create();
            var newPasswordText = newPassword.Text;
            var username = this.username.Text;
            var scriptText = 
            shell.Commands.AddScript(
                string.Format(
                    "Set-ADAccountPassword -Identity {0} -OldPassword (ConvertTo-SecureString -AsPlainText \"{1}\" -Force)",
                    username, newPasswordText));

            try
            {
                shell.Invoke();
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }
        }
    }
}