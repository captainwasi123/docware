@extends('support.master')
@section('title', 'Edit City')
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
                    <h4 class="hk-pg-title"><span class="pg-title-icon"><i class="icon-user-follow"></i></span>Edit City</h4>
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
	                                    	<div class="col-md-3">
	                                    		&nbsp;
	                                    	</div>
	                                        <div class="col-md-6">
		                                    	<form method="post" action="{{ URL::to('/database/city/update')}}">
		                                    		{{ csrf_field() }}
                                                    <input type="hidden" name="city_id" value="{{ base64_encode($data['id'])}}">
		                                        	<div class="row">
                                                        <div class="col-md-6">
                                                            <span class="label_span">PACCS Code</span>
                                                            <input type="text" class="form-control form-control-sm" name="paccs_code" value="{{ $data['paccs_code'] }}" required>
                                                        </div>
		                                        	</div>
		                                        	<br>
		                                        	<div class="row">
			                                        	<div class="col-md-12">
				                                        	<span class="label_span">Name</span>
				                                            <input type="text" placeholder="" class="form-control form-control-sm" value="{{ $data['name'] }}" name="name" required>
			                                        	</div>
			                                        </div> 
                                                    <br>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <span class="label_span">Principle Code</span>
                                                            <input type="text" class="form-control form-control-sm"  value="{{ $data['principle_code'] }}" name="principle_code">
                                                        </div>
                                                        <div class="col-md-2 ">
                                                            <label>Type</label>
                                                            <div class="custom-control custom-radio">
                                                                <input type="radio" id="customRadio1" name="type" value="Base" class="custom-control-input"
                                                                    @if($data['type'] == 'Base')
                                                                        checked 
                                                                    @endif
                                                                >
                                                                <label class="custom-control-label" for="customRadio1">Base</label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <label>&nbsp;</label>
                                                            <div class="custom-control custom-radio">
                                                                <input type="radio" id="customRadio2" name="type" value="In-land" class="custom-control-input"
                                                                    @if($data['type'] == 'In-land')
                                                                        checked 
                                                                    @endif
                                                                >
                                                                <label class="custom-control-label" for="customRadio2">In-Land</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <br>

                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <span class="label_span">Country</span><span class="required_span">*</span><span class="float-right"><a href="javascript::void()" onclick="getCountry()">Load</a></span>  
                                                            <select class="form-control form-control-lg select2" id="fCountry" name="country_id" required>
                                                                <option>Select</option>
                                                                @foreach($countries as $key => $count_data)
                                                                    <option value="{{$count_data->id}}"
                                                                        @if($count_data->id == $data['country_id'])
                                                                            selected
                                                                        @endif
                                                                    >{{$count_data->name}}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>
                                                    </div>
		                                        	<div class="row">
		                                        		<hr>
		                                        	</div>
			                                        <br>
			                                        <div class="row">
			                                        	<div class="col-md-12 right_side">
			                                        		<button type="submit" class="btn btn-primary">&nbsp;&nbsp;Update&nbsp;&nbsp;</button>
			                                        		<a href="{{URL::to('/database/city')}}" class="btn btn-default">Cancel</a>
			                                        	</div>
			                                        </div>
		                                    	</form>
	                                        </div>
	                                    	<div class="col-md-3">
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