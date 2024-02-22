using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public class AdminBll
    {
        public static DataTable selectGuanLiYuanALL()
        {
            return AdminDal.selectGuanLiYuanALL();
            
        }

        public static bool SelectUserPwd(string username, string pwd)
        {
            DataTable adminDt = selectGuanLiYuanALL();
            foreach (DataRow item in adminDt.Rows)
            {
                if (item["Username"].ToString() == username && item["Pwd"].ToString()== pwd)
                {
                    return true;
                }
            }

            return false;
        }
    }
}
