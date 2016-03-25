$(document)
		.ready(
				function() {

					$('#colour-variations ul').styleSwitcher({
						// the document id of the default theme CSS file, will
						// be
						// replaced with the user selection
						defaultThemeId : 'theme-switch',
						// when set to true, hover events on the theme lists
						// will
						// trigger a style change
						hasPreview : false,
						fullPath : 'css/elite_css/',
						cookie : {
							expires : 30,
							isManagingLoad : true
						}
					});
					$('.option-toggle').click(function() {
						$('#colour-variations').toggleClass('sleep');
					});

					$('#loginl').click(function() {
						$('#loginModal').modal('toggle');
					});

					$('#signupl').click(function() {
						$('#signupModal').modal('toggle');
					});

					function reposition() {
						var modal = $(this), dialog = modal
								.find('.modal-dialog');
						modal.css('display', 'block');
						// Dividing by two centers the modal exactly, but
						// dividing
						// by three
						// or four works better for larger screens.
						dialog.css("margin-top", Math.max(0, ($(window)
								.height() - dialog.height()) / 2));
					}
					;
					// Reposition when a modal is shown
					$('.modal').on('show.bs.modal', reposition);
					// Reposition when the window is resized
					$(window).on('resize', function() {
						$('.modal:visible').each(reposition);
					});

					// $('#fh5co-work').waypoint({
					// handler : function(direction) {
					// alert('koko !')
					// }
					// })

					var closebtn = $('<button/>', {
						type : "button",
						text : 'x',
						id : 'close-preview',
						style : 'font-size: initial;',
					});

					// for the image input !
					$(document).on('click', '#close-preview', function() {
						$('.image-preview').popover('hide');
						// Hover befor close the preview
						$('.image-preview').hover(function() {
							$('.image-preview').popover('show');
						}, function() {
							$('.image-preview').popover('hide');
						});
					});

					$('.image-preview').popover(
							{
								trigger : 'manual',
								html : true,
								title : "<strong>Preview</strong>"
										+ $(closebtn)[0].outerHTML,
								content : "There's no image",
								placement : 'bottom'
							});
					// Clear event
					$('.image-preview-clear').click(
							function() {
								$('.image-preview').attr("data-content", "")
										.popover('hide');
								$('.image-preview-filename').val("");
								$('.image-preview-clear').hide();
								$('.image-preview-input input:file').val("");
								$(".image-preview-input-title").text("Browse");
							});
					// Create the preview image
					$(".image-preview-input input:file")
							.change(
									function() {
										var img = $('<img/>', {
											id : 'dynamic',
											width : 250,
											height : 200
										});
										var file = this.files[0];
										var reader = new FileReader();
										// Set preview image into the popover
										// data-content
										reader.onload = function(e) {
											$(".image-preview-input-title")
													.text("Change");
											$(".image-preview-clear").show();
											$(".image-preview-filename").val(
													file.name);
											img.attr('src', e.target.result);
											$(".image-preview").attr(
													"data-content",
													$(img)[0].outerHTML)
													.popover("show");
										}
										reader.readAsDataURL(file);
									});
					// start Formvalidator section : Signup form
					// validate the forms before sending them to the controller
					// side
					// var formValidation = $(form).data('formValidation');
					// console.log("i'm here : "+formvalidation);
					$('#signUpForm')

							// IMPORTANT: You must declare .on('init.field.fv')
							// before calling .formValidation(options)
							.on(
									'init.field.fv',
									function(e, data) {
										// data.fv --> The FormValidation
										// instance
										// data.field --> The field name
										// data.element --> The field element

										var $parent = data.element
												.parents('.form-group'), $icon = $parent
												.find('.form-control-feedback[data-fv-icon-for="'
														+ data.field + '"]');

										// You can retrieve the icon element by
										// $icon = data.element.data('fv.icon');

										$icon
												.on(
														'click.clearing',
														function() {
															// Check if the
															// field is valid or
															// not via the icon
															// class
															if ($icon
																	.hasClass('glyphicon-remove')) {
																// Clear the
																// field
																data.fv
																		.resetField(data.element);
															}
														});
									})

							.formValidation(
									{
										framework : 'bootstrap',
										icon : {
											valid : 'glyphicon glyphicon-ok',
											invalid : 'glyphicon glyphicon-remove',
											validating : 'glyphicon glyphicon-refresh'
										},
										fields : {
											name_user : {
												validators : {
													notEmpty : {
														message : 'The username is required'
													},
													stringLength : {
														min : 6,
														max : 30,
														message : 'The username must be more than 6 and less than 30 characters long'
													},
													regexp : {
														regexp : /^[a-zA-Z0-9_]+$/,
														message : 'The username can only consist of alphabetical, number and underscore'
													},
													blank : {}
												}
											},
											email_user : {
												validators : {
													notEmpty : {
														message : 'The email address is required'
													},
													emailAddress : {
														message : 'The input is not a valid email address'
													},
													blank : {}
												}
											},
											email_user_confirmation : {
												validators : {
													identical : {
														field : 'email_user',
														message : 'The email and its confirm are not the same'
													}
												}
											},
											password_user : {
												validators : {
													notEmpty : {
														message : 'The password is required'
													},
													regexp : {
														regexp : /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/,
														message : 'Minimum 8 characters at least 1 Alphabet and 1 Number'
													},
													blank : {}
												}
											},
											password_user_confirmation : {
												validators : {
													identical : {
														field : 'password_user',
														message : 'The password and its confirm are not the same'
													}
												}
											}
										}
									})
							.on(
									'success.form.fv',
									function(e) {
										// to prevent the form from being sent
										e.preventDefault();
										var $form = $(e.target), fv = $form
												.data('formValidation');
										$
												.ajax({
													url : 'signup',
													data : $form.serialize(),
													type : 'POST',
													dataType : 'json'
												})
												.done(
														function(response) {
															// If there is error
															// returned from
															// server
															if (response.result === 'NOT_OK') {
																for ( var field in response.fields) {
																	alert(response.fields[field]);
																	fv
																			// Show
																			// the
																			// custom
																			// message
																			.updateMessage(
																					field,
																					'blank',
																					response.fields[field])
																			// Set
																			// the
																			// field
																			// as
																			// invalid
																			.updateStatus(
																					field,
																					'INVALID',
																					'blank');
																}
															} else {
																// it's alright
																// !
																fv
																		.defaultSubmit();
															}
														}).fail(
														function AjaxFailed(
																XMLHttpRequest,
																textStatus) {
															alert(textStatus);
														}).always(function() {
													alert("finished");
												});
									});

					// end of formvalidator section

					// start FormValidator section : login
					$('#loginForm')
							// IMPORTANT: You must declare .on('init.field.fv')
							// before calling .formValidation(options)
							.on(
									'init.field.fv',
									function(e, data) {
										// data.fv --> The FormValidation
										// instance
										// data.field --> The field name
										// data.element --> The field element

										var $parent = data.element
												.parents('.form-group'), $icon = $parent
												.find('.form-control-feedback[data-fv-icon-for="'
														+ data.field + '"]');

										// You can retrieve the icon element by
										// $icon = data.element.data('fv.icon');

										$icon
												.on(
														'click.clearing',
														function() {
															// Check if the
															// field is valid or
															// not via the icon
															// class
															if ($icon
																	.hasClass('glyphicon-remove')) {
																// Clear the
																// field
																data.fv
																		.resetField(data.element);
															}
														});
									})
							.formValidation(
									{
										framework : 'bootstrap',
										icon : {
											valid : 'glyphicon glyphicon-ok',
											invalid : 'glyphicon glyphicon-remove',
											validating : 'glyphicon glyphicon-refresh'
										},
										fields : {
											email_user : {
												validators : {
													notEmpty : {
														message : 'The email address is required'
													},
													emailAddress : {
														message : 'The input is not a valid email address'
													}
												}
											},
											password_user : {
												validators : {
													notEmpty : {
														message : 'The password is required'
													}
												}
											}
										}
									});
					// end FormValidator

					// to reset the notification icons
					$("#sp_close").click(function() {
						var sg_form = $("#signUpForm");
						sg_form.data('formValidation').resetForm();
						sg_form.trigger("reset");
					});
					$("#lg_close").click(function() {
						var lg_form = $("#loginForm");
						lg_form.data('formValidation').resetForm();
						lg_form.trigger("reset");
					});
				});