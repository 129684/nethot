using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using System.Data;

namespace BLL
{
   public  class YingYeBLL
    {
        public static DataTable selectYingYeALL()
        {

            return YingYeDAL.selectYyeYuanALL();
        }

        public static bool SelectUserPwd(string username, string pwd)
        {
            DataTable adminDt = selectYingYeALL();
            foreach (DataRow item in adminDt.Rows)
            {
                if (item["Yzhanghao"].ToString() == username && item["Ymima"].ToString() == pwd)
                {
                    return true;
                }
            }

            return false;
        }
    }
}
