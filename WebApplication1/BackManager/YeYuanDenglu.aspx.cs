using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace WebApplication1.BackManager
{
    public partial class YeYuanDenglu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_YE_Click(object sender, EventArgs e)
        {
              string username = this.usernameS.Text;
            string password = this.passwordS.Text;

            ///将数据库里账号密码查询
            bool issucc = YingYeBLL.SelectUserPwd(username, password);
            if (issucc)
            {
                Response.Redirect("FJXinxi.aspx");
            }
            else
            {

            }
        }
        
    }
      
    }
