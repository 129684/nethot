<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="indexx1.aspx.cs" Inherits="WebApplication1.indexx1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>天香酒店</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.11.0.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link href="css/style1.css" rel="stylesheet" type="text/css" media="all" />	
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
<script src="js/modernizr.js"></script>
<script>
    $(document).ready(function () {
        if (Modernizr.touch) {
            // show the close overlay button
            $(".close-overlay").removeClass("hidden");
            // handle the adding of hover class when clicked
            $(".branch-gd").click(function (e) {
                if (!$(this).hasClass("hover")) {
                    $(this).addClass("hover");
                }
            });
            // handle the closing of the overlay
            $(".close-overlay").click(function (e) {
                e.preventDefault();
                e.stopPropagation();
                if ($(this).closest(".branch-gd").hasClass("hover")) {
                    $(this).closest(".branch-gd").removeClass("hover");
                }
            });
        } else {
            // handle the mouseenter functionality
            $(".branch-gd").mouseenter(function () {
                $(this).addClass("hover");
            })
            // handle the mouseleave functionality
            .mouseleave(function () {
                $(this).removeClass("hover");
            });
        }
    });
</script>
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
					<li><span class="phone"> </span> <h6>17633818639</h6></li>
					<li><span class="email"> </span><h6><a href="mailto:info@example.com">626927849@qq.com</a></h6></li>
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
			               
			              </div>
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
<!--banner  start hwew-->
<div class="banner">
	<div class="container">
		<div class="banner-main wow zoomIn" data-wow-delay="0.3s">
			<h2>天香酒店，您的港湾</h2>
			<h6>您旅途劳顿吗？</h6>
			<p>您如果旅途劳顿，这里将是您稍作歇息的落脚点。在这里您将享受舒适房间，优质的服务和各种美食！</p>
		</div>
    </div>
</div>
<!--BANNER END HERE-->
<!--information start here-->
<div class="information">
	<div class="container">
		<div class="information-main">
			  <div class="information-grid five-star wow slideInLeft" data-wow-delay="0.3s">
			  	<div class="col-md-4 hotel-info">
			  		<div class="info-left">
			  			<img src="images/s1.png" alt="">
			  		</div>
			  		<div class="info-right">
			  			<h4>五星环境</h4>
			  			<p>这是一个拥有五星级环境的美丽酒店，让人留恋忘返。</p>
			  		</div>
			  	  <div class="clearfix"> </div>
			  	</div>
			  	<div class="col-md-4 hotel-info">
			  		<div class="info-left">
			  			<img src="images/s2.png" alt="">
			  		</div>
			  		<div class="info-right">
			  			<h4>优质的服务</h4>
			  			<p>随叫随到的服务员，能时刻对您进行服务。</p>
			  		</div>
			  	  <div class="clearfix"> </div>
			  	</div>
			  	<div class="col-md-4 hotel-info">
			  		<div class="info-left">
			  			<img src="images/s4.png" alt="">
			  		</div>
			  		<div class="info-right">
			  			<h4>舒适的房间</h4>
			  			<p>房间的舒适度于温馨程度，会让您感觉这就是家。</p>
			  		</div>
			  	  <div class="clearfix"> </div>
			  	</div>
			  	<div class="clearfix"> </div>
			  </div>
			  <div class="information-grid wow slideInRight" data-wow-delay="0.3s">
			  	<div class="col-md-4 hotel-info">
			  		<div class="info-left">
			  			<img src="images/s3.png" alt="">
			  		</div>
			  		<div class="info-right">
			  			<h4>食物</h4>
			  			<p>这里的食物很美味哦，各种大厨各种风味。</p>
			  		</div>
			  	  <div class="clearfix"> </div>
			  	</div>
			  	<div class="col-md-4 hotel-info">
			  		<div class="info-left">
			  			<img src="images/s5.png" alt="">
			  		</div>
			  		<div class="info-right">
			  			<h4>景色</h4>
			  			<p>透过窗就能看到优良的环境，不论是青翠的树木还是干净整洁的环境。这些都能让您心情舒畅，宾至如归。</p>
			  		</div>
			  	  <div class="clearfix"> </div>
			  	</div>
			  	<div class="col-md-4 hotel-info">
			  		<div class="info-left">
			  			<img src="images/s6.png" alt="">
			  		</div>
			  		<div class="info-right">
			  			<h4>还是服务</h4>
			  			<p>请记住，在酒店有任何问题我们随叫随到。服务周到，包您满意。</p>
			  		</div>
			  	  <div class="clearfix"> </div>
			  	</div>
			  	<div class="clearfix"> </div>
			  </div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!--information end here-->
<!--leaves start here-->

<!--leaves end here-->
<!--branches start here-->
<div class="branches">
		<div class="branches-main wow zoomIn" data-wow-delay="0.3s">
			<div class="branches-top">
				<h3>酒店装潢</h3>
			</div>
			<div  id="effect-5" class="branch-btm">
				<div  class="col-md-3 branch-gd-main" >					
					<div class="branch-gd  no-mar"> <a href="room.html">
						<img src="images/b6.jpg" alt="" class="img-responsive">
						<div class="overlay">
		                    <span class="expand lardge">+</span>
		                    <span class="close-overlay hidden">x</span>
	                   </div></a>
                    </div>                 
				</div>				
				<div class="col-md-3 branch-gd-main">
					<div class="branch-gd went-branc"><a href="room.html">
						<img src="images/b1.jpg" alt="" class="img-responsive">
						<div class="overlay">
		                    <span class="expand">+</span>
		                    <span class="close-overlay hidden">x</span>
	                   </div></a>
					</div>
					<div class="branch-gd went-branc"><a href="room.html">
						<img src="images/b2.jpg" alt="" class="img-responsive">
						<div class="overlay">
		                    <span class="expand">+</span>
		                    <span class="close-overlay hidden">x</span>
	                 </div></a>
					</div>
				</div>
				<div class="col-md-3 branch-gd-main">
					<div class="branch-gd"><a href="room.html">
						<img src="images/b3.jpg" alt="" class="img-responsive">
						<div class="overlay">
		                    <span class="expand">+</span>
		                    <span class="close-overlay hidden">x</span>
	                 </div></a>
					</div>
					<div class="branch-gd"><a href="room.html">
						<img src="images/b4.jpg" alt="" class="img-responsive">
						<div class="overlay">
		                    <span class="expand">+</span>
		                    <span class="close-overlay hidden">x</span>
	                 </div></a>
					</div>
				</div>
				<div class="col-md-3 branch-gd-main">
				  <div class="branch-gd went-branc2"><a href="room.html">
					<img src="images/b5.jpg" alt="" class="img-responsive">
					<div class="overlay">
		                    <span class="expand lardge">+</span>
		                    <span class="close-overlay hidden">x</span>
	                   </div></a>
                  </div>
				</div>
			</div>
		  <div class="clearfix"> </div>
		</div>
</div>
<!--branches end here-->

<!--swiming-->

<!--swimmg emd here-->
<!--homegrids start here-->
<div class="home-block">
	<div class="container">
		<div class="home-main">
			<div class="home-top">
				<h3>房间样式</h3>
			</div>
			<div class="home-bottom  wow bounceInLeft" data-wow-delay="0.3s">
				<div class="col-md-4 home-grid">
					<div class="item item-type-move">
						<a class="item-hover" href="single.html">						
							<div class="item-info">
								<div class="headline">
									Our Rooms
									<div class="line"> </div>
								</div>
								<div class="date">February 29, 2016</div>							
							</div>
							<div class="mask"> </div>
					    </a>
						<div class="item-img">
								<img src="images/b7.jpg" class="img-responsive" alt="">
						</div>
					</div>

				</div>
				<div class="col-md-4 home-grid">
					<div class="item item-type-move">
						<a class="item-hover" href="single.html">						
							<div class="item-info">
								<div class="headline">
									Our Rooms
									<div class="line"> </div>
								</div>
								<div class="date">February 29, 2016</div>							
							</div>
							<div class="mask"> </div>
					    </a>
						<div class="item-img">
								<img src="images/b8.jpg" class="img-responsive" alt="">
						</div>
					</div>
				</div>
				<div class="col-md-4 home-grid">
					<div class="item item-type-move">
						<a class="item-hover" href="single.html">						
							<div class="item-info">
								<div class="headline">
									Our Rooms
									<div class="line"> </div>
								</div>
								<div class="date">February 29, 2016</div>							
							</div>
							<div class="mask"> </div>
					    </a>
						<div class="item-img">
								<img src="images/b9.jpg" class="img-responsive" alt="">
						</div>
					</div>
				</div>
			  <div class="clearfix"> </div>
			</div>
		  <div class="clearfix"> </div>
		</div>
	</div>
</div>
<!--home grid end here-->
<!--footer start here-->

<!--footer end here-->
<!--copy rights start here-->
<div class="copy-right">
	<div class="container">
		 <div class="copy-rights-main wow zoomIn" data-wow-delay="0.3s">
    	    <p>有限公司</p>
    	 </div>
    </div>
</div>
    </form>
</body>
</html>
