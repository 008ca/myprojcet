<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<base href="<%=basePath%>">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimal-ui">
	<title>EWork - Creative work website</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/simple-line-icons.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/templatemo_style.css">
</head>
<body>
	<header class="site-header container animated fadeInDown">
		<div class="header-wrapper">
			<div class="row">
				<div class="col-md-4">
					<div class="site-branding">
						<a href="#"><h1>EWork</h1></a>
					</div>
				</div>
				<a href="#" class="toggle-nav hidden-md hidden-lg">
					<i class="fa fa-bars"></i>
				</a>
				<div class="col-md-8">
					<nav id="nav" class="main-navigation hidden-xs hidden-sm">
						<ul class="main-menu">
							<li><a class="show-1 active homebutton" href="#">  主页</a></li>
							<li><a class="show-2 aboutbutton" href="#">  关于我们</a></li>
							<li><a class="show-3 projectbutton" href="#">  成果展示</a></li>
							<li><a class="show-4 blogbutton" href="#">  公司优势</a></li>
							<li><a class="show-5 contactbutton" href="#">  联系我们</a></li>
						</ul>
					</nav>
				</div>
			</div>
			<div class="main-job" style="text-align: right">
			<ul class="main-menu">
			<li><a href="login.jsp">登录</a></li>
				</ul>
			</div>
		</div>
	</header>

	
	<div id="menu-container">
		<div id="menu-1" class="homepage home-section container">
			<div class="home-intro text-center">
				<h2 class="welcome-title animated fadeInLeft">Introduction</h2>
				<p class="animated fadeInRight">Raleway HTML5 template is provided by <span class="blue">template</span><span class="green">mo</span>. Credit goes to <a href="http://unsplash.com">Unsplash</a> for photos. Feel free to modify and use this layout for any personal or commercial website.</p>
				<ul class="list-icons animated fadeInUp">
					<li><i class="icon-trophy"></i></li>
					<li><i class="icon-badge"></i></li>
					<li><i class="icon-magic-wand"></i></li>
					<li><i class="icon-screen-desktop"></i></li>
				</ul>
			</div>
			<div class="home-projects">
				<div class="row">
					<div class="col-md-6 col-sm-12">
						<div class="project-title animated fadeInUp">
							<h2>Latest Projects</h2>
							<p>Sed eu turpis vehicula, iaculis sapien eu, molestie libero. Cras ac urna in neque commodo sodales vel et dolor. Pellentesque aliquam semper lectus, nec consequat ex lacinia nec. <br><br>Nunc eget velit nec felis ultrices vulputate venenatis interdum arcu. In ac auctor quam. </p>
							<a href="#" class="pink-button">Continue Journal</a>
						</div>
					</div>
					<div class="project-home-holder col-md-6 col-sm-12">
						<div class="row">
							<div class="col-md-6 col-sm-6">
								<div class="project-item one animated fadeInRight">
									<img src="<%=basePath%>images/1.jpg" alt="" width="600px" height="200px">
									<div class="overlay">
										<h4><a href="#">Project One</a></h4>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-sm-6">
								<div class="project-item two animated fadeInRight">
									<img src="<%=basePath%>images/2.jpg" alt="" width="600px" height="200px">
									<div class="overlay">
										<h4><a href="#">Project Two</a></h4>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-sm-6">
								<div class="project-item three animated fadeInRight">
									<img src="<%=basePath%>images/3.jpg" alt="" width="600px" height="200px">
									<div class="overlay">
										<h4><a href="#">Project Three</a></h4>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-sm-6">
								<div class="project-item four animated fadeInRight">
									<img src="<%=basePath%>images/4.jpg" alt="" width="600px" height="200px">
									<div class="overlay">
										<h4><a href="#">Project Four</a></h4>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div id="menu-2" class="content about-section container">
			<div class="our-story">
				<div class="story-bg animated fadeIn"></div>
				<div class="row">
					<div class="col-md-6 col-md-offset-3">
						<div class="inner-story animated fadeInRight text-center">
							<h2>ABOUT US</h2>
							<p>Cras placerat, est ac sollicitudin laoreet, ante enim egestas lorem, vel auctor nibh massa sit amet lacus. Cras mollis tellus id sollicitudin vulputate. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam gravida arcu</p>
						</div>
					</div>
				</div>
			</div>
			<div class="our-offers">
				<div class="offer-bg animated fadeIn"></div>
				<div class="offer-header">
					<div class="row">
						<div class="col-md-6 col-md-offset-3 text-center">
							<div class="offer-title animated fadeInDown">
								<h2>OUR WORK</h2>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="offer-holder">
						<div class="col-md-6">
							<div class="offer-item offer-1 animated fadeInLeft">
								<figure>
									<img src="img/a1.jpg" alt="">
								</figure>
								<div class="offer-content text-center">
									<h4>HAPPY WORKING WITH US</h4>
									<p>Sed sagittis nunc vel tellus ultricies auctor. Class aptent taciti sociosqu ad litora torquent per conubia , per inceptos himenaeos. Integer eleifend tellu.</p>
									<span class="offer-left"><i></i></span>
									<span class="offer-right"><i></i></span>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="offer-item offer-2 animated fadeInRight">
								<figure>
									<img src="img/a2.jpg" alt="">
								</figure>
								<div class="offer-content text-center">
									<h4>OUR COMPANY BACKGROUND</h4>
									<p>Sed sagittis nunc vel tellus ultricies auctor. Class aptent taciti sociosqu ad litora torquent per conubia , per inceptos himenaeos. Integer eleifend tellu.</p>
									<span class="offer-left"><i></i></span>
									<span class="offer-right"><i></i></span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div id="menu-3" class="content project-section container">
			<div class="projects-header">
				<h2 class="animated fadeInRight">Our projects</h2>
				<p class="animated fadeInLeft">Sed sagittis nunc vel tellus ultricies auctor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer eleifend tellus ut porttitor pharetra.</p>
			</div>
			<div class="projects-holder">
				<div class="row">
					<div class="col-md-4 col-sm-6 p-1 animated umScaleIn">
						<div class="project-item">
							<img src="img/1.jpg" alt="">
							<div class="overlay">
								<h4><a href="#">Project One</a></h4>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 p-2 animated umScaleIn">
						<div class="project-item">
							<img src="img/2.jpg" alt="">
							<div class="overlay">
								<h4><a href="#">Project Two</a></h4>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 p-3 animated umScaleIn">
						<div class="project-item">
							<img src="img/3.jpg" alt="">
							<div class="overlay">
								<h4><a href="#">Project Three</a></h4>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3 col-sm-6 p-4 animated umScaleIn">
						<div class="project-item animated umScaleIn">
							<img src="img/4.jpg" alt="">
							<div class="overlay">
								<h4><a href="#">Project Four</a></h4>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-6">
						<div class="project-item p-5 animated umScaleIn">
							<img src="img/5.jpg" alt="">
							<div class="overlay">
								<h4><a href="#">Project Five</a></h4>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-6">
						<div class="project-item p-6 animated umScaleIn">
							<img src="img/6.jpg" alt="">
							<div class="overlay">
								<h4><a href="#">Project Six</a></h4>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-6">
						<div class="project-item p-7 animated umScaleIn">
							<img src="img/7.jpg" alt="">
							<div class="overlay">
								<h4><a href="#">Project Seven</a></h4>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div id="menu-4" class="content blog-section container">
			<div class="blog-header text-center">
				<h2 class="animated fadeInRight">Blog entries</h2>
				<p class="animated fadeInLeft">Sed sagittis nunc vel tellus ultricies auctor. Class aptent taciti sociosqu ad litora torquent per.</p>
				<a href="#" class="blog-button animated fadeInUp">continue journal</a>
			</div>
			<div class="row blog-posts">
				<div class="col-md-4 col-sm-12">
					<div class="blog-item post-1 animated zoomIn">
						<div class="blog-bg blog-pink"></div>
						<div class="blog-content">
							<h3><a href="#">Web Design</a></h3>
							<span class="solid-line"></span>
							<p>Etiam aliquam sem vel velit tempus, quis porttitor nunc rutrum. Ut a tempus arcu. Sed velit felis, pretium a lacus in, cursus scelerisque ex.</p>
							<a href="#" class="post-button">Read More</a>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-12">
					<div class="blog-item post-2 animated zoomIn">
						<div class="blog-bg blog-blue"></div>
						<div class="blog-content">
							<h3><a href="#">Creativity</a></h3>
							<span class="solid-line"></span>
							<p>Etiam aliquam sem vel velit tempus, quis porttitor nunc rutrum. Ut a tempus arcu. Sed velit felis, pretium a lacus in, cursus scelerisque ex.</p>
							<a href="#" class="post-button">Read More</a>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-12">
					<div class="blog-item post-3 animated zoomIn">
						<div class="blog-bg blog-green"></div>
						<div class="blog-content">
							<h3><a href="#"><span class="blue">template</span>mo</a></h3>
							<span class="solid-line"></span>
							<p>Etiam aliquam sem vel velit tempus, quis porttitor nunc rutrum. Ut a tempus arcu. Sed velit felis, pretium a lacus in, cursus scelerisque ex.</p>
							<a href="#" class="post-button">Read More</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div id="menu-5" class="content contact-section container">
			<div class="contact-header text-center">
				<h2 class="animated fadeInLeft">Get in Touch</h2>
				<p class="animated fadeInRight">Feel free to talk to us about anything.</p>
				<ul class="contact-social animated fadeInUp">
					<li><a href="#"><i class="fa fa-twitter"></i></a></li>
					<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
					<li><a href="#"><i class="fa fa-instagram"></i></a></li>
					<li><a href="#"><i class="fa fa-share-alt"></i></a></li>
				</ul>
			</div>
			<div class="contact-holder">
				<div class="row">
					<div class="col-md-6 col-sm-12">
			            <div class="googlemap-wrapper animated fadeInLeft">
                            <div id="map_canvas" class="map-canvas"></div>
                        </div>
					</div>
					<div class="col-md-6 col-sm-12">
						<div class="contact-form animated fadeInUp">
							<h4>Send us a Message</h4>
							<div class="row">
								<fieldset class="col-md-6">
									<input type="text" name="name" placeholder="Your name">
								</fieldset>
								<fieldset class="col-md-6">
									<input type="email" name="email" placeholder="Your name">
								</fieldset>
								<fieldset class="col-md-12">
									<input type="text" name="subject" placeholder="Subject">
								</fieldset>
								<fieldset class="col-md-12">
									<textarea name="message" id="message" cols="30" rows="10" placeholder="Describe your Project"></textarea>
								</fieldset>
								<fieldset class="col-md-12">
									<a href="#" class="message-button">Submit Message</a>
								</fieldset>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<footer class="site-footer container text-center">
		<div class="row">
			<div class="col-md-12 copyright">
				<p>Copyright &copy; 2018 <a href="#">Company Name:E Work</a></p>
			</div>
		</div>
	</footer>
	<span class="border-top"></span>
	<span class="border-left"></span>
	<span class="border-right"></span>
	<span class="border-bottom"></span>
	<span class="shape-1"></span>
	<span class="shape-2"></span>

	<script src="js/jquery.min.js"></script>
	<script src="js/templatemo_custom.js"></script>
</body>
</html>