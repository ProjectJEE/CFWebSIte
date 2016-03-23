<!-- Login Modal -->
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">
					<b>Login <span class="glyphicon glyphicon-user"></span></b>
				</h4>
			</div>
			<div class="modal-body">
				<!-- the body that should be filled  -->
				<div id="loginMessage"></div>
				<form class="form-horizontal" method="post" action=""
					enctype="multipart/form-data" id="loginForm">
					<div class="form-group ">
						<label for="fileN" class="col-xs-3 control-label">Email
							adress</label>
						<div class="col-xs-6">
							<input name="loginEmail" type="text" class="form-control"
								name="filetLabel" id="loginEmail"
								placeholder="test@test.com,fr...">
						</div>
					</div>
					<div class="form-group">
						<label for="psswd" class="col-xs-3 control-label">Password</label>
						<div class="col-xs-6">
							<input name="loginPassword" type="password" class="form-control"
								name="password" id="loginPassword">
						</div>
					</div>
					<div class="form-group">
						<img id="loading" src="../images/loading.gif">
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-primary" id="loginBtn">Login</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- end modal -->
