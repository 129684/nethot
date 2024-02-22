using System;

using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using MODEL;

namespace BLL
{
   public  class FJLXBLL
    {
       public static DataTable selectFJLxALL()
       {
           return FJLXinfoDAL.selectFJLxALL();
       }
    }
}
