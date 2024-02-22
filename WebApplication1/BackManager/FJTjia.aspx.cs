using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;


namespace WebApplication1.BackManager
{
    public partial class FJTjia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if(!IsPostBack)
           {
               BindData();
           }
        }

        private void BindData()
        {
            DataTable dt = FJLXBLL.selectFJLxALL();
              
           
        }


    
    }
}