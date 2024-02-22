using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using System.Data;

namespace BLL
{
    public  class KRdelBLL
    {
        public static DataTable selectKRxinxiALL()
        {

            return KRDAL.selectKRxinxiALL();
        }

        public static bool SelectUserPwd(string username, string pwd)
        {
            DataTable adminDt = selectKRxinxiALL();
            foreach (DataRow item in adminDt.Rows)
            {
                if (item["zhanghao"].ToString() == username && item["mima"].ToString() == pwd)
                {
                    return true;
                }
            }

            return false;
        }

    }
}
