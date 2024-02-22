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
    public partial class FJXinxi : System.Web.UI.Page
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
            DataTable dt = FJXIxinxiBLL.selectFJXinxALL();

            //2将数据添加到reterper
            this.Repeater1.DataSource = dt;
            this.Repeater1.DataBind();
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            Response.Redirect("Fjbianji.aspx");
        }

        protected void Button1_rz_Click(object sender, EventArgs e)
        {
            string gameId = (sender as Button).CommandArgument;


            Response.Redirect("Fjbianji.aspx?gameID=" + gameId);
        }

      

        protected void Button2_tianjiaFJ_Click(object sender, EventArgs e)
        {
            Response.Redirect("FJTjia.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("TPCK.aspx");
        }

    }
}