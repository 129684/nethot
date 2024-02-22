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
    public partial class YyeTJY : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }


        protected void YTJiaTTT_Click(object sender, EventArgs e)
        {
            GameInofoModel game = new GameInofoModel();
            game.Yname = this.Yname.Text.Trim();
            game.Ysex = this.DropDownList1_sex.Text.Trim();
            game.Yage = this.Yage.Text.Trim();
            game.Yzhanghao = this.Yzhanghao.Text.Trim();
            game.Ymima = this.Ymima.Text.Trim();

            bool issucc = GameInfoBLL.AddGameInfo(game);
            if (issucc)
            {
                Response.Redirect("GganL.aspx");
            }
            else
            { 
            
            }
        }

   
    }
}