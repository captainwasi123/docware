@extends('support.master')
@section('title', 'Add Foreign Agent')
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
                    <h4 class="hk-pg-title"><span class="pg-title-icon"><i class="icon-user-follow"></i></span>Add Foreign Agent</h4>
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
	                                    	<div class="col-md-1">
	                                    		&nbsp;
	                                    	</div>
	                                        <div class="col-md-10">
		                                    	<form method="post" action="{{ URL::to('/database/foreignAgent/insert')}}">
		                                    		{{ csrf_field() }}
		                                        	<div class="row">
                                                        <div class="col-md-8">
                                                            <span class="label_span">Name</span><span class="required_span">*</span>
                                                            <input type="text" placeholder="" class="form-control form-control-sm" name="name" required>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <span class="label_span">Short Name</span>
                                                            <input type="text" placeholder="" class="form-control form-control-sm" name="short_name">
                                                        </div>
		                                        	</div>
		                                        	<br>
		                                        	<div class="row">
			                                        	<div class="col-md-6">
				                                        	<span class="label_span">Address</span>
                                                            <textarea class="form-control form-control-sm" name="address"></textarea>
			                                        	</div>
                                                        <div class="col-md-6">
                                                            <span class="label_span">Bank Details</span>
                                                            <textarea class="form-control form-control-sm" name="bank_details"></textarea>
                                                        </div>
			                                        </div> 
                                                    <br>
                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <span class="label_span">Phone</span>
                                                            <input type="text" data-mask="999-99999999" class="form-control form-control-sm" name="phone">
                                                        </div>
                                                        <div class="col-md-4">
                                                            <span class="label_span">Mobile</span>
                                                            <input type="text" data-mask="9999-9999999" class="form-control form-control-sm" name="mobile">
                                                        </div>
                                                        <div class="col-md-4">
                                                            <span class="label_span">Fax</span>
                                                            <input type="text" data-mask="9999-9999999" class="form-control form-control-sm" name="fax">
                                                        </div>
                                                    </div>
                                                    <br>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <span class="label_span">Email</span>
                                                            <input type="email" class="form-control form-control-sm" name="email">
                                                        </div>
                                                        <div class="col-md-6">
                                                            <span class="label_span">Website</span>
                                                            <input type="text" class="form-control form-control-sm" name="website">
                                                        </div>
                                                    </div>
                                                    <br>

                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <span class="label_span">Country</span><span class="required_span">*</span><span class="float-right"><a href="javascript::void()" onclick="getCountry()">Load</a></span> 
                                                            <select class="form-control form-control-lg select2" id="fCountry" name="country_id" required>
                                                                <option value="">Select</option>
                                                                @foreach($countries as $key => $count_data)
                                                                    <option value="{{$count_data->id}}">{{$count_data->name}}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <span class="label_span">City</span><span class="required_span">*</span><span class="float-right"><a href="javascript::void()" onclick="getCity()">Load</a></span>
                                                            <select class="form-control form-control-lg select2" id="fCity" name="city_id" required>
                                                                <option value="">Select</option>
                                                                @foreach($cities as $key => $cit_data)
                                                                    <option value="{{$cit_data->id}}">{{$cit_data->name}}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <span class="label_span">Cont. Person</span>
                                                            <input type="text" class="form-control form-control-sm" name="cont_person">
                                                        </div>

                                                    </div>
                                                    <br><hr><br>
                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <span class="label_span">Currency</span><span class="required_span">*</span>
                                                            <select class="form-control form-control-lg select2" name="currency" required>
                                                                <option value="USD">USD</option>
                                                            </select>
                                                        </div>
                                                        <div class="col-md-2">
                                                        </div>
                                                        <div class="col-md-1">
                                                            <label>Type</label><span class="required_span">*</span>
                                                            <div class="custom-control custom-radio">
                                                                <input type="radio" id="customRadio1" name="type" value="1" class="custom-control-input" checked>
                                                                <label class="custom-control-label" for="customRadio1">Local</label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-2">
                                                            <label>&nbsp;</label>
                                                            <div class="custom-control custom-radio">
                                                                <input type="radio" id="customRadio2" name="type" value="2" class="custom-control-input">
                                                                <label class="custom-control-label" for="customRadio2">Foreign Agent</label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-2">
                                                        </div>
                                                        <div class="col-md-4">
                                                            <br>
                                                            <span class="label_span">NTN No.</span>
                                                            <input type="text" class="form-control form-control-sm" name="ntn_no">
                                                        </div>
                                                        <div class="col-md-2">
                                                        </div>
                                                        <div class="col-md-4">
                                                            <br>
                                                            <span class="label_span">Terminal</span><span class="float-right"><a href="javascript:void(0)" onclick="getTerminal2()">Load</a></span>
                                                            <select class="form-control form-control-lg select2" id="fTerminal2" name="terminal_id">
                                                                <option value="">Select</option>
                                                                @foreach($terminal as $key => $ter_data)
                                                                    <option value="{{$ter_data->id}}">{{$ter_data->name}}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>
                                                        <div class="col-md-2">
                                                        </div>
                                                    </div>
		                                        	<div class="row">
		                                        		<hr>
		                                        	</div>
			                                        <br>
			                                        <div class="row">
			                                        	<div class="col-md-12 right_side">
			                                        		<button type="submit" class="btn btn-primary">&nbsp;&nbsp;Save&nbsp;&nbsp;</button>
			                                        		<a href="{{URL::to('/database/foreignAgent')}}" class="btn btn-default">Cancel</a>
			                                        	</div>
			                                        </div>
		                                    	</form>
	                                        </div>
	                                    	<div class="col-md-1">
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