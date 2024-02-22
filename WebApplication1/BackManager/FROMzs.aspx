<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FROMzs.aspx.cs" Inherits="WebApplication1.BackManager.FROMzs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <title>房间展示</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.11.0.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--Google Fonts-->
<link href='http://fonts.googleapis.com/css?family=Hind:400,300' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Aladin' rel='stylesheet' type='text/css'>
<!--google fonts-->
<!-- animated-css -->
		<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
		<script src="js/wow.min.js"></script>
		<script>
		    new WOW().init();

		</script>
<!-- animated-css -->
<script src="js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
   <div class="top-header">
	<div class="container">
		<div class="top-header-main">
			<div class="col-md-4 top-social wow bounceInLeft" data-wow-delay="0.3s">
			    <ul>
			    	<li><h5>天香酒店</h5></li>
			
			    </ul>
			</div>
			<div class="col-md-8 header-address wow bounceInRight" data-wow-delay="0.3s">
				<ul>
					<li><span class="phone"> </span> <h6>17638268936</h6></li>
					<li><span class="email"> </span><h6><a href="#">3138316502</a></h6></li>
				</ul>
			</div>
		  <div class="clearfix"> </div>
		</div>
	</div>
</div>
<!--header-top end here-->
<!--header start here-->
	<!-- NAVBAR
		================================================== -->
<div class="header">
	<div class="fixed-header">	

		    <div class="navbar-wrapper">
		      <div class="container">
		        <nav class="navbar navbar-inverse navbar-static-top">
		             <div class="navbar-header">
			              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
			                <span class="sr-only">Toggle navigation</span>
			                <span class="icon-bar"></span>
			                <span class="icon-bar"></span>
			                <span class="icon-bar"></span>
			              </button>
			              <div class="logo wow slideInLeft" data-wow-delay="0.3s">
			                    &nbsp;</div>
			          </div>
		            <div id="navbar" class="navbar-collapse collapse">
		            <nav class="cl-effect-16" id="cl-effect-16">
		              <ul class="nav navbar-nav">
		          <li><a class="active" href="indexx1.aspx" data-hover="主页">主页</a></li>
		                
						<li><a href="FROMzs.aspx" data-hover="房间展示">房间展示</a></li>
						<li><a href="KRdel.aspx" data-hover="客户登录">客户登录</a></li>
						<li><a href="YeYuanDenglu.aspx" data-hover="营业员">营业员</a></li>
						<li><a href="index.aspx" data-hover="管理员">管理员</a></li>					
		              </ul>
		            </nav>

		            </div>
		            <div class="clearfix"> </div>
		             </nav>
		          </div>
		           <div class="clearfix"> </div>
		    </div>
	 </div>
</div>
<!--header end here-->
<!--room start here-->
<div class="rooms">
     <h3>房间展示</h3>
	<div class="container">
       
		<div class="rooms-main">
			 <div class="oom-head">
			 	
			 </div>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="rooms-left wow slideInLeft" data-wow-delay="0.3s">
				 	<div class="col-md-4 rooms-text">
				 		<h2><a href="#"><%#Eval("tpnaem") %></a></h2>
                         
				 		<p><%#Eval("wenzi") %></p>
				 	    <div class="room-btn">
				 	     	
				 	    </div>		 	    
				 	</div>
				 	<div class="col-md-8 rooms-img">
				 		<div class="luxury-block">
				 		 <a href="#">
                              
                              <%-- <img src='<%#Eval("tp") %>' alt="" class="img-responsive">--%></a>		
                             <asp:Image ID="Image1" runat="server" class="img-responsive"  ImageUrl='<%#Eval("tp") %>'  Width="500px" Height="440px"/>
						</div>
				 	</div>				 
				  <div class="clearfix"> </div>
			    </div>



                    
                </ItemTemplate>
            </asp:Repeater>
			 <div class="rooms-top">
               

			    


			     
			 </div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!--gallery start here-->
<div class="gallery" id="gallery">
	<div class="container">
	  <div class="gallery-main wow zoomIn" data-wow-delay="0.3s">
	  	<div class="gallery-top">
	  		<h1>房间展示</h1>
	  	</div>
		<div class="gallery-bott">
			<div class="col-md-4 col1 gallery-grid">
				<a href="images/r3.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">

						<figure class="effect-bubba">
							<img class="img-responsive" src="images/r3.jpg" alt="">
							<figcaption>
								<h4 class="gal"> 大床房</h4>
								<p class="gal1">干净舒适，阳光明媚</p>	
							</figcaption>			
						</figure>
					</a>
					</div>
					<div class="col-md-4 col1 gallery-grid">
						<a href="images/r4.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
						<figure class="effect-bubba">
							<img class="img-responsive" src="images/r4.jpg" alt="">
							<figcaption>
								<h4 class="gal"> 大床房</h4>
								<p class="gal1">干净舒适，阳光明媚</p>	
							</figcaption>			
						</figure>
						</a>
					</div>
					<div class="col-md-4 col1 gallery-grid">
						<a href="images/r5.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
						<figure class="effect-bubba">
							<img class="img-responsive" src="images/r5.jpg" alt="">
							<figcaption>
								<h4 class="gal"> 商务房</h4>
								<p class="gal1">简单整洁，休息居所。</p>	
							</figcaption>			
						</figure>
						</a>
					</div>
			     <div class="col-md-4 col1 gallery-grid">
				  <a href="images/r6.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
						<figure class="effect-bubba">
							<img class="img-responsive" src="images/r6.jpg" alt="">
							<figcaption>
								<h4 class="gal"> 情侣房</h4>
								<p class="gal1">干净舒适，柔软舒适。</p>	
							</figcaption>			
						</figure>
					</a>
					</div>
					<div class="col-md-4 col1 gallery-grid">
						<a href="images/r7.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
						<figure class="effect-bubba">
							<img class="img-responsive" src="images/r7.jpg" alt="">
							<figcaption>
								<h4 class="gal"> 情侣房</h4>
								<p class="gal1">干净舒适，柔软舒适。</p>	
							</figcaption>			
						</figure>
						</a>
					</div>
					<div class="col-md-4 col1 gallery-grid">
						<a href="images/r8.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
						<figure class="effect-bubba">
							<img class="img-responsive" src="images/r8.jpg" alt="">
							<figcaption>
									<h4 class="gal"> 情侣房</h4>
								<p class="gal1">干净舒适，柔软舒适。</p>	
							</figcaption>			
						</figure>
						</a>
					</div>
			     <div class="clearfix"> </div>
			</div>
		</div>
	</div>
</div>
<!--gallery end here-->
<script src="js/jquery.chocolat.js"></script>
		<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen" charset="utf-8">
		<!--light-box-files -->
		<script type="text/javascript" charset="utf-8">
		    $(function () {
		        $('.gallery-grid a').Chocolat();
		    });
		</script>

<!--room end here-->
<!--footer start here-->

<div class="copy-right">
	<div class="container">
		 <div class="copy-rights-main wow zoomIn" data-wow-delay="0.3s">
    	    <p>1706马到成功</p>
    	 </div>
    </div>
</div>
    </form>
</body>
</html>
