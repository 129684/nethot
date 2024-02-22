<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="YyeTJY.aspx.cs" Inherits="WebApplication1.BackManager.YyeTJY" %>

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
            	</div>
                	
                    <button class="submitbutton"></button>
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
               		<li><a href="/BackManager/GganL.aspx">营业员查询</a></li>
                    <li><a href="/BackManager/GLYbianji.aspx">营业员编辑</a></li>
                 
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
        	<div id="basicform" class="subcontent">
                                
                    <div class="contenttitle2">
                        <h3>营业员添加</h3>
                    </div><!--contenttitle-->

                        <p>
                        	&nbsp;&nbsp;<label>营业员姓名:</label>
                            <span class="field"><%--<input type="text" name="input1" class="smallinput" />--%>
               <asp:TextBox ID="Yname" runat="server" type="text" name="input1" class="smallinput" Width="161px"></asp:TextBox>
                            </span>
                           
                        </p>
                        
                        <p>
                        	&nbsp;<label> 性别:</label>

                            <span class="field"><%--<input type="text" name="input2" class="mediuminput" />--%>
                               &nbsp;&nbsp; <asp:DropDownList ID="DropDownList1_sex" runat="server" Width="50px" >
                                    <asp:ListItem Selected="True">男</asp:ListItem>
                                    <asp:ListItem>女</asp:ListItem>
                            </asp:DropDownList>
                            </span>
                        </p>
                        
                        <p>
                        	&nbsp;<label>年龄:</label>
                            <span class="field"><%--<input type="text" name="input3" class="longinput" />--%>
                                <asp:TextBox ID="Yage" runat="server" type="text" name="input3" class="longinput" Width="82px" ></asp:TextBox>
                            </span>
                        </p>
                        
                        <p>
                        	&nbsp;<label>账号:</label>&nbsp; 
                            <span class="field"><%--<input type="text" name="input3" class="longinput" />--%>
                                <asp:TextBox ID="Yzhanghao" runat="server"  type="text" name="input4" class="longinput" Width="269px"></asp:TextBox>
                            </span>
                        </p>
                        
                      
                        
                        <p>
                        	&nbsp;<label>密码:</label> <span class="field">
                                <asp:TextBox ID="Ymima" runat="server"  type="text" name="input5" class="longinput" Width="269px"></asp:TextBox>
                            </span></p>
                        
                      
                        
                       
                        
                        <p class="stdformbutton">
                        	<%--<button class="submit radius2">Submit Button</button>--%>
                            <asp:Button ID="YTJiaTTT" runat="server" Text="添加" class="submit radius2" OnClick="YTJiaTTT_Click"/>
                           
                        </p>
                        
                        
                    <br />
                    
					<!--contenttitle-->
                    
					
					
                    <br />

            </div><!--subcontent-->
           
        	
                         
            
            <div id="activities" class="subcontent" style="display: none;">
            	&nbsp;
            </div><!-- #activities -->
        
        </div><!--contentwrapper-->
        
        <br clear="all" />
        
	</div>
    </form>
    <!-- centercontent -->
    
    
</div><!--bodywrapper-->
  
    </form>
</body>
</html>
