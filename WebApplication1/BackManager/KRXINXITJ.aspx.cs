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
    public partial class KRXINXITJ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void YTJiaTTT_Click(object sender, EventArgs e)
        {
            KRModel game = new KRModel();
            game.xingming = this.Yname.Text.Trim();
            game.sex = this.DropDownList1_sex.Text.Trim();
            game.dianhua = this.Yage.Text.Trim();
            game.zhanghao = this.Yzhanghao.Text.Trim();
            game.mima = this.Ymima.Text.Trim();

            bool issucc = KRBLL.AddKRINNFO(game); 
            if (issucc)
            {
                Response.Redirect("KRXGLI.aspx");
            }
            else
            {

            }
        }
    }
}