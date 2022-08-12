@extends('support.master')
@section('title', 'Edit Shipping License')
@section('content')
	
            <!-- Breadcrumb -->
            <nav class="hk-breadcrumb" aria-label="breadcrumb">
            	<br>
            </nav>	
            <!-- /Breadcrumb -->

           <!-- Container -->
            <div class="container">
                <!-- Title -->
                <div class="hk-pg-header">
                    <h4 class="hk-pg-title"><span class="pg-title-icon"><i class="icon-user-follow"></i></span>Edit Shipping License</h4>
                </div>
                <!-- /Title -->

                <!-- Row -->
                <div class="row">
                    <div class="col-xl-12">
                        <section class="hk-sec-wrapper">
                            <div class="row">
                                <div class="col-sm">
                                    <div class="row">
                                    		 @if ($errors->any())
                                    		 	<div class="col-md-12">
                                    		 		<div class="alert alert-danger">
														<ul class="error_list">
														     @foreach ($errors->all() as $error)
														         <li>{{$error}}</li>
														     @endforeach
														 </ul>
													 </div>
												 </div>
											 @endif
	                                    	<div class="col-md-2">
	                                    		&nbsp;
	                                    	</div>
	                                        <div class="col-md-8">
		                                    	<form method="post" action="{{route('settings.companies.update')}}">
		                                    		@csrf
                                                    <input type="hidden" name="license_id" value="{{ base64_encode($data['id']) }}">
		                                        	<div class="row">
                                                        <div class="col-md-4">
                                                            <span class="label_span">License Code</span><span class="required_span">*</span>
                                                            <input type="text" class="form-control form-control-sm" value="{{$data['code']}}" name="license_code" required>
                                                        </div>
                                                        <div class="col-md-8">
                                                            <span class="label_span">Name</span><span class="required_span">*</span>
                                                            <input type="text" placeholder="" class="form-control form-control-sm" value="{{$data['name']}}" name="name" required>
                                                        </div>
		                                        	</div>
		                                        	<br>
		                                        	<div class="row">
			                                        	<div class="col-md-12">
				                                        	<span class="label_span">Address</span>
                                                            <textarea class="form-control form-control-sm" name="address">{{$data['address']}}</textarea>
			                                        	</div>
			                                        </div> 
                                                    <br>
                                                    <div class="row">
                                                        <div class="col-md-3">
                                                            <span class="label_span">Phone</span>
                                                            <input type="text" data-mask="999-99999999" class="form-control form-control-sm" value="{{$data['phone']}}" name="phone">
                                                        </div>
                                                        <div class="col-md-3">
                                                            <span class="label_span">Fax</span>
                                                            <input type="text" data-mask="9999-9999999" class="form-control form-control-sm" value="{{$data['fax']}}" name="fax">
                                                        </div>
                                                        <div class="col-md-6">
                                                            <span class="label_span">Email</span>
                                                            <input type="email" class="form-control form-control-sm" value="{{$data['email']}}" name="email">
                                                        </div>
                                                    </div>
                                                    <br>
                                                    <br>
                                                    <div class="row">
                                                        <div class="col-md-12 right_side">
                                                            <span class="label_span"><br></span>
                                                            <button type="submit" class="btn btn-primary">&nbsp;&nbsp;Update&nbsp;&nbsp;</button>&nbsp;
                                                            <a href="{{route('settings.companies')}}" class="btn btn-default">Cancel</a>
                                                        </div>
                                                    </div>
		                                        	<div class="row">
		                                        		<hr>
		                                        	</div>
			                                        <br>
			                                        <div class="row">
			                                        </div>
		                                    	</form>
	                                        </div>
	                                    	<div class="col-md-2">
	                                    		&nbsp;
	                                    	</div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
                <!-- /Row -->
            </div>
            <!-- /Container -->
@endsection

@section('addStyle')
    <!-- select2 CSS -->
    <link href="/vendors4/select2/dist/css/select2.min.css" rel="stylesheet" type="text/css" />
@endsection

@section('addScript')
    <!-- Select2 JavaScript -->
    <script src="/vendors4/select2/dist/js/select2.full.min.js"></script>
    <script type="text/javascript">
        $(".select2").select2();
    </script>

    @if (session()->has('success'))
        <script type="text/javascript">
            $.toast({
                text: "<i class='jq-toast-icon glyphicon glyphicon-ok'></i></i><p><strong>Success.! </strong> &nbsp;{{session()->get('success')}}</p>",
                position: 'top-center',
                loaderBg:'#7a5449',
                class: 'jq-has-icon jq-toast-success',
                hideAfter: 3500, 
                stack: 6,
                showHideTransition: 'fade'
            });
        </script>
    @endif
@endsection