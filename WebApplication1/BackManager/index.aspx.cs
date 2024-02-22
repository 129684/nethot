using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace WebApplication1
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        

        }

        protected void Button1_Y_Click(object sender, EventArgs e)
        {
            string username = this.username.Text;
            string password = this.password.Text;

            ///将数据库里账号密码查询
            ///
           bool issucc= AdminBll.SelectUserPwd(username, password);
           if (issucc)
           {
               Response.Redirect("GganL.aspx");
           }
           else { 
           
           }
        }
    }
}