using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MODEL;
using BLL;
using System.IO;

namespace WebApplication1.BackManager
{
    public partial class TWTJ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


      
        protected void Button1_Click(object sender, EventArgs e)
        {
            TWZSModel game = new TWZSModel();
            game.tpnaem = this.TextBox1.Text.Trim();
            game.tp = this.Image1_showSC.ImageUrl;
            game.wenzi = this.tuwen_disc.Text.Trim();


            bool issucc = TUWenBLL.AddTU(game);
            if (issucc)
            {
                Response.Redirect("TPCK.aspx");
            }
            else
            {

            }
        }

        protected void Button1_uplodpic_Click1(object sender, EventArgs e)
        {
            if (this.FileUpload1_tupian.HasFile)
            {
                //1.获取扩展名
                string filename = this.FileUpload1_tupian.FileName;
                FileInfo fi = new FileInfo(filename);
                ///根据上传的文件名生产文件信息对象
                string kz = fi.Extension;
                //获取扩展名

                ///2 生产新名字e
                string nuwFilename = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() +
                    DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();

                //3 领存为s
                string nuwpath = Server.MapPath(".") + "\\uploadFiles\\" + nuwFilename + kz;
                this.FileUpload1_tupian.SaveAs(nuwpath);

                //在页面显示，保持服务器
                this.Image1_showSC.ImageUrl = "~\\BackManager\\uploadFiles\\" + nuwFilename + kz;
                this.Label1_msj.Text = "上传成功";
            }
        }
    }
}