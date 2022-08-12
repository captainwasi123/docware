@extends('support.master')
@section('title', 'Edit Terminal / Warehouse')
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
                    <h4 class="hk-pg-title"><span class="pg-title-icon"><i class="icon-user-follow"></i></span>Edit Terminal / Warehouse</h4>
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
		                                    	<form method="post" action="{{ URL::to('/database/terminal/update')}}">
		                                    		{{ csrf_field() }}
                                                    <input type="hidden" name="terminal_id" value="{{ base64_encode($data['id']) }}">
		                                        	<div class="row">
			                                        	<div class="col-md-12">
				                                        	<span class="label_span">Name</span>
				                                            <input type="text" placeholder="" class="form-control form-control-sm" value="{{ $data['name'] }}" name="name" required>
			                                        	</div>
			                                        </div> 
                                                    <br>
                                                    <div class="row">
                                                        <div class="col-md-5">
                                                            <span class="label_span">Short Name</span>
                                                            <input type="text" class="form-control form-control-sm" value="{{ $data['short_name'] }}" name="short_name" required>
                                                        </div>
                                                        <div class="col-md-7">
                                                            <span class="label_span">City</span><span class="required_span">*</span><span class="float-right"><a href="javascript::void()" onclick="getCity()">Load</a></span>
                                                            <select class="form-control form-control-lg select2" id="fCity" name="city_id" required>
                                                                <option value="">Select</option>
                                                                @foreach($cities as $key => $cit_data)
                                                                    <option value="{{$cit_data->id}}"
                                                                        @if($cit_data->id == $data['city_id'])
                                                                            selected 
                                                                        @endif
                                                                    >{{$cit_data->name}}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <br>
		                                        	<div class="row">
		                                        		<hr>
		                                        	</div>
			                                        <br>
			                                        <div class="row">
			                                        	<div class="col-md-12 right_side">
			                                        		<button type="submit" class="btn btn-primary">&nbsp;&nbsp;Update&nbsp;&nbsp;</button>
			                                        		<a href="{{URL::to('/database/terminal')}}" class="btn btn-default">Cancel</a>
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

@endsection