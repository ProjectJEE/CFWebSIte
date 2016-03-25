<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<section class="container-fluid" id="section1">
	<h1 class="text-center v-center pretty-title visible-lg"
		style="color: white; font-size: 11em;">Bulbcrowding !</h1>
	<h1 class="text-center v-center pretty-title visible-md"
		style="color: white; font-size: 9em;">Bulbcrowding !</h1>
	<h1 class="text-center v-center pretty-title visible-sm"
		style="color: white; font-size: 5em;">Bulbcrowding !</h1>
	<h1 class="text-center v-center pretty-title visible-xs"
		style="color: white; font-size: 4em;">Bulbcrowding !</h1>
	<div class="container">
		<div class="row" style="color: white">
			<div class="col-sm-4">
				<div class="row">
					<div class="col-sm-10 col-sm-offset-2 text-center">
						<h3 class="shadow">Transparency</h3>
						<p>You must be completely open and honest about what your
							project is about, who you are, what you are doing, what mistakes
							you make, everything..</p>
						<i class="fa fa-unlock fa-5x"></i>
					</div>
				</div>
			</div>
			<div class="col-sm-4 text-center">
				<div class="row">
					<div class="col-sm-10 col-sm-offset-1 text-center">
						<h3 class="shadow">Credibility</h3>
						<p>You need to establish not only that your project is way
							cool, but also that you (or your team, ideally) are able to make
							it happen ,you must be clearly sufficient for the task in hand...</p>
						<i class="fa fa-users fa-5x"></i>
					</div>
				</div>
			</div>
			<div class="col-sm-4 text-center">
				<div class="row">
					<div class="col-sm-10 text-center">
						<h3 class="shadow">Value</h3>
						<p>It could be a physical product, a service, or a feeling of
							creating a better world. Whatever it is, you have to offer value.
							A reason for people to buy your thing now..</p>
						<i class="fa fa-diamond fa-5x"></i>
					</div>
				</div>
			</div>
		</div>
		<!--/row-->
		<div class="row">
			<br>
			<div class="col-sm4 col-sm4-offset-4 text-center">
				<a href="#" class="text-center btn btn-info btn-lg pretty-button"
					role="button"> Join us </a>
			</div>

		</div>
	</div>
	<!--/container-->
</section>

<section class="container-fluid" id="section2">
	<div class="row">
		<div class="col-sm-8 col-sm-offset-2 text-center">
			<h1>
				What is <span style="font-family: abi">Bulbcrowding ?</span>
			</h1>
			<br>
			<p class="lead visible-lg">Bulb crowding is the practice of
				funding a project or venture by raising monetary contributions from
				a large number of people, today often performed via
				internet-mediated registries, but the concept can also be executed
				through mail-order subscriptions, benefit events, and other
				methods.Bulbcrowdding is a form of alternative finance, which has
				emerged outside of the traditional financial system..</p>
			<br> <i style="font-size: 120px" class="fa fa-comments-o fa-5x"></i>
			<br>
			<div class="container" style="margin-top: 3%;">
				<div class="row center-block">
					<div class="col-sm-offset-1 col-sm-4 text-center"
						style="font-family: abi; font-size: 2em; font-weight: bolder;">A
						Bulbcrowding project does more than raise money. It builds
						community around your work.</div>
					<div class="col-sm-offset-2 col-sm-4 text-center">
						<div class="feedback-box">
							&quot;BulbCrowding has been a powerful tool to connect with a
							community passionate about our work.&quot;
							<div class="row" style="margin-top: 5%">
								<img style="margin-left: 1%;" align="left" alt="feedback"
									src="img/male.png" width="35" height="35" class="img-circle">
								<p class="user-name">
									<tiles:getAsString name="maker.1" />
									<br> <span class="user-age"> 23 years </span>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row some-space center-block">
					<div class="col-sm-offset-1 col-sm-4 text-center">
						<div class="feedback-box">
							&quot;BulbCrowding creates a community of people interested in
							what you’re doing, and the community that’s created is
							important.&quot;
							<div class="row" style="margin-top: 5%">
								<img style="margin-left: 1%;" align="left" alt="feedback"
									src="img/female.png" width="35" height="35" class="img-circle">
								<p class="user-name">
									<tiles:getAsString name="maker.2" />
									<br> <span class="user-age"> 23 years </span>
								</p>
							</div>
						</div>
					</div>
					<div class="col-sm-offset-2 col-sm-4 text-center">
						<div class="feedback-box">
							&quot;BulbCrowding Everyone loves being a part of creating
							something new. Millions of people have jumped in to support
							creators on Kickstarter..&quot;
							<div class="row" style="margin-top: 5%">
								<img style="margin-left: 1%;" align="left" alt="feedback"
									src="img/female.png" width="35" height="35" class="img-circle">
								<p class="user-name">
									<tiles:getAsString name="maker.3" />
									<br> <span class="user-age"> 23 years </span>
								</p>
							</div>
						</div>
					</div>
				</div>
				<!-- 				this contain only the pictures  -->
				<div class="row visible-lg" style="margin-top: 5%;">
					<div class="col-sm-4 center-block">
						<img alt="idea" src="img/idea1.png">
					</div>
					<div class="col-sm-4 center-block">
						<img alt="hard work" src="img/working.png">
					</div>
					<div class="col-sm-4 center-block">
						<img alt="success" src="img/success.png">
					</div>
				</div>
				<!-- 				the end of the pictures section -->
			</div>
		</div>
	</div>
</section>

<section class="container-fluid" id="section3">
	<h1 class="text-center" style="margin-bottom: 4%;">
		<span style="font-family: abi;">Most promising
			projects&nbsp&nbsp<i class="fa fa-tasks fa-15px"></i>
		</span>
	</h1>
	<div class="container block-center">
		<div class="row">
			<div id="stubborn" class="fadeOut owl-carousel owl-theme">
				<div class="item">
					<!-- 	one item -->
					<div class="thumbnail">
						<img src="img/projects/project1.jpg" width="80" height="80"
							alt="...">
						<div class="caption">
							<h3>Thumbnail label</h3>
							<p>The Future is Now is an art book, a document that the
								Robo-President K3n3-DY has ordered everybody must have</p>
							<p>
								<a href="#" class="btn btn-primary" role="button">Button</a> <a
									href="#" class="btn btn-default" role="button">Button</a>
							</p>
						</div>
					</div>
					<!-- one item -->
				</div>
				<div class="item">
					<!-- 	one item -->
					<div class="thumbnail">
						<img src="img/projects/project1.jpg" alt="project">
						<div class="caption">
							<h3>Thumbnail label</h3>
							<p>The Future is Now is an art book, a document that the
								Robo-President K3n3-DY has ordered everybody must have</p>
							<p>
								<a href="#" class="btn btn-primary" role="button">Button</a> <a
									href="#" class="btn btn-default" role="button">Button</a>
							</p>
						</div>
					</div>
					<!-- one item -->
				</div>
				<div class="item">
					<!-- 	one item -->
					<div class="thumbnail">
						<img src="img/projects/project1.jpg" alt="project">
						<div class="caption">
							<h3>Thumbnail label</h3>
							<p>The Future is Now is an art book, a document that the
								Robo-President K3n3-DY has ordered everybody must have</p>
							<p>
								<a href="#" class="btn btn-primary" role="button">Button</a> <a
									href="#" class="btn btn-default" role="button">Button</a>
							</p>
						</div>
					</div>
					<!-- one item -->
				</div>
			</div>
			<div class="customNavigation text-center">
				<button id="next" class="btn btn-primary prev">
					<i class="fa fa-chevron-left"></i>
				</button>
				<button id="prev" class="btn btn-primary next">
					<i class="fa fa-chevron-right"></i>
				</button>
			</div>
		</div>
	</div>
	<div class="row text-center some-space">
		<a role="button" class="btn btn-success btn-lg"
			style="background-color: rgb(27, 188, 155); width: 5%; border-color: white;">
			<span class="visible-lg" style="font-family: abi;">See
				all&nbsp&nbsp<i class="fa fa-eye fa-15px"></i>
		</span> <span class="visible-md" style="font-family: abi;"><i
				class="fa fa-eye fa-15px"></i> </span>
		</a>
		<!-- 		<button class="btn btn-success btn-lg visible-sm visible-xs" -->
		<!-- 			style="background-color: rgb(27, 188, 155); width: 5%; border-color: white;"> -->
		<!-- 			<span style="font-family: abi;"><i -->
		<!-- 				class="fa fa-eye fa-15px"></i> -->
		<!-- 			</span> -->
		<!-- 		</button> -->
	</div>
</section>

<section class="container" id="section4">

	<h1 class="text-center">Social Media Fascination</h1>
	<div class="row">
		<!--fontawesome icons-->
		<div class="col-sm-1 col-sm-offset-2 col-xs-4 text-center">
			<i class="fa fa-github fa-4x"></i>
		</div>
		<div class="col-sm-1 col-xs-4 text-center">
			<i class="fa fa-foursquare fa-4x"></i>
		</div>
		<div class="col-sm-1 col-xs-4 text-center">
			<i class="fa fa-facebook fa-4x"></i>
		</div>
		<div class="col-sm-1 col-xs-4 text-center">
			<i class="fa fa-pinterest fa-4x"></i>
		</div>
		<div class="col-sm-1 col-xs-4 text-center">
			<i class="fa fa-google-plus fa-4x"></i>
		</div>
		<div class="col-sm-1 col-xs-4 text-center">
			<i class="fa fa-twitter fa-4x"></i>
		</div>
		<div class="col-sm-1 col-xs-4 text-center">
			<i class="fa fa-dribbble fa-4x"></i>
		</div>
		<div class="col-sm-1 col-xs-4 text-center">
			<i class="fa fa-instagram fa-4x"></i>
		</div>
	</div>
	<!--/row-->
	<div class="row">
		<div class="col-md-12 text-center">alkdjazlkdjla</div>
	</div>
</section>

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
				<form id="loginForm" method="post" action="login"
					enctype="multipart/form-data">
					<div class="form-group">
						<div class="input-group input-group-md" style="margin-bottom: 2%;">
							<span class="input-group-addon" id="sizing-addon1"> <i
								class="fa fa-envelope-o"></i>
							</span> <input type="email" name="email_user" class="form-control"
								placeholder="Email ..." aria-describedby="sizing-addon1">
						</div>
					</div>
					<div class="form-group">
						<div class="input-group input-group-md" style="margin-bottom: 2%;">
							<span class="input-group-addon" id="sizing-addon1"> <i
								class="glyphicon glyphicon-lock"></i>
							</span> <input type="password" name="password_user" class="form-control"
								placeholder="Password ..." aria-describedby="sizing-addon1">
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal"
							id="lg_close">Close</button>
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
				<form:form id="signUpForm" class="form-horizontal"
					modelAttribute="signupForm">
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
											type="file" style="height: auto;" accept="image/png, image/jpeg, image/gif"
											name="img_user" />
									</div>
								</span>
							</div>
						</div>
					</div>
					<div class="input-group" style="margin-bottom: 2%;">
						Already a memeber ? <a href="#"> Log in here </a>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal"
							id="sp_close">Close</button>
						<button type="submit" class="btn btn-primary" id="signupButton"
							style="background-color: #1BBC9B; border-color: gray;">Signup</button>
					</div>
				</form:form>

			</div>
		</div>
	</div>
</div>
<!-- end modal -->

</div>