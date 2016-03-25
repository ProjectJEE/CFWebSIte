<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section id="" data-section="home" data-stellar-background-ratio="0.5">
	<div class="container-fluid text-wrap" style="padding: 0%;">
		<div class="container-fluid" style="padding: 0%;">
			<div id="carousel-example-generic" class="carousel slide"
				data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#carousel-example-generic" data-slide-to="0"
						class="active"></li>
					<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img src="img/hero-watch.jpg" alt="cover">
						<div class="carousel-caption" style="margin-bottom: 5%;">
							<h1 style="color: white; font-family: abi">Start your own
								project</h1>
							<button class="btn btn-default">create project</button>
						</div>
					</div>
					<div class="item">
						<img src="img/cubetto-sm.jpg" alt="cover">
						<div class="carousel-caption" style="margin-bottom: 5%;">
							<h1 style="color: white; font-family: abi;">Help other
								projects to start</h1>
							<button class="btn btn-default">view projects</button>
						</div>
					</div>
				</div>

				<!-- Controls -->
				<a class="left carousel-control" href="#carousel-example-generic"
					role="button" data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#carousel-example-generic"
					role="button" data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>
	<div class="container-fluid" style="background-color: #d9d9de;">
		<div class="col-md-offset-2 col-md-6">
			<div class="row">
				<div class="pull-left">
					<small>Today's lucky project : ${lucky.name_project}</small>
				</div>
				<div class="pull-right">
					<a href="#" style="color: #484242; text-decoration: none;"><i>see
							all projects</i></a>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<img alt="" src="img/project.jpg" class="img-rounded" width="95%;"
						height="95%;">
				</div>
				<div class="col-md-8">
					<div class="row">
						<h3 style="margin-bottom: 0%;">${lucky.name_project}</h3>
						<small><p>by ${lucky.user.name_user}</p></small>
					</div>
					<div class="row">
						<p>${lucky.description_project}</p>
					</div>
					<div class="row">
						${lucky.category_project} <i class="fa fa-map-marker"></i>
						${lucky.money_goal} <i class="fa fa-sort-numeric-desc"></i>
					</div>
					<div class="row" style="margin-bottom: 2%;">
						<div class="progress">
							<div class="progress-bar progress-bar-info progress-bar-striped"
								role="progressbar" aria-valuenow="20" aria-valuemin="0"
								aria-valuemax="100" style="width: 20%">
								<span class="sr-only">20% Complete</span>
							</div>
						</div>
					</div>
					<div class="row">number of days ${lucky.nbr_days}</div>
				</div>
			</div>
		</div>
		<div class="col-md-2" role="complementary">
			<ul class="nav list">
				<!-- don"t exceed 8 categories -->
				<c:forEach var="cat" items="${categories}">
					<li><a href="#"
						style="color: rgb(127, 127, 127); text-align: center;"> ${cat}
					</a></li>
				</c:forEach>
			</ul>
		</div>
	</div>
	<div class="container" style="margin-top: 2%;">
		<div class="row">
			<c:forEach var="project" items="${projects}">
				<div class="col-sm-6 col-md-4">
					<div class="thumbnail">
						<img src="img/projects/project0.png" alt="project image">
						<div class="caption">
							<h3>${project.name_project}</h3>
							<div class="crop">
								<p>${project. description_project}</p>
							</div>
							<p>
								<a href="home/project?id=${project.id_project}"
									class="btn btn-primary" role="button"
									project-data="${project.id_project}">Discover</a> <a href="#"
									class="btn btn-default" role="button">Fund</a>
							</p>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>

	</div>
</section>


