<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<!-- saved from gallery.jsp -->
<html class="translated-ltr"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品</title>
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
			              <a class="play-icon popup-with-zoom-anim" href="${pageContext.request.contextPath}/gallery.jsp#small-dialog"><i> </i></a>
		            </div>
				     <div id="small-dialog" class="mfp-hide">
					<div class="search-top">
							<div class="login">
								<input type="submit" value="">
								<input type="text" value="Search Here..." onfocus="this.value = &#39;&#39;;" onblur="if (this.value == &#39;&#39;) {this.value = &#39;&#39;;}">		
							</div>
							<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">阿格罗姆</font></font></p>
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
<!--banner start here-->
<div class="banner-two">
</div>
<!--banner end here-->
<!--gallery start here-->
<div class="gallery">
	<div class="container">
		<div class="gallery-top">
			<h3><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">商品</font></font></h3>
		
		</div>
		<div class="gallery-bottom">
				<div class="col-md-4 gallery-grid">
					<div class="project-eff">
						<div id="nivo-lightbox-demo"> <p> <a href="${pageContext.request.contextPath}/statics/images/g1.jpg" data-lightbox-gallery="gallery1" id="nivo-lightbox-demo"> <span class="rollover1"> </span></a> </p></div>     
							<img class="img-responsive" src="${pageContext.request.contextPath}/statics/images/g1.jpg" alt="">
					</div>
				</div>
				<div class="col-md-4 gallery-grid">
					<div class="project-eff">
						<div id="nivo-lightbox-demo"> <p> <a href="${pageContext.request.contextPath}/statics/images/g2.jpg" data-lightbox-gallery="gallery1" id="nivo-lightbox-demo"> <span class="rollover1"> </span></a> </p></div>     
							<img class="img-responsive" src="${pageContext.request.contextPath}/statics/images/g2.jpg" alt="">
					</div>
				</div>
				<div class="col-md-4 gallery-grid">
					<div class="project-eff">
						<div id="nivo-lightbox-demo"> <p> <a href="${pageContext.request.contextPath}/statics/images/g3.jpg" data-lightbox-gallery="gallery1" id="nivo-lightbox-demo"> <span class="rollover1"> </span></a> </p></div>     
							<img class="img-responsive" src="${pageContext.request.contextPath}/statics/images/g3.jpg" alt="">
					</div>
				</div>
                <div class="col-md-4 gallery-grid">
					<div class="project-eff">
						<div id="nivo-lightbox-demo"> <p> <a href="${pageContext.request.contextPath}/statics/images/g4.jpg" data-lightbox-gallery="gallery1" id="nivo-lightbox-demo"> <span class="rollover1"> </span></a> </p></div>     
							<img class="img-responsive" src="${pageContext.request.contextPath}/statics/images/g4.jpg" alt="">
					</div>
				</div>
				<div class="col-md-4 gallery-grid">
					<div class="project-eff">
						<div id="nivo-lightbox-demo"> <p> <a href="${pageContext.request.contextPath}/statics/images/g5.jpg" data-lightbox-gallery="gallery1" id="nivo-lightbox-demo"> <span class="rollover1"> </span></a> </p></div>     
							<img class="img-responsive" src="${pageContext.request.contextPath}/statics/images/g5.jpg" alt="">
					</div>
				</div>
				<div class="col-md-4 gallery-grid">
					<div class="project-eff">
						<div id="nivo-lightbox-demo"> <p> <a href="${pageContext.request.contextPath}/statics/images/g6.jpg" data-lightbox-gallery="gallery1" id="nivo-lightbox-demo"> <span class="rollover1"> </span></a> </p></div>     
							<img class="img-responsive" src="${pageContext.request.contextPath}/statics/images/g6.jpg" alt="">
					</div>
				</div>
		   <div class="clearfix"> </div>
		</div>
	</div>
</div>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/magnific-popup.css">
			<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/nivo-lightbox.min.js"></script>
				<script type="text/javascript">
				$(document).ready(function(){
				    $('#nivo-lightbox-demo a').nivoLightbox({ effect: 'fade' });
				});
				</script>


<!--gallery end here-->
<!--footer start here-->
<div class="footer">
	<div class="container">
		<div class="footer-main">
			  <div class="col-md-4 ftr-grd">
			  	 <h3><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">保持联系</font></font></h3>
			  	 <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">ibero路8901号</font></font></p>
			  	 <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">南·利比罗·坦佩</font></font></p>
			  	 <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">电话：+148 5746 415</font></font></p>
			  </div>
			  <div class="col-md-4 ftr-grd">
			  	 <h3><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">跟着我们</font></font></h3>
			  	 <ul>
			  	 	<li><a href="${pageContext.request.contextPath}/gallery.jsp#"><span class="fa"> </span></a></li>
			  	 	<li><a href="${pageContext.request.contextPath}/gallery.jsp#"><span class="tw"> </span></a></li>
			  	 	<li><a href="${pageContext.request.contextPath}/gallery.jsp#"><span class="g"> </span></a></li>
			  	 	<li><a href="${pageContext.request.contextPath}/gallery.jsp#"><span class="in"> </span></a></li>
			  	 </ul>
			  </div>
			  <div class="col-md-4 ftr-grd">
			  	 <h3><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">加入我们的时事通讯</font></font></h3>
			  	 <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">临时性的魁北克及其他地方政府的辩论 </font></font></p>
			  	 <label class="hvr-wobble-bottom"> <font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><input type="submit" value="发送"></font></font></label>
			  </div>
			
	</div>
</div>
<!--//footer--><div id="goog-gt-tt" class="skiptranslate" dir="ltr"><div style="padding: 8px;"><div><div class="logo"><img src="./分_files/translate_24dp.png" width="20" height="20" alt="Google 翻译"></div></div></div><div class="top" style="padding: 8px; float: left; width: 100%;"><h1 class="title gray">原文</h1></div><div class="middle" style="padding: 8px;"><div class="original-text"></div></div><div class="bottom" style="padding: 8px;"><div class="activity-links"><span class="activity-link">提供更好的翻译建议</span><span class="activity-link"></span></div><div class="started-activity-container"><hr style="color: #CCC; background-color: #CCC; height: 1px; border: none;"><div class="activity-root"></div></div></div><div class="status-message" style="display: none;"></div></div> 

<div class="goog-te-spinner-pos"><div class="goog-te-spinner-animation"><svg xmlns="http://www.w3.org/2000/svg" class="goog-te-spinner" width="96px" height="96px" viewBox="0 0 66 66"><circle class="goog-te-spinner-path" fill="none" stroke-width="6" stroke-linecap="round" cx="33" cy="33" r="30"></circle></svg></div></div></body></html>