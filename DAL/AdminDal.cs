using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using GameSysDAL;

namespace DAL
{
    public class AdminDal
    {
        public static DataTable selectGuanLiYuanALL()
        {
            string sql = "SELECT  [GLUid]" + ",[Username]" +" ,[Pwd]" + "FROM [JiuDianS].[dbo].[GuanLiYuan]";

            DataTable dt = DBHelper.GetDataTable(sql, CommandType.Text, new System.Data
                .SqlClient.SqlParameter[]{});
            return dt;
        }

       
    }
}
