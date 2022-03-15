<cfoutput>
<!DOCTYPE html>
	<html lang="en">
		<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
			<title>Payment Portal</title>
			<base href="#event.getHTMLBaseURL()#" />
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
			<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.39.0/css/tempusdominus-bootstrap-4.min.css">
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/icheck-bootstrap/3.0.1/icheck-bootstrap.min.css">
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqvmap/1.5.1/jqvmap.min.css">
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/overlayscrollbars/1.13.1/css/OverlayScrollbars.min.css">
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-daterangepicker/3.0.5/daterangepicker.css">
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.20/summernote-bs4.min.css">
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.21/css/dataTables.bootstrap4.min.css">
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/datatables.net-responsive-bs4/2.2.9/responsive.bootstrap4.min.css">
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/datatables.net-buttons-bs4/2.2.2/buttons.bootstrap4.min.css">
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/admin-lte/3.2.0/css/adminlte.min.css">	
		</head>
		
		<body class="hold-transition layout-top-nav">
			<div class="wrapper">
				<nav class="main-header navbar navbar-expand-md navbar-dark"style="background-color: ##E65B7A">
    				<div class="container">
						<a href="#event.buildLink( "main" )#" class="navbar-brand">
							<span class="brand-text font-weight-light">Payment Portal</span>
						</a>
						<button class="navbar-toggler order-1" type="button" data-toggle="collapse" data-target="##navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
							<!---<span class="navbar-toggler-icon"></span>--->
						</button>

						<div class="collapse navbar-collapse order-3" id="navbarCollapse">
							<ul class="navbar-nav">
							</ul>
						</div>

						<ul class="order-1 order-md-3 navbar-nav navbar-no-expand ml-auto">
							<!---right side nav--->
						</ul>

					</div>
				</nav>
			
				<div class="content-wrapper">
					#renderView()#
				</div>

				<footer class="main-footer">
					<strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong>
					All rights reserved.
					<div class="float-right d-none d-sm-inline-block">
						<b>Version</b> 3.2.0
					</div>
				</footer>

				<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script
				<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script
				<script>
					$.widget.bridge('uibutton', $.ui.button)
				</script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.1/js/bootstrap.bundle.min.js"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.1/chart.min.js"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-sparklines/2.1.2/jquery.sparkline.js"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/jqvmap/1.5.1/jquery.vmap.min.js"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/jqvmap/1.5.1/maps/jquery.vmap.usa.js"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/jQuery-Knob/1.2.13/jquery.knob.min.js"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-daterangepicker/3.0.5/daterangepicker.js"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.39.0/js/tempusdominus-bootstrap-4.min.js"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.20/summernote-bs4.min.js"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/overlayscrollbars/1.13.1/js/jquery.overlayScrollbars.min.js"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/admin-lte/3.2.0/js/adminlte.js"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/dagre-d3/0.4.17/demo/demo.js"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/admin-lte/3.2.0/js/pages/dashboard.js"></script>

				<script src="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.21/js/jquery.dataTables.min.js"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.21/js/dataTables.bootstrap4.min.js"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/datatables-responsive/2.2.9/dataTables.responsive.min.js"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/datatables.net-responsive-bs4/2.2.9/responsive.bootstrap4.min.js"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/datatables.net-buttons/2.2.2/js/dataTables.buttons.min.js"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/datatables.net-buttons-bs4/2.2.2/buttons.bootstrap4.min.js"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.7.1/jszip.min.js"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.3.0-beta.1/pdfmake.min.js"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.66/vfs_fonts.js"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/datatables.net-buttons/2.2.2/js/buttons.html5.min.js"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/datatables.net-buttons/2.2.2/js/buttons.print.min.js"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/datatables.net-buttons/2.2.2/js/buttons.colVis.min.js"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/additional-methods.min.js"></script>
			

<script src="https://cdnjs.cloudflare.com/ajax/libs/autonumeric/4.0.3/autoNumeric.js"></script>
				

				
				<script>
					//currency formatter
					$(document).ready(function() {
					  var autoNumericInstance = new AutoNumeric('##amount', AutoNumeric.getPredefinedOptions().numericPos);
					  	$('##amount').on('keyup', function() {
					    	$('##output').val(autoNumericInstance.getNumericString());
						});
					});
					
					//navbar script
					$(function() {
						// activate all drop downs
						$('.dropdown-toggle').dropdown();
						// Tooltips
						$("[rel=tooltip]").tooltip();
					})

					//Datatable script
  					$(function () {
    					$("##example1").DataTable({
							"responsive": true, "lengthChange": false, "autoWidth": false, "searching": false,
							// "buttons": ["copy", "pdf", "print"]
    					}).buttons().container().appendTo('##example1_wrapper .col-md-6:eq(0)');
  					});

					//currency formatter
					$(function() {
  						$('##amount').maskMoney();
  					})

					//find student validaition
					$(function () {
						$('##searchStudent').validate({
							rules: {
								stud_id: {
									required: true,
									number: true,
									minlength: 12,
									maxlength: 12
								}
							},
							messages: {
								stud_id: {
									required: "Please enter student ID number",
									number: "only numbers are allowed",
									minlength: "ID number is too short",
									maxlength: "ID number is too long"
								}
							},
							errorElement: 'span',
							errorPlacement: function (error, element) {
							error.addClass('invalid-feedback');
							element.closest('.form-group').append(error);
							},
							highlight: function (element, errorClass, validClass) {
							$(element).addClass('is-invalid');
							},
							unhighlight: function (element, errorClass, validClass) {
							$(element).removeClass('is-invalid');
							}
						}),

						//Payment Form Validation
						$('##paymentValidation').validate({
							rules: {
								StudentID: {
									required: true,
									number: true,
									minlength: 12,
									maxlength: 12
								},
								FirstName: {
									required: true,
									lettersonly: true
								},
								MiddleName: {
									required: true,
									lettersonly: true
								},
								LastName: {
									required: true,
									lettersonly: true
								},
								EmailAddress: {
									required: true,
									email: true
								},
								Address: {
									required: true
								},
								amount: {
									required: true,
									number: true
								},
								procid: {
									required: true
								},
								Department: {
									required: true
								},
								description: {
									required: true
								},
								proof_of_payment: {
									required: true,
									extension: "jpg|jpeg|jfif|pjpeg|pjp|png|svg|webp"
								}
								
							},
							messages: {
									proof_of_payment: {
										extension: "file type not supported" 
								}
							},
							errorElement: 'span',
							errorPlacement: function (error, element) {
							error.addClass('invalid-feedback');
							element.closest('.form-group').append(error);
							},
							highlight: function (element, errorClass, validClass) {
							$(element).addClass('is-invalid');
							},
							unhighlight: function (element, errorClass, validClass) {
							$(element).removeClass('is-invalid');
							}
						});
					});
				</script>
			</div>
		</body>
	</html>
</cfoutput>
