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
    public partial class TPXG : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               this.HiddenField1_id.Value= Request["gameId"].ToString();

                //根据编号查询
               TWZSModel game = TUWenBLL.selectByGameID(this.HiddenField1_id.Value);

                //将数据最新 
               this.TextBox1.Text = game.tpnaem;
               this.Image1_showSC.ImageUrl = game.tp;
               this.tuwen_disc.Text = game.wenzi;
            }
        }



        protected void Button1_tpxG_Click1(object sender, EventArgs e)
        {

            //1.获取修改后的最新数据
            TWZSModel update = new TWZSModel();
            update.tpnaem = this.TextBox1.Text;
            update.tp = this.Image1_showSC.ImageUrl;
            update.wenzi = this.tuwen_disc.Text;

            update.tpID = int.Parse(this.HiddenField1_id.Value);
            //将最新的数据更新到DB 
            bool issucc = TUWenBLL.updateTW(update);
            if (issucc)
            {
                Response.Redirect("TPCK.aspx");
            }
        }

        protected void Button1_uplodpic_Click(object sender, EventArgs e)
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