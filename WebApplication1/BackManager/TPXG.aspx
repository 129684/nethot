<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TPXG.aspx.cs" Inherits="WebApplication1.BackManager.TPXG" %>

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
                <span>管理员</span>b
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
               		<li><a href="/BackManager/FJXinxi.aspx">房间管理</a></li>
                    <li><a href="/BackManager/KRXGLI.aspx">客人信息管理</a></li>
                 
                </ul>
            </li>
          
        </ul>
        <a class="togglemenu"></a>
        <br /><br />
    </div><!--leftmenu-->
        
    <div class="centercontent">
    
        <div class="pageheader">
            
           
            
            <ul class="hornav">
                <li class="current"><a href="#">图文添加</a></li>
                
            </ul>
        </div><!--pageheader-->
        <asp:HiddenField ID="HiddenField1_id" runat="server" />
        <div id="contentwrapper" class="contentwrapper">
        	<div id="basicform" class="subcontent">
                                
                    <div class="contenttitle2">
                      
                    </div><!--contenttitle-->

               <p>
                        	<label>房间名称:</label>

                            <span class="field"><%--<input type="text" name="input1" class="smallinput" />--%>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                
                            </span>
                           
                        </p>

                        <p>
                        	<label>请选择房间图片:</label>

                            <span class="field"><%--<input type="text" name="input1" class="smallinput" />--%>
                                <asp:FileUpload ID="FileUpload1_tupian" runat="server" />
                                <asp:Label ID="Label1_msj" runat="server"></asp:Label>
                                <br />
                               &nbsp;&nbsp;
                                <br />
                                <asp:Button ID="Button1_uplodpic" runat="server" Text="上传图片"  OnClick="Button1_uplodpic_Click" />
       
                            <span class="field">
                                   <asp:Image ID="Image1_showSC" runat="server" Width="265px"  Height="143px"/>
       
                            </span>
                           
                        
                            </span>
                           
                        </p>
                        
         <br />
                 <br />
                
                 <br />
                 <br />
                 <br />
                 <br />
                  
                        <p>
                        	<label>请输入文字：</label>&nbsp; 
                            <span class="field"><%--<input type="text" name="input3" class="longinput" />--%>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="tuwen_disc" runat="server"  type="text" name="input4" class="longinput" Width="328px" Height="59px" TextMode="MultiLine"></asp:TextBox>
                            </span>
                        </p>
                        
                      
                        
                     
                        
                    <br />
                   <asp:Button ID="Button1_tpxG" CommandArgument='<%#Eval("tp") %>' runat="server" Text="修改"  OnClick ="Button1_tpxG_Click1"/>
                    
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
