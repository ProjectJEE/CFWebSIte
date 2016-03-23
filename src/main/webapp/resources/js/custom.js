$(document).ready(
		function() {
			// This function helps center the modals on screen
			$(function() {
				function reposition() {
					var modal = $(this), dialog = modal.find('.modal-dialog');
					modal.css('display', 'block');
					// Dividing by two centers the modal exactly, but dividing
					// by three
					// or four works better for larger screens.
					dialog.css("margin-top", Math.max(0,
							($(window).height() - dialog.height()) / 2));
				}
				// Reposition when a modal is shown
				$('.modal').on('show.bs.modal', reposition);
				// Reposition when the window is resized
				$(window).on('resize', function() {
					$('.modal:visible').each(reposition);
				});
			});

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

$(function() {
	// Create the close button
	var closebtn = $('<button/>', {
		type : "button",
		text : 'x',
		id : 'close-preview',
		style : 'font-size: initial;',
	});
	closebtn.attr("class", "close pull-right");
	// Set the popover default content
	$('.image-preview').popover({
		trigger : 'manual',
		html : true,
		title : "<strong>Preview</strong>" + $(closebtn)[0].outerHTML,
		content : "There's no image",
		placement : 'bottom'
	});
	// Clear event
	$('.image-preview-clear').click(function() {
		$('.image-preview').attr("data-content", "").popover('hide');
		$('.image-preview-filename').val("");
		$('.image-preview-clear').hide();
		$('.image-preview-input input:file').val("");
		$(".image-preview-input-title").text("Browse");
	});
	// Create the preview image
	$(".image-preview-input input:file").change(
			function() {
				var img = $('<img/>', {
					id : 'dynamic',
					width : 250,
					height : 200
				});
				var file = this.files[0];
				var reader = new FileReader();
				// Set preview image into the popover data-content
				reader.onload = function(e) {
					$(".image-preview-input-title").text("Change");
					$(".image-preview-clear").show();
					$(".image-preview-filename").val(file.name);
					img.attr('src', e.target.result);
					$(".image-preview").attr("data-content",
							$(img)[0].outerHTML).popover("show");
				}
				reader.readAsDataURL(file);
			});

	// validate the forms before sending them to the controller side
	$('#signUpForm')

			// IMPORTANT: You must declare .on('init.field.fv')
			// before calling .formValidation(options)
			.on(
					'init.field.fv',
					function(e, data) {
						// data.fv --> The FormValidation instance
						// data.field --> The field name
						// data.element --> The field element

						var $parent = data.element.parents('.form-group'), $icon = $parent
								.find('.form-control-feedback[data-fv-icon-for="'
										+ data.field + '"]');

						// You can retrieve the icon element by
						// $icon = data.element.data('fv.icon');

						$icon.on('click.clearing', function() {
							// Check if the field is valid or not via the icon
							// class
							if ($icon.hasClass('glyphicon-remove')) {
								// Clear the field
								data.fv.resetField(data.element);
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
									}
								}
							},
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
									}
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
					}).on(
					'success.form.fv',
					function(e) {
						e.preventDefault();
						var $form = $(e.target);
						$.post({
							url : 'signup',
							data : $form.serialize(),
						}).done(
								function(response) {
									// If there is error returned from server
									if (response.flag === 'NOT_OK') {
										for ( var field in response.fields) {
											fv
											// Show the custom message
											.updateMessage(field, 'blank',
													response.fields[field])
											// Set the field as invalid
											.updateStatus(field, 'INVALID',
													'blank');
										}
									} else {
										// Do whatever you want here
										// such as showing a modal ...
										alert(response.flag);
									}
								})
								.fail(
										function AjaxFailed(XMLHttpRequest,
												textStatus) {
											alert(textStatus);
										}).always(function() {
									alert("finished");
								});
					});

	// validating the log in form
	$('#loginForm')
			// IMPORTANT: You must declare .on('init.field.fv')
			// before calling .formValidation(options)
			.on(
					'init.field.fv',
					function(e, data) {
						// data.fv --> The FormValidation instance
						// data.field --> The field name
						// data.element --> The field element

						var $parent = data.element.parents('.form-group'), $icon = $parent
								.find('.form-control-feedback[data-fv-icon-for="'
										+ data.field + '"]');

						// You can retrieve the icon element by
						// $icon = data.element.data('fv.icon');

						$icon.on('click.clearing', function() {
							// Check if the field is valid or not via the icon
							// class
							if ($icon.hasClass('glyphicon-remove')) {
								// Clear the field
								data.fv.resetField(data.element);
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

	// O yeah .. Ajax is coming all way ^_^ : Phoenix
	// This function will send a post request via ajax to see if the user will
	// be save or not
	// $("#signUpForm").submit(function(event) {
	// alert("Handler for .submit() called.");
	// event.preventDefault();
	// });

});
