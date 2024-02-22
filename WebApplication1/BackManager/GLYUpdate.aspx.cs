using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MODEL;
using BLL;

namespace WebApplication1.BackManager
{
    public partial class GLYUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               this.HiddenField1_xiugai.Value= Request["gameId"].ToString();

                //根据编号查询
               GameInofoModel game = GameInfoBLL.selectByGameID(this.HiddenField1_xiugai.Value);

                //将数据最新 
               this.Yname.Text = game.Yname;
               this.DropDownList1_sex.Text = game.Ysex;
               this.Yage.Text = game.Yage;
               this.Yzhanghao.Text = game.Yzhanghao;
               this.Ymima.Text = game.Ymima;
            }
        }

        protected void GULUP_Click(object sender, EventArgs e)
        {
            //1.获取修改后的最新数据
            GameInofoModel update = new GameInofoModel();
            update.Yname = this.Yname.Text;
            update.Ysex = this.DropDownList1_sex.Text;
            update.Yage = this.Yage.Text;
            update.Yzhanghao = this.Yzhanghao.Text;
            update.Ymima = this.Ymima.Text;
            update.YingYEID = int.Parse(this.HiddenField1_xiugai.Value);
            //将最新的数据更新到DB 
            bool issucc = GameInfoBLL.updateGameinfo(update);
            if (issucc)
            {
                Response.Redirect("GganL.aspx");
            }
        }
    }
}