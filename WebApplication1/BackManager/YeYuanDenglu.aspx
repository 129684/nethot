<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="YeYuanDenglu.aspx.cs" Inherits="WebApplication1.BackManager.YeYuanDenglu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>天香酒营业员登录页面</title>
<link rel="stylesheet" href="css/style.default.css" type="text/css" />
<script type="text/javascript" src="js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="js/plugins/jquery.uniform.min.js"></script>
<script type="text/javascript" src="js/custom/general.js"></script>
<script type="text/javascript" src="js/custom/index.js"></script>
<!--[if IE 9]>
    <link rel="stylesheet" media="screen" href="css/style.ie9.css"/>
<![endif]-->
<!--[if IE 8]>
    <link rel="stylesheet" media="screen" href="css/style.ie8.css"/>
<![endif]-->
<!--[if lt IE 9]>
	<script src="js/plugins/css3-mediaqueries.js"></script>
<![endif]-->
</head>
<body class="loginpage">
	<div class="loginbox">
    	<div class="loginboxinner">
        	
            <div class="logo">
            	<h1 class="logo">天香酒店<span>营业员                                                                                                                                                                        </span></h1>
				<span class="slogan">后台管理系统</span>
            </div><!--logo-->
             
            <br clear="all" /><br />
            
            <div class="nousername">
				<div class="loginmsg">密码不正确.</div>
            </div><!--nousername-->
            
            <div class="nopassword">
				<div class="loginmsg">密码不正确.</div>
                <div class="loginf">
                    <div class="thumb"><img alt="" src="images/thumbs/avatar1.png" /></div>
                    <div class="userlogged">
                        <h4></h4>
                        <a href="index.html">Not <span></span>?</a> 
                    </div>
                </div><!--loginf-->
            </div><!--nopassword-->
            
            <form  id="login" method="post" runat="server">
            	
                <div class="username">
                	<div class="usernameinner">
                    	<%--<input type="text" name="username" id="username" />--%>
                        <asp:TextBox ID="usernameS" runat="server"  type="text" name="username" ></asp:TextBox>
                    </div>
                </div>
                
                <div class="password">
                	<div class="passwordinner">
                    	<%--<input type="password" name="password" id="password" />--%>
                        <asp:TextBox ID="passwordS" runat="server" type="password" name="password"></asp:TextBox>
                    </div>
                </div>
                
                <%--<button>登录
                     <a href="doshboard.aspx"></a>
                </button>--%>
                <asp:Button ID="Button1_YE" runat="server" Text="登录"   OnClick ="Button1_YE_Click" Width="260px"/> 
                <div class="keep"><input type="checkbox" /> 记住密码</div>
            
            </form>
            
        </div><!--loginboxinner-->
    </div><!--loginbox-->


</body>
</html>
