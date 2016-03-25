<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Phoenix</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Bulbfunding by Phoenix" />
<meta name="keywords"
	content="bootstrap, html5, css3, mobile first, responsive" />
<meta name="author" content="Phoenix" />

<!-- Facebook and Twitter integration -->
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<link rel="icon" href="img/logo.ico" />

<tiles:importAttribute name="stylesheets" />
<c:forEach var="css" items="${stylesheets}">
	<link rel="stylesheet" type="text/css" href="<c:url value="${css}"/>" />
</c:forEach>
<link rel="stylesheet" id="theme-switch" href="css/elite_css/style.css">
<style>
#colour-variations {
	padding: 10px;
	-webkit-transition: 0.5s;
	-o-transition: 0.5s;
	transition: 0.5s;
	width: 140px;
	position: fixed;
	left: 0;
	top: 100px;
	z-index: 999999;
	background: #fff;
	/*border-radius: 4px;*/
	border-top-right-radius: 4px;
	border-bottom-right-radius: 4px;
	-webkit-box-shadow: 0 0 9px 0 rgba(0, 0, 0, .1);
	-moz-box-shadow: 0 0 9px 0 rgba(0, 0, 0, .1);
	-ms-box-shadow: 0 0 9px 0 rgba(0, 0, 0, .1);
	box-shadow: 0 0 9px 0 rgba(0, 0, 0, .1);
}

#colour-variations.sleep {
	margin-left: -140px;
}

#colour-variations h3 {
	text-align: center;;
	font-size: 11px;
	letter-spacing: 2px;
	text-transform: uppercase;
	color: #777;
	margin: 0 0 10px 0;
	padding: 0;;
}

#colour-variations ul, #colour-variations ul li {
	padding: 0;
	margin: 0;
}

#colour-variations li {
	list-style: none;
	display: block;
	margin-bottom: 5px !important;
	float: left;
	width: 100%;
}

#colour-variations li a {
	width: 100%;
	position: relative;
	display: block;
	overflow: hidden;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	-ms-border-radius: 4px;
	border-radius: 4px;
	-webkit-transition: 0.4s;
	-o-transition: 0.4s;
	transition: 0.4s;
}

#colour-variations li a:hover {
	opacity: .9;
}

#colour-variations li a>span {
	width: 33.33%;
	height: 20px;
	float: left;
	display: -moz-inline-stack;
	display: inline-block;
	zoom: 1;
	*display: inline;
}

.option-toggle {
	position: absolute;
	right: 0;
	top: 0;
	margin-top: 5px;
	margin-right: -30px;
	width: 30px;
	height: 30px;
	background: #f64662;
	text-align: center;
	border-top-right-radius: 4px;
	border-bottom-right-radius: 4px;
	color: #fff;
	cursor: pointer;
	-webkit-box-shadow: 0 0 9px 0 rgba(0, 0, 0, .1);
	-moz-box-shadow: 0 0 9px 0 rgba(0, 0, 0, .1);
	-ms-box-shadow: 0 0 9px 0 rgba(0, 0, 0, .1);
	box-shadow: 0 0 9px 0 rgba(0, 0, 0, .1);
}

.option-toggle i {
	top: 2px;
	position: relative;
}

.option-toggle:hover, .option-toggle:focus, .option-toggle:active {
	color: #fff;
	text-decoration: none;
	outline: none;
}
</style>

<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

</head>
<body>
	<header role="banner" id="fh5co-header">
	<div class="container">
		<!-- <div class="row"> -->
		<nav class="navbar navbar-default">
		<div class="navbar-header">
			<!-- Mobile Toggle Menu Button -->
			<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar"><i></i></a> <a class="navbar-brand"
				href="index"><span style="font-family: pacifico;">Bulbfunding</span></a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-left">
				<li class="active"><a href="#" data-nav-section="home"><span>Home</span></a></li>
				<li><a href="#" data-nav-section="projects"><span>Projects</span></a></li>
				<li><a href="#" data-nav-section="feedback"><span>Feedback</span></a></li>
				<li><a href="#" data-nav-section="services"><span>Services</span></a></li>
				<li><a href="#" data-nav-section="about"><span>About</span></a></li>
				<li><a href="#" data-nav-section="contact"><span>Contact</span></a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="void(0);" data-toggle="modal" id="loginl"><span>Login</span></a></li>
				<li><a href="void(0);" data-toggle="modal" id="signupl"><span>SignUp</span></a></li>
			</ul>
		</div>
		</nav>
		<!-- </div> -->
	</div>
	</header>

	<section id="fh5co-home" data-section="home"
		style="background-image: url(img/elite_images/full_image_2.jpg);"
		data-stellar-background-ratio="0.5">
	<div class="gradient"></div>
	<div class="container">
		<div class="text-wrap">
			<div class="text-inner">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						<h1 class="to-animate">Do something that matters</h1>
						<h2 class="to-animate">
							<blockquote class="blockquote-reverse" style="border: 0">
								<p style="margin-bottom: 1%;">Right now entrepeneurs are
									already using crowdfunding to raise hunders of thousans of
									dollars in pure donnations - imagine the possibilities if these
									small dollar donors became inverstors with a stake in the
									ventor</p>
								<footer style="font-weight:bold;color:white;">Barack
								Obama<cite title="Source Title"> 2001</cite></footer>
							</blockquote>
						</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="slant"></div>
	</section>

	<section id="fh5co-intro">
	<div class="container">
		<div class="row row-bottom-padded-lg">
			<div class="fh5co-block to-animate"
				style="background-image: url(img/elite_images/img_7.jpg);">
				<div class="overlay-darker"></div>
				<div class="overlay"></div>
				<div class="fh5co-text">
					<i class="fh5co-intro-icon icon-bulb"></i>
					<h2>Plan</h2>
					<p>getting the idea-and imagining the possibilities-is the easy
						part. It's the market research that doesn't come so naturally
					<p>
						<a href="#" class="btn btn-primary">Get In Touch</a>
					</p>
				</div>
			</div>
			<div class="fh5co-block to-animate"
				style="background-image: url(img/elite_images/img_8.jpg);">
				<div class="overlay-darker"></div>
				<div class="overlay"></div>
				<div class="fh5co-text">
					<i class="fh5co-intro-icon icon-wrench"></i>
					<h2>Develop</h2>
					<p>Details bring our ideas to life. A conversation without
						details is like a blank canvas, plain and lacking color until the
						painter arrives
					<p>
						<a href="#" class="btn btn-primary">Click Me</a>
					</p>
				</div>
			</div>
			<div class="fh5co-block to-animate"
				style="background-image: url(img/elite_images/img_10.jpg);">
				<div class="overlay-darker"></div>
				<div class="overlay"></div>
				<div class="fh5co-text">
					<i class="fh5co-intro-icon icon-rocket"></i>
					<h2>Launch</h2>
					<p>Once you are building momentum and gaining a larger audience
						continue to share, educate and connect. Then move your idea along
					
					<p>
						<a href="#" class="btn btn-primary">Why Us?</a>
					</p>
				</div>
			</div>
		</div>
		<div class="row watch-video text-center to-animate">
			<span>Watch the video</span> <a href="https://vimeo.com/55196058"
				class="popup-vimeo btn-video"><i class="icon-play2"></i></a>
		</div>
	</div>
	</section>

	<section id="fh5co-work" data-section="projects">
	<div class="container">
		<div class="row">
			<div class="col-md-12 section-heading text-center">
				<h2 class="to-animate">Projects</h2>
				<div class="row">
					<div class="col-md-8 col-md-offset-2 subtext to-animate">
						<h3>Our mission is to help bring creative projects to life</h3>
					</div>
				</div>
			</div>
		</div>
		<div class="row row-bottom-padded-sm">
			<div class="col-md-4 col-sm-6 col-xxs-12">
				<a href="images/work_1.jpg"
					class="fh5co-project-item image-popup to-animate"> <img
					src="img/elite_images/work_1.jpg" alt="Image"
					class="img-responsive">
					<div class="fh5co-text">
						<h2>Project 1</h2>
						<span>Branding</span>
					</div>
				</a>
			</div>
			<div class="col-md-4 col-sm-6 col-xxs-12">
				<a href="images/work_2.jpg"
					class="fh5co-project-item image-popup to-animate"> <img
					src="img/elite_images/work_2.jpg" alt="Image"
					class="img-responsive">
					<div class="fh5co-text">
						<h2>Project 2</h2>
						<span>Web</span>
					</div>
				</a>
			</div>

			<div class="clearfix visible-sm-block"></div>

			<div class="col-md-4 col-sm-6 col-xxs-12">
				<a href="images/work_3.jpg"
					class="fh5co-project-item image-popup to-animate"> <img
					src="img/elite_images/work_3.jpg" alt="Image"
					class="img-responsive">
					<div class="fh5co-text">
						<h2>Project 3</h2>
						<span>Web</span>
					</div>
				</a>
			</div>
			<div class="col-md-4 col-sm-6 col-xxs-12">
				<a href="images/work_4.jpg"
					class="fh5co-project-item image-popup to-animate"> <img
					src="img/elite_images/work_4.jpg" alt="Image"
					class="img-responsive">
					<div class="fh5co-text">
						<h2>Project 4</h2>
						<span>UI/UX</span>
					</div>
				</a>
			</div>

			<div class="clearfix visible-sm-block"></div>

			<div class="col-md-4 col-sm-6 col-xxs-12">
				<a href="images/work_5.jpg"
					class="fh5co-project-item image-popup to-animate"> <img
					src="img/elite_images/work_5.jpg" alt="Image"
					class="img-responsive">
					<div class="fh5co-text">
						<h2>Project 1</h2>
						<span>Photography</span>
					</div>
				</a>
			</div>
			<div class="col-md-4 col-sm-6 col-xxs-12">
				<a href="images/work_6.jpg"
					class="fh5co-project-item image-popup to-animate"> <img
					src="img/elite_images/work_6.jpg" alt="Image"
					class="img-responsive">
					<div class="fh5co-text">
						<h2>Project 2</h2>
						<span>Illustration</span>
					</div>
				</a>
			</div>

			<div class="clearfix visible-sm-block"></div>

			<div class="col-md-4 col-sm-6 col-xxs-12">
				<a href="images/work_7.jpg"
					class="fh5co-project-item image-popup to-animate"> <img
					src="img/elite_images/work_7.jpg" alt="Image"
					class="img-responsive">
					<div class="fh5co-text">
						<h2>Project 3</h2>
						<span>Web</span>
					</div>
				</a>
			</div>
			<div class="col-md-4 col-sm-6 col-xxs-12">
				<a href="images/work_8.jpg"
					class="fh5co-project-item image-popup to-animate"> <img
					src="img/elite_images/work_8.jpg" alt="Image"
					class="img-responsive">
					<div class="fh5co-text">
						<h2>Project 4</h2>
						<span>Sketch</span>
					</div>
				</a>
			</div>

			<div class="clearfix visible-sm-block"></div>

			<div class="col-md-4 col-sm-6 col-xxs-12">
				<a href="images/work_1.jpg"
					class="fh5co-project-item image-popup to-animate"> <img
					src="img/elite_images/work_1.jpg" alt="Image"
					class="img-responsive">
					<div class="fh5co-text">
						<h2>Project 2</h2>
						<span>Illustration</span>
					</div>
				</a>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12 text-center to-animate">
				<p>something ...</p>
			</div>
		</div>
	</div>
	</section>

	<section id="fh5co-testimonials" data-section="feedback">
	<div class="container">
		<div class="row">
			<div class="col-md-12 section-heading text-center">
				<h2 class="to-animate">Feedback</h2>
				<div class="row">
					<div class="col-md-8 col-md-offset-2 subtext to-animate">
						<h3>Bulbfunding is one of those platforms that gives you
							space to work with people who know you, love you, and support you
						</h3>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<div class="box-testimony">
					<blockquote class="to-animate-2">
						<p>&ldquo;Far far away, behind the word mountains, far from
							the countries Vokalia and Consonantia, there live the blind
							texts. Separated they live in Bookmarksgrove right at the coast
							of the Semantics, a large language ocean.&rdquo;</p>
					</blockquote>
					<div class="author to-animate">
						<figure> <img src="img/female.png" alt="Person"></figure>
						<p>
							Jean Doe, CEO <a href="http://freehtml5.co/" target="_blank">FREEHTML5.co</a>
							<span class="subtext">Founder</span>
						</p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="box-testimony">
					<blockquote class="to-animate-2">
						<p>&ldquo;Far far away, behind the word mountains, far from
							the countries Vokalia and Consonantia, there live the blind
							texts. Separated they live in Bookmarksgrove right at the coast
							of the Semantics, a large language ocean. Far far away, behind
							the word mountains, far from the countries Vokalia and
							Consonantia, there live the blind texts.&rdquo;</p>
					</blockquote>
					<div class="author to-animate">
						<figure> <img src="img/male.png" alt="Person"></figure>
						<p>
							Rouineb Hamza <span class="subtext">Founder & CEO</span>
						</p>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="box-testimony">
					<blockquote class="to-animate-2">
						<p>&ldquo;Far far away, behind the word mountains, far from
							the countries Vokalia and Consonantia, there live the blind
							texts. &rdquo;</p>
					</blockquote>
					<div class="author to-animate">
						<figure> <img src="img/female.png" alt="Person"></figure>
						<p>
							Amzil Fatima<span class="subtext">Creative Director</span>
						</p>
					</div>
				</div>
			</div>


		</div>
	</div>
	</section>


	<section id="fh5co-services" data-section="services">
	<div class="container">
		<div class="row">
			<div class="col-md-12 section-heading text-left">
				<h2 class=" left-border to-animate">Services</h2>
				<div class="row">
					<div class="col-md-8 subtext to-animate">
						<h3>A Bulbfunding project does more than raise money. It
							builds community around your work.</h3>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6 col-sm-6 fh5co-service to-animate">
				<i class="icon to-animate-2 icon-anchor"></i>
				<h3>Brand &amp; Strategy</h3>
				<p>Far far away, behind the word mountains, far from the
					countries Vokalia and Consonantia, there live the blind texts.
					Separated they live in Bookmarksgrove right at the coast of the
					Semantics, a large language ocean</p>
			</div>
			<div class="col-md-6 col-sm-6 fh5co-service to-animate">
				<i class="icon to-animate-2 icon-layers2"></i>
				<h3>Web &amp; Interface</h3>
				<p>Far far away, behind the word mountains, far from the
					countries Vokalia and Consonantia, there live the blind texts.
					Separated they live in Bookmarksgrove right at the coast of the
					Semantics, a large language ocean</p>
			</div>

			<div class="clearfix visible-sm-block"></div>

			<div class="col-md-6 col-sm-6 fh5co-service to-animate">
				<i class="icon to-animate-2 icon-video2"></i>
				<h3>Photo &amp; Video</h3>
				<p>Far far away, behind the word mountains, far from the
					countries Vokalia and Consonantia, there live the blind texts.
					Separated they live in Bookmarksgrove right at the coast of the
					Semantics, a large language ocean</p>
			</div>
			<div class="col-md-6 col-sm-6 fh5co-service to-animate">
				<i class="icon to-animate-2 icon-monitor"></i>
				<h3>CMS &amp; eCommerce</h3>
				<p>Far far away, behind the word mountains, far from the
					countries Vokalia and Consonantia, there live the blind texts.
					Separated they live in Bookmarksgrove right at the coast of the
					Semantics, a large language ocean</p>
			</div>

		</div>
	</div>
	</section>

	<section id="fh5co-about" data-section="about">
	<div class="container">
		<div class="row">
			<div class="col-md-12 section-heading text-center">
				<h2 class="to-animate">About</h2>
				<div class="row">
					<div class="col-md-8 col-md-offset-2 subtext to-animate">
						<h3>And here were are, feel free to know us !</h3>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<div class="fh5co-person text-center to-animate">
					<figure> <img src="img/ibti.jpg" alt="Image"></figure>
					<h3>Naji Ibtissam</h3>
					<span class="fh5co-position">Web Designer</span>
					<p>Far far away, behind the word mountains, far from the
						countries Vokalia and Consonantia, there live the blind texts</p>
					<ul class="social social-circle">
						<li><a href="#"><i class="icon-twitter"></i></a></li>
						<li><a href="https://www.facebook.com/ibtissam.naji.7"><i
								class="icon-facebook"></i></a></li>
						<li><a href="#"><i class="icon-dribbble"></i></a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-4">
				<div class="fh5co-person text-center to-animate">
					<figure> <img src="img/me.jpg" alt="Image"></figure>
					<h3>Rouineb Hamza</h3>
					<span class="fh5co-position">Web Developer</span>
					<p>Far far away, behind the word mountains, far from the
						countries Vokalia and Consonantia, there live the blind texts</p>
					<ul class="social social-circle">
						<li><a href="https://twitter.com/ROUINEB"><i
								class="icon-twitter"></i></a></li>
						<li><a href="https://www.facebook.com/hamza.rouineb"><i
								class="icon-facebook"></i></a></li>
						<li><a href="https://github.com/devlifealways"><i
								class="icon-github"></i></a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-4">
				<div class="fh5co-person text-center to-animate">
					<figure> <img src="img/fati.jpg" alt="Image"></figure>
					<h3>Amzil Fatima</h3>
					<span class="fh5co-position">Web Designer</span>
					<p>Far far away, behind the word mountains, far from the
						countries Vokalia and Consonantia, there live the blind texts</p>
					<ul class="social social-circle">
						<li><a href="#"><i class="icon-twitter"></i></a></li>
						<li><a href="https://www.facebook.com/blanche.neige.798"><i
								class="icon-facebook"></i></a></li>
						<li><a href="#"><i class="icon-dribbble"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	</section>

	<section id="fh5co-counters"
		style="background-image: url(img/elite_images/full_image_1.jpg);"
		data-stellar-background-ratio="0.5">
	<div class="fh5co-overlay"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-12 section-heading text-center to-animate">
				<h2>Fun Facts</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-md-3 col-sm-6 col-xs-12">
				<div class="fh5co-counter to-animate">
					<i class="fh5co-counter-icon icon-briefcase to-animate-2"></i> <span
						class="fh5co-counter-number js-counter" data-from="0" data-to="89"
						data-speed="5000" data-refresh-interval="50">89</span> <span
						class="fh5co-counter-label">Finished projects</span>
				</div>
			</div>
			<div class="col-md-3 col-sm-6 col-xs-12">
				<div class="fh5co-counter to-animate">
					<i class="fh5co-counter-icon icon-code to-animate-2"></i> <span
						class="fh5co-counter-number js-counter" data-from="0"
						data-to="2343409" data-speed="5000" data-refresh-interval="50">2343409</span>
					<span class="fh5co-counter-label">Line of codes</span>
				</div>
			</div>
			<div class="col-md-3 col-sm-6 col-xs-12">
				<div class="fh5co-counter to-animate">
					<i class="fh5co-counter-icon icon-cup to-animate-2"></i> <span
						class="fh5co-counter-number js-counter" data-from="0"
						data-to="1302" data-speed="5000" data-refresh-interval="50">1302</span>
					<span class="fh5co-counter-label">Cup of coffees</span>
				</div>
			</div>
			<div class="col-md-3 col-sm-6 col-xs-12">
				<div class="fh5co-counter to-animate">
					<i class="fh5co-counter-icon icon-people to-animate-2"></i> <span
						class="fh5co-counter-number js-counter" data-from="0" data-to="52"
						data-speed="5000" data-refresh-interval="50">52</span> <span
						class="fh5co-counter-label">Happy clients</span>
				</div>
			</div>
		</div>
	</div>
	</section>

	<section id="fh5co-contact" data-section="contact">
	<div class="container">
		<div class="row">
			<div class="col-md-12 section-heading text-center">
				<h2 class="to-animate">Get In Touch</h2>
				<div class="row">
					<div class="col-md-8 col-md-offset-2 subtext to-animate">
						<h3>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.</h3>
					</div>
				</div>
			</div>
		</div>
		<div class="row row-bottom-padded-md">
			<div class="col-md-6 to-animate">
				<h3>Contact Info</h3>
				<ul class="fh5co-contact-info">
					<li class="fh5co-contact-address "><i class="icon-home"></i>
						35 route de bouchemaine <br>Angers, France</li>
					<li><i class="icon-phone"></i> (+33) 785087523</li>
					<li><i class="icon-envelope"></i>rouineb.business@gmail.com</li>
					<li><i class="icon-globe"></i> <a
						href="www.fb.com/hamza.rouineb" target="_blank">freehtml5.co</a></li>
				</ul>
			</div>

			<div class="col-md-6 to-animate">
				<h3>Contact Form</h3>
				<div class="form-group ">
					<label for="name" class="sr-only">Name</label> <input id="name"
						class="form-control" placeholder="Name" type="text">
				</div>
				<div class="form-group ">
					<label for="email" class="sr-only">Email</label> <input id="email"
						class="form-control" placeholder="Email" type="email">
				</div>
				<div class="form-group ">
					<label for="phone" class="sr-only">Phone</label> <input id="phone"
						class="form-control" placeholder="Phone" type="text">
				</div>
				<div class="form-group ">
					<label for="message" class="sr-only">Message</label>
					<textarea name="" id="message" cols="30" rows="5"
						class="form-control" placeholder="Message"></textarea>
				</div>
				<div class="form-group ">
					<input class="btn btn-primary btn-lg" value="Send Message"
						type="submit">
				</div>
			</div>
		</div>

	</div>
	</div>
	<div id="map" class="to-animate"></div>
	</section>


	<footer id="footer" role="contentinfo"> <a href="#"
		class="gotop js-gotop"><i class="icon-arrow-up2"></i></a>
	<div class="container">
		<div class="">
			<div class="col-md-12 text-center">
				<p>
					&copy; Angers university. All Rights Reserved. <br>Created by
					Rouineb Hamza & Nanji Ibtissam & Amzil Fatima
				</p>

			</div>
		</div>
		<div class="row">
			<div class="col-md-12 text-center">
				<ul class="social social-circle">
					<li><a href="#"><i class="icon-twitter"></i></a></li>
					<li><a href="#"><i class="icon-facebook"></i></a></li>
					<li><a href="#"><i class="icon-youtube"></i></a></li>
				</ul>
			</div>
		</div>
	</div>
	</footer>


	<div id="colour-variations" class="sleep">
		<a class="option-toggle"><i class="icon-gear"></i></a>
		<h3>Change Colors</h3>
		<ul>
			<li><a href="javascript: void(0);" data-theme="style"> <span
					style="background: #3f95ea;"></span> <span
					style="background: #52d3aa;"></span> <span
					style="background: #f2f2f2;"></span>
			</a></li>
			<li><a href="javascript: void(0);" data-theme="style2"> <span
					style="background: #329998;"></span> <span
					style="background: #6cc99c;"></span> <span
					style="background: #f2f2f2;"></span>
			</a></li>
			<li><a href="javascript: void(0);" data-theme="style3"> <span
					style="background: #9f466e;"></span> <span
					style="background: #c24d67;"></span> <span
					style="background: #f2f2f2;"></span>
			</a></li>
			<li><a href="javascript: void(0);" data-theme="style4"> <span
					style="background: #21825C;"></span> <span
					style="background: #A4D792;"></span> <span
					style="background: #f2f2f2;"></span>
			</a></li>

		</ul>
	</div>

	<!-- Login Modal -->
	<div class="modal fade" id="loginModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">
						<div style="float: left; width: 75%;">
							<h4>Login to our site</h4>
							<small>Enter your Email and password to log on:</small>
						</div>
						<div class="pull-right">
							<i class="fa fa-key" style="font-size: 50px;"></i>
						</div>
					</h4>
				</div>
				<div class="modal-body">
					<form id="loginForm" method="post" action="login">
						<div class="form-group">
							<div class="input-group input-group-md"
								style="margin-bottom: 2%;">
								<span class="input-group-addon" id="sizing-addon1"> <i
									class="fa fa-envelope-o"></i>
								</span> <input type="email" name="email_user" class="form-control"
									placeholder="Email ..." aria-describedby="sizing-addon1">
							</div>
						</div>
						<div class="form-group">
							<div class="input-group input-group-md"
								style="margin-bottom: 2%;">
								<span class="input-group-addon" id="sizing-addon1"> <i
									class="glyphicon glyphicon-lock"></i>
								</span> <input type="password" name="password_user"
									class="form-control" placeholder="Password ..."
									aria-describedby="sizing-addon1">
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal" id="lg_close">Close</button>
							<button type="submit" class="btn btn-primary">Login</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- end modal -->
	<!-- SignUp Modal -->
	<div class="modal fade" id="signupModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">
						<div style="float: left; width: 75%;">
							<h4>Ready to join us ?!</h4>
							<small>Fill in everything and it's a matter of seconds ..</small>
						</div>
						<div class="pull-right">
							<i class="fa fa-user-plus" style="font-size: 50px;"></i>
						</div>
					</h4>
				</div>
				<div class="modal-body">
					<form id="signUpForm" class="form-horizontal"
						modelAttribute="signupForm" method="post" action="home">
						<div class="col-xs-5">
							<div class="form-group">
								<div class="input-group input-group-md">
									<span class="input-group-addon" id="sizing-addon1"> <i
										class="fa fa-envelope-o"></i>
									</span> <input type="email" name="email_user" class="form-control"
										placeholder="Email ..." aria-describedby="sizing-addon1">
								</div>
							</div>
						</div>
						<div class="col-xs-offset-2 col-xs-5 block-center">
							<div class="form-group">
								<div class="input-group input-group-md">
									<span class="input-group-addon" id="sizing-addon1"> <i
										class="fa fa-envelope-o"></i>
									</span> <input type="email" name="email_user_confirmation"
										class="form-control" placeholder="Email confirmation ..."
										aria-describedby="sizing-addon1">
								</div>
							</div>
						</div>
						<div class="col-xs-12">
							<div class="form-group">
								<div class="input-group input-group-md">
									<span class="input-group-addon" id="sizing-addon1"> <i
										class="fa fa-user"></i>
									</span> <input type="text" name="name_user" class="form-control"
										placeholder="User name ..." aria-describedby="sizing-addon1">
								</div>
							</div>
						</div>

						<div class="col-xs-5">
							<div class="form-group">
								<div class="input-group input-group-md">
									<span class="input-group-addon" id="sizing-addon1"> <i
										class="glyphicon glyphicon-lock"></i>
									</span> <input type="password" name="password_user"
										class="form-control" placeholder="Password ..."
										aria-describedby="sizing-addon1">
								</div>
							</div>
						</div>
						<div class="col-xs-offset-2 col-xs-5 block-center">
							<div class="form-group">
								<div class="input-group input-group-md">
									<span class="input-group-addon" id="sizing-addon1"> <i
										class="glyphicon glyphicon-lock"></i>
									</span> <input type="password" name="password_user_confirmation"
										class="form-control" placeholder="Password confirmation ..."
										aria-describedby="sizing-addon1">
								</div>
							</div>
						</div>
						<div class="row">
							<div
								class="col-xs-12 col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2"
								style="padding: 0%;">
								<div class="input-group image-preview">
									<input type="text" name="img_user"
										class="form-control image-preview-filename"> <span
										class="input-group-btn">
										<button type="button"
											class="btn btn-default image-preview-clear"
											style="display: none;">
											<span class="glyphicon glyphicon-remove"></span> Clear
										</button>
										<div class="btn btn-default image-preview-input">
											<span class="glyphicon glyphicon-folder-open"></span> <span
												class="image-preview-input-title">Browse</span> <input
												type="file" style="height: auto;"
												accept="image/png, image/jpeg, image/gif" name="img_user" />
										</div>
									</span>
								</div>
							</div>
						</div>
						<div class="input-group" style="margin-bottom: 2%;">
							Already a memeber ? <a href="#"> Log in here </a>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal" id="sp_close">Close</button>
							<button type="submit" class="btn btn-primary" id="signupButton"
								style="background-color: #1BBC9B; border-color: gray;">Signup</button>
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>
	<!-- end modal -->
	<!-- end modal -->
	<tiles:importAttribute name="scripts" />
	<c:forEach var="script" items="${scripts}">
		<script src="<c:url value="${script}"/>"></script>
	</c:forEach>

</body>
</html>
