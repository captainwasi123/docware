<!DOCTYPE html>
<html lang="en">
<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<title>Login | {{env('APP_NAME')}}</title>
		<meta name="description" content="A responsive bootstrap 4 admin dashboard template by hencework" />
		
		<!-- Favicon -->
		<link rel="shortcut icon" href="favicon.ico">
		<link rel="icon" href="favicon.ico" type="image/x-icon">
		
		<!-- Toggles CSS -->
		<link href="{{URL::to('/public/')}}/vendors4/jquery-toggles/css/toggles.css" rel="stylesheet" type="text/css">
		<link href="{{URL::to('/public/')}}/vendors4/jquery-toggles/css/themes/toggles-light.css" rel="stylesheet" type="text/css">
		
		<!-- Custom CSS -->
		<link href="{{URL::to('/public')}}/dist/css/style.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		
		
		<!-- HK Wrapper -->
		<div class="hk-wrapper">
			
			<!-- Main Content -->
			<div class="hk-pg-wrapper hk-auth-wrapper">
				<header class="d-flex justify-content-end align-items-center">
					<div class="btn-group btn-group-sm">
						<a href="#" class="btn btn-outline-secondary">Help</a>
						<a href="#" class="btn btn-outline-secondary">About Us</a>
					</div>
				</header>
				<div class="container-fluid">
					<div class="row">
						<div class="col-xl-12 pa-0">
							<div class="auth-form-wrap pt-xl-0 pt-70">
								<div class="auth-form w-xl-30 w-lg-55 w-sm-75 w-100">
									<a class="auth-brand text-center d-block mb-10" href="#">
										<img src="{{URL::to('public/dist/img/Docware-Logo1.png')}}" width="200px">
									</a>
									<form method="post" action="{{ URL::to('/login') }}">
										{{ csrf_field() }}
										<h3 class="display-10 text-center mb-10">Authentication</h3>

										@if (session()->has('error'))
											<div class="alert alert-danger" role="alert">
		                                        <strong>Alert.! </strong> &nbsp;{{session()->get('error')}}
		                                    </div>
										@endif
										
										<div class="form-group">
											<input class="form-control" name="username" placeholder="Username" type="text" required>
										</div>
										<div class="form-group">
											<div class="input-group">
												<input class="form-control" name="password" placeholder="Password" type="password" required>
												<div class="input-group-append">
													<span class="input-group-text"><span class="feather-icon"><i data-feather="eye-off"></i></span></span>
												</div>
											</div>
										</div>
										<div class="custom-control custom-checkbox mb-25">
											<input class="custom-control-input" id="same-address" type="checkbox" checked>
											<label class="custom-control-label font-14" for="same-address">Keep me logged in</label>
										</div>
										<button class="btn btn-primary btn-block" type="submit">Login</button>
										
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /Main Content -->
		
		</div>
		<!-- /HK Wrapper -->
		
		<!-- JavaScript -->
		
		<!-- jQuery -->
		<script src="{{URL::to('/public')}}/vendors4/jquery/dist/jquery.min.js"></script>
		
		<!-- Bootstrap Core JavaScript -->
		<script src="{{URL::to('/public')}}/vendors4/popper.js/dist/umd/popper.min.js"></script>
		<script src="{{URL::to('/public')}}/vendors4/bootstrap/dist/js/bootstrap.min.js"></script>
		
		<!-- Slimscroll JavaScript -->
		<script src="{{URL::to('/public')}}/dist/js/jquery.slimscroll.js"></script>
	
		<!-- Fancy Dropdown JS -->
		<script src="{{URL::to('/public')}}/dist/js/dropdown-bootstrap-extended.js"></script>
		
		<!-- FeatherIcons JavaScript -->
		<script src="{{URL::to('/public')}}/dist/js/feather.min.js"></script>

		<!-- Toastr JS -->
    	<script src="{{URL::to('/')}}/vendors4/jquery-toast-plugin/dist/jquery.toast.min.js"></script>
		
		<!-- Init JavaScript -->
		<script src="{{URL::to('/public')}}/dist/js/init.js"></script>

	</body>
</html>