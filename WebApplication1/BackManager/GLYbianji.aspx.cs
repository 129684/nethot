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
    public partial class GLYbianji : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindRepeaterDate();
            }
        }
        private void BindRepeaterDate()
        {
            //1从DB中添加数据
            DataTable dt = GameInfoBLL.selectGameInfoALL();

            //2将数据添加到reterper
            this.Repeater1.DataSource = dt;
            this.Repeater1.DataBind();

        }

        protected void Button1_Ytianjia_Click(object sender, EventArgs e)
        {
            Response.Redirect("YyeTJY.aspx");
        }

        protected void Button1_s_Click(object sender, EventArgs e)
        {
            //1.获取需要删除行的编号
            string gameId = (sender as Button).CommandArgument;

            //2.根据该编号去DB删除
            bool issucc = GameInfoBLL.DeleteGameInfo(gameId);
            if (issucc)
            {
                Response.Redirect("GLYbianji.aspx");
            }

        }

        protected void Button2_x_Click(object sender, EventArgs e)
        {
            //1.获取需要删除行的编号
            string gameId = (sender as Button).CommandArgument;


            Response.Redirect("GLYUpdate.aspx?gameID="+gameId);
        }

    
    }
}