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
   public  class KRBLL
    {
        public static DataTable selectKRXXALL()
        {

            return KRXINXIDAL.selectKRXINXIGALL();
        }

        public static KRModel selectByGameID(string gameid)
        {
            DataTable dt = selectKRXXALL();
            foreach (DataRow item in dt.Rows)
            {
                if (item["KRXinxiID"].ToString() == gameid)
                {
                   KRModel game = new KRModel();
                   game.KRXinxiID = int.Parse(item["KRXinxiID"].ToString());
                   game.xingming = item["xingming"].ToString();
                   game.sex = item["sex"].ToString();
                   game.dianhua = item["dianhua"].ToString();
                   game.zhanghao = item["zhanghao"].ToString();
                   game.mima = item["mima"].ToString();
                    return game;
                }
            }
            return null;
        }

        public static bool AddKRINNFO(KRModel game)
        {
            return KRXINXIDAL.AddKRXINTJ(game);
        }

        public static bool DeleteKRSC(string KRXinxiID)
        {
            return KRXINXIDAL.DeleteGameInfo(KRXinxiID);
        }
    }
}
