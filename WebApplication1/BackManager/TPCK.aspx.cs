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
    public partial class TPCK : System.Web.UI.Page
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
            DataTable dt = TUWenBLL.TUWEN();

            //2将数据添加到reterper
            this.Repeater1.DataSource = dt;
            this.Repeater1.DataBind();

        }



        protected void Button1_tpsc_Click(object sender, EventArgs e)
        {
            //1.获取需要删除行的编号
            string gameId = (sender as Button).CommandArgument;

            //2.根据该编号去DB删除
            bool issucc = TUWenBLL.DeleteTP(gameId);
            if (issucc)
            {
                Response.Redirect("TPCK.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("TWTJ.aspx");
        }

        protected void Button2_tpXG_Click(object sender, EventArgs e)
        {
            //1.获取需要删除行的编号
            string gameId = (sender as Button).CommandArgument;
            Response.Redirect("TPXG.aspx?gameID=" + gameId);
        }
    }
}