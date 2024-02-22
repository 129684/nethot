using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GameSysDAL
{
    public class DBHelper
    {
        private static readonly string ConnString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        /// <summary>
        /// 执行增删改操作
        /// </summary>
        /// <param name="sql">sql语句或存储过程名称</param>
        /// <param name="commandType">命令类型</param>
        /// <param name="param">参数列表</param>
        public static bool ExecuteCommand(string sql, CommandType commandType, params SqlParameter[] param)
        {
            bool rs = false;
            using (SqlConnection conn = new SqlConnection(ConnString))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = sql;    //设置执行的命令（sql语句或存储过程名称）
                cmd.CommandType = commandType;//设置命令类型
                cmd.Connection = conn;
                if (param.Length != 0)
                {
                    cmd.Parameters.AddRange(param);
                }
                try
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();//执行命令
                    rs = true;
                }
                catch (SqlException e)
                {
                    throw e;
                }
                finally
                {
                    //释放资源
                    conn.Close();
                    cmd.Dispose();
                    cmd = null;
                }

                return rs;

            }
        }

        /// <summary>
        /// 返回第一行第一列的值
        /// </summary>
        /// <param name="sql">sql语句或存储过程名称</param>
        /// <param name="commandType">命令类型</param>
        /// <param name="param">参数列表</param>
        /// <returns>返回第一行第一列的值</returns>
        public static object GetScalar(string sql, CommandType commandType, params SqlParameter[] param)
        {
            object flag = null;
            using (SqlConnection conn = new SqlConnection(ConnString))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = sql;    //设置执行的命令（sql语句或存储过程名称）
                cmd.CommandType = commandType;//设置命令类型
                cmd.Connection = conn;
                //判断是否有参数，如有则添加到命令中
                if (param.Length != 0)
                {
                    cmd.Parameters.AddRange(param);
                }
                try
                {
                    conn.Open();
                    flag = cmd.ExecuteScalar();//执行命令,返回第一行第一列的值
                }
                catch (SqlException e)
                {
                    throw e;
                }
                finally
                {
                    //释放资源
                    conn.Close();
                    cmd.Dispose();
                    cmd = null;
                }

                return flag;

            }
        }


        public static DataTable GetDataTable(string sql, CommandType commandType, params SqlParameter[] param)
        {
            DataSet dataSet = new DataSet();


            using (SqlConnection conn = new SqlConnection(ConnString))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = sql;    //设置执行的命令（sql语句或存储过程名称）
                cmd.CommandType = commandType;//设置命令类型
                cmd.Connection = conn;
                //判断是否有参数，如有则添加到命令中
                if (param.Length != 0)
                {
                    cmd.Parameters.AddRange(param);
                }

                //设置数据适配器
                SqlDataAdapter sda = new SqlDataAdapter();
                sda.SelectCommand = cmd;


                try
                {
                    conn.Open();
                    sda.Fill(dataSet, "table");
                }
                catch (SqlException e)
                {
                    throw e;
                }
                finally
                {
                    //释放资源
                    conn.Close();
                    cmd.Dispose();
                    cmd = null;
                }

                return dataSet.Tables[0];

            }
        }

        public static SqlDataReader GetDataReader(string sql, CommandType commandType, params SqlParameter[] param)
        {
            SqlConnection conn = new SqlConnection(ConnString);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sql;    //设置执行的命令（sql语句或存储过程名称）
            cmd.CommandType = commandType;//设置命令类型
            cmd.Connection = conn;
            //判断是否有参数，如有则添加到命令中
            if (param.Length != 0)
            {
                cmd.Parameters.AddRange(param);
            }
            SqlDataReader dataReader = null;

            try
            {
                conn.Open();
                dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            }
            catch
            {
                conn.Close();
                throw;
            }
            return dataReader;

        }
    }
}
