using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;

namespace WebApplication1.BackManager
{
    public partial class KRZJMIAN : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDate();
            }
        }

        public void BindDate()
        {
            //1从DB中添加数据
            DataTable dt = KRFJCXBLL.selectFJXinxALL();

            //2将数据添加到reterper
            this.Repeater1.DataSource = dt;
            this.Repeater1.DataBind();
        }
    }
}