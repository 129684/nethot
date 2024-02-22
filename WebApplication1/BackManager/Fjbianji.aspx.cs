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
    public partial class Fjbianji : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.HiddenField1_xiugai.Value = Request["gameId"].ToString();

                //根据编号查询
                FJXinxiModel game = FJXIxinxiBLL.selectByGameID(this.HiddenField1_xiugai.Value);

                //将数据最新 

                this.DropDownList1_sex.Text = game.shifouruzu;
            }
        }

        protected void GULUP_Click(object sender, EventArgs e)
        {
            FJXinxiModel
                update = new FJXinxiModel();
            update.shifouruzu = this.DropDownList1_sex.Text;
           
            update.FJID = int.Parse(this.HiddenField1_xiugai.Value);
            //将最新的数据更新到DB 
            bool issucc = FJXIxinxiBLL.updateFJXX(update);
            if (issucc)
            {
                Response.Redirect("FJXinxi.aspx");
            }
        }
    }
}