<%@page import="gf.pojo.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<!-- saved from index.jsp -->
<html class="translated-ltr"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
<link href="${pageContext.request.contextPath}/statics/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${pageContext.request.contextPath}/statics/js/jquery-1.11.0.min.js"></script>
<!-- Custom Theme files -->
<link href="${pageContext.request.contextPath}/statics/css/style.css" rel="stylesheet" type="text/css" media="all">
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }>
</script>
<meta name="keywords" content="Agrom Responsive web template, Bootstrap Web Templates, Flat Web Templates, AndriodCompatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design">
<!--Google Fonts-->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/move-top.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/easing.js"></script>
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
</script>
<!-- //end-smoth-scrolling -->
<script src="${pageContext.request.contextPath}/statics/js/menu_jquery.js"></script>

<!---pop-up-box---->
					<link href="${pageContext.request.contextPath}/statics/css/popuo-box.css" rel="stylesheet" type="text/css" media="all">
					<script src="${pageContext.request.contextPath}/statics/js/jquery.magnific-popup.js" type="text/javascript"></script>
					<!---//pop-up-box---->
					 <script>
						$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type: 'inline',
							fixedContentPos: false,
							fixedBgPos: true,
							overflowY: 'auto',
							closeBtnInside: true,
							preloader: false,
							midClick: true,
							removalDelay: 300,
							mainClass: 'my-mfp-zoom-in'
						});
																						
						});
				</script>		
<link type="text/css" rel="stylesheet" charset="UTF-8" href="${pageContext.request.contextPath}./Home_files/translateelement.css"></head>
<body>
<!--header start here-->
<div class="header">
	<div class="container">
		<div class="header-main">
			   <div class="head-left">
				   
				   	<div class="search">		
			              <a class="play-icon popup-with-zoom-anim" href="${pageContext.request.contextPath}/index.jsp#small-dialog"><i> </i></a>
		            </div>
				     <div id="small-dialog" class="mfp-hide">
					<div class="search-top">
							<div class="login">
								<input type="submit" value="">
								<input type="text" value="Search Here..." onfocus="this.value = &#39;&#39;;" onblur="if (this.value == &#39;&#39;) {this.value = &#39;&#39;;}">		
							</div>
							<p>Agrom</p>
						</div>				
					</div>
	        <!---->
	              <div class="clearfix"> </div>
                </div>
			   <div class="header-right">
				   <div class="logo">
				   	   <h1><a href="${pageContext.request.contextPath}/index.jsp"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">阿格罗姆</font></font></a></h1>
				   </div>
			
		    <div class="clearfix"> </div>
	     </div>
	     <div class="clearfix"> </div>
     </div>
   </div>
</div>
<!--header end here-->
<!--top nav start here-->
<div class="top-navg-main">
	<div class="container">
	    <div class="top-navg">
	    	           <span class="menu"> <img src="${pageContext.request.contextPath}/statics/images/icon.png" alt=""></span>
				<ul class="res">
				    <li><a href="${pageContext.request.contextPath}/view_index" class="active hvr-sweep-to-bottom"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">首页</font></font></a></li> 
				    

					<li><a class="hvr-sweep-to-bottom" href="${pageContext.request.contextPath}/view_cag"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">商品</font></font></a></li> 
			 
				 </ul>
					<!-- script-for-menu -->
						 <script>
						   $( "span.menu" ).click(function() {
							 $( "ul.res" ).slideToggle( 300, function() {
							 // Animation complete.
							  });
							 });
						</script>
		        <!-- /script-for-menu -->
		   </div>
	 </div>
</div>
<!--top nav end here-->
<div class="copyrights">Collect from <a href="http://www.moobnn.com/">模板在线</a> <a href="http://guantaow.taobao.com/" target="_blank">厚朴网络 淘宝店</a></div>
<!--banner start here-->
<div class="banner">
	<div class="container">
		<div class="banner-main">
		          <h3><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">生态果蔬</font></font></h3>
		          <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">天然绿色、营养丰富、有益健康</font></font></p>

		     <div class="clearfix"> </div>	
		</div>
	</div>
</div>
<!--banner end here-->
<!--bann-info start here-->
<div class="bann-info">
	<div class="container">
		<div class="bann-info-main">
			    <div class="col-md-3 bann-grid">
			    	<div class="agro-grain"><span class="glyphicon glyphicon-grain" aria-hidden="true"> </span></div>
			    </div>
			    <div class="col-md-6 bann-grid">
			    	<h6><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">优势</font></font></h6>
			    	<h3><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">从种子到餐桌都是最好的</font></font></h3>
			    	<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">精选优良品种通过科学育种、育苗，采用有机生态栽培、物理贮存保鲜等现代农业技术，提升果蔬品质，使果蔬产品回归自然生态</font></font></p>
			    
			    </div>
			    <div class="col-md-3 bann-grid">
			    	<img src="${pageContext.request.contextPath}/statics/images/cucumber.jpg" alt="" class="img-responsive">
 			    </div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!--bann info end here-->
<!--wedo start here-->
<div class="we-do">
	<div class="container">
		<div class="wedo-main">
			<div class="col-md-4 wedo-grid">
				<span class="glyphicon glyphicon-leaf" aria-hidden="true"> </span>
				<h3><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">“四位一体”生态模式</font></font></h3>
				<h4><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">自然调控与人工调控相结合</font></font></h4>
				<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> 可再生能源(沼气、太阳能)、保护地“四位一体”生态模式栽培(大棚蔬菜)、日光温室养猪及厕所等4个因子</font></font></p>
	
			</div>
			<div class="col-md-4 wedo-grid">
				<span class="glyphicon glyphicon-user" aria-hidden="true"> </span>
				<h3><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">资源高效利用</font></font></h3>
				<h4><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">依据生态学、生物学、经济学、系统工程学原理</font></font></h4>
				<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">通过生物转换技术，在同地块土地上将节能日光温室、沼气池、畜禽舍、蔬菜生产等有机地结合在一起</font></font></p>
					<a href="${pageContext.request.contextPath}/statics/single.html"><span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true"> </span></a>
			</div>
			<div class="col-md-4 wedo-grid">
				<span class="glyphicon glyphicon-eye-open" aria-hidden="true"> </span>
				<h3><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">变废为宝 </font></font></h3>
				<h4><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">提供能源与肥料，改善生态环境等综合效益</font></font></h4>
				<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">为促进高产高效的优质农业和无公害绿色食品生产开创了一条有效的途径。  </font></font></p>

			</div>
		  <div class="clearfix"> </div>	
	   </div>
   </div>
</div>
<!--we do end here-->
<!--agrom strip start here-->
<div class="agro-strip">
	<div class="container">
		<div class="agro-strip-main">
			<h3><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">坚持生态农业发展之路</font></font></h3>
			<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">.蔬菜是矿物质来源，含有钙、铁、铜等矿物质，其中钙是婴儿骨骼和牙齿发育的主要物质，还能预防和治疗佝偻病;铁和铜可以促进血红蛋白的合成</font></font></p>
			
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!--agrom strip end here-->
<!--latest-news start here-->
<div class="latest-new">
	<div class="container">
		<div class="latest-news-main">

		
		</div>
	</div>
</div>
<!--latest news end here-->
<!--footer start here-->
<div class="footer">
	<div class="container">
		<div class="footer-main">
			  <div class="col-md-4 ftr-grd">
			  	 <h3><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">保持联系</font></font></h3>
			  	 <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">ibero路8901号</font></font></p>
			  	 <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">空闲时间</font></font></p>
			  	 <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">电话：+148 5746 415</font></font></p>
			  </div>
			  <div class="col-md-4 ftr-grd">
			  	 <h3><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">跟着我们</font></font></h3>
			  	 <ul>
			  	 	<li><a href="${pageContext.request.contextPath}/index.jsp#"><span class="fa"> </span></a></li>
			  	 	<li><a href="${pageContext.request.contextPath}/index.jsp#"><span class="tw"> </span></a></li>
			  	 	<li><a href="${pageContext.request.contextPath}//index.jsp#"><span class="g"> </span></a></li>
			  	 	<li><a href="${pageContext.request.contextPath}/index.jsp#"><span class="in"> </span></a></li>
			  	 </ul>
			  </div>
			  <div class="col-md-4 ftr-grd">
			  	 <h3>Join Our Newsletter</h3>
			  	 <p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus </p>
			  	<label class="hvr-wobble-bottom"> <input type="submit" value="Send"></label>
			  </div>
			
	</div>
</div>
<!--//footer--><div id="goog-gt-tt" class="skiptranslate" dir="ltr"><div style="padding: 8px;"><div><div class="logo"><img src="./Home_files/translate_24dp.png" width="20" height="20" alt="Google 翻译"></div></div></div><div class="top" style="padding: 8px; float: left; width: 100%;"><h1 class="title gray">原文</h1></div><div class="middle" style="padding: 8px;"><div class="original-text"></div></div><div class="bottom" style="padding: 8px;"><div class="activity-links"><span class="activity-link">提供更好的翻译建议</span><span class="activity-link"></span></div><div class="started-activity-container"><hr style="color: #CCC; background-color: #CCC; height: 1px; border: none;"><div class="activity-root"></div></div></div><div class="status-message" style="display: none;"></div></div> 

<div class="goog-te-spinner-pos"><div class="goog-te-spinner-animation"><svg xmlns="http://www.w3.org/2000/svg" class="goog-te-spinner" width="96px" height="96px" viewBox="0 0 66 66"><circle class="goog-te-spinner-path" fill="none" stroke-width="6" stroke-linecap="round" cx="33" cy="33" r="30"></circle></svg></div></div></body></html>