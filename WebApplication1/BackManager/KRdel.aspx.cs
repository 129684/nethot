using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace WebApplication1.BackManager
{
    public partial class KRdel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_YE_Click(object sender, EventArgs e)
        {
            string username = this.usernameKR.Text;
            string password = this.passwordKR.Text;

            bool issucc = KRdelBLL.SelectUserPwd(username, password);
            if (issucc)
            {
                Response.Redirect("KRZJMIAN.aspx");
            }
            else
            {

            }
        }
    }
}