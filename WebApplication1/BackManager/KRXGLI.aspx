<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KRXGLI.aspx.cs" Inherits="WebApplication1.BackManager.KRXGLI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <title>管理员页面</title>
<link rel="stylesheet" href="css/style.default.css" type="text/css" />
<script type="text/javascript" src="js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="js/plugins/jquery.uniform.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.flot.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.flot.resize.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.slimscroll.js"></script>
<script type="text/javascript" src="js/custom/general.js"></script>
<script type="text/javascript" src="js/custom/dashboard.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/plugins/excanvas.min.js"></script><![endif]-->
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
<body class="withvernav">
    <form id="form1" runat="server">
    
    <div class="bodywrapper">
    <div class="topheader">
        <div class="left">
            <h1 class="logo">管理<span>Admin</span></h1>
            <span class="slogan">后台管理系统</span>
            
            <div class="search">
            	<form action="" method="post">
                	
                    <button class="submitbutton"></button>
                </form>
            </div><!--search-->
            
            <br clear="all" />
            
        </div><!--left-->
        
        <div class="right">
        	<!--<div class="notification">
                <a class="count" href="ajax/notifications.html"><span>9</span></a>
        	</div>-->
            <div class="userinfo">
            	<img src="images/thumbs/avatar.png" alt="" />
                <span>管理员</span>
            </div><!--userinfo-->
            
            <div class="userinfodrop">
            	<div class="avatar">
                	<a href=""><img src="images/thumbs/avatarbig.png" alt="" /></a>
                    <div class="changetheme">
                    	切换主题: <br />
                    	<a class="default"></a>
                        <a class="blueline"></a>
                        <a class="greenline"></a>
                        <a class="contrast"></a>
                        <a class="custombg"></a>
                    </div>
                </div><!--avatar-->
                <div class="userdata">
                	<h4>Juan</h4>
                    <span class="email">youremail@yourdomain.com</span>
                    <ul>
                   
                        <li><a href="indexx1.aspx">退出</a></li>
                    </ul>
                </div><!--userdata-->
            </div><!--userinfodrop-->
        </div><!--right-->
    </div><!--topheader-->
    
    
    <div class="header">
    	<ul class="headermenu">
        	<li class="current"><a href="#"><span class="icon icon-flatscreen"></span>营业员管理</a></li>
     
        </ul>
        
       <!--headerwidget-->
        
    </div><!--header-->
    
    <div class="vernav2 iconmenu">
    	<ul>
        	<li><a href="#formsub" class="editor">营业员管理</a>
            	<span class="arrow"></span>
            	<ul id="formsub">
               		<li><a href="/BackManager/FJXinxi.aspx">营业员查询</a></li>
                    <li><a href="/BackManager/KRXGLI.aspx">营业员编辑</a></li>
                 
                </ul>
            </li>
          
        </ul>
        <a class="togglemenu"></a>
        <br /><br />
    </div><!--leftmenu-->
        
    <div class="centercontent">
    
        <div class="pageheader">
            
           
            
            <ul class="hornav">
                <li class="current"><a href="#updates">营业员编辑</a></li>
                
            </ul>
        </div><!--pageheader-->
        
        <div id="contentwrapper" class="contentwrapper">
            <asp:Button ID="Button1_tj" runat="server" Text="客人信息添加" OnClick="Button1_tj_Click" />
                         <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                            <HeaderTemplate>
                                <table cellpadding="0" cellspacing="0" border="0" class="stdtable" id="dyntable">
                                <thead>
                                <tr>                                   
                                    <th>客人编号</th>
                                    <th >姓名</th>
                                    <th >性别</th>
                                    <th >电话</th>
                                    <th >账号</th>
                                    <th >密码</th>
                                     <th >操作</th>
                                </tr>
                            </thead>
                                <tbody>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("KRXinxiID") %></td>
                                    <td><%#Eval("xingming") %></td>
                                     <td><%#Eval("sex") %></td>
                                     <td><%#Eval("dianhua") %></td>
                                     <td><%#Eval("zhanghao") %></td>
                                     <td><%#Eval("mima") %></td>
                                     <td>
                                     <asp:Button ID="Button1_ss"  CommandArgument='<%#Eval("KRXinxiID") %>' runat="server" Text="删除"   OnClick="Button1_ss_Click" />
                                         
                                     </td>
                                 
                                </tr>
                                </tbody>
                            </ItemTemplate>
                            <FooterTemplate>
                                </tbody>
                                </table>
                            </FooterTemplate>

                        </asp:Repeater>
            
            <div id="activities" class="subcontent" style="display: none;">
            	&nbsp;
            </div><!-- #activities -->
        
        </div><!--contentwrapper-->
        
        <br clear="all" />
        
	</div><!-- centercontent -->
    
    
</div><!--bodywrapper-->
  
    </form>
</body>

</html>
