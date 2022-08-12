@extends('support.master')
@section('title', 'Edit Foreign Agent')
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
                    <h4 class="hk-pg-title"><span class="pg-title-icon"><i class="icon-user-follow"></i></span>Edit Foreign Agent</h4>
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
		                                    	<form method="post" action="{{ URL::to('/database/foreignAgent/update')}}">
		                                    		{{ csrf_field() }}
                                                    <input type="hidden" name="agent_id" value="{{ base64_encode($data['id']) }}">
		                                        	<div class="row">
                                                        <div class="col-md-8">
                                                            <span class="label_span">Name</span><span class="required_span">*</span>
                                                            <input type="text" placeholder="" class="form-control form-control-sm" value="{{ $data['name'] }}" name="name" required>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <span class="label_span">Short Name</span>
                                                            <input type="text" placeholder="" class="form-control form-control-sm" value="{{ $data['short_name'] }}" name="short_name">
                                                        </div>
		                                        	</div>
		                                        	<br>
		                                        	<div class="row">
			                                        	<div class="col-md-6">
				                                        	<span class="label_span">Address</span>
                                                            <textarea class="form-control form-control-sm" name="address">{{ $data['address'] }}</textarea>
			                                        	</div>
                                                        <div class="col-md-6">
                                                            <span class="label_span">Bank Details</span>
                                                            <textarea class="form-control form-control-sm" name="bank_details">{{ $data['bank_details'] }}</textarea>
                                                        </div>
			                                        </div> 
                                                    <br>
                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <span class="label_span">Phone</span>
                                                            <input type="text" data-mask="999-99999999" class="form-control form-control-sm" value="{{ $data['phone'] }}" name="phone">
                                                        </div>
                                                        <div class="col-md-4">
                                                            <span class="label_span">Mobile</span>
                                                            <input type="text" data-mask="9999-9999999" class="form-control form-control-sm" value="{{ $data['mobile'] }}" name="mobile">
                                                        </div>
                                                        <div class="col-md-4">
                                                            <span class="label_span">Fax</span>
                                                            <input type="text" data-mask="9999-9999999" class="form-control form-control-sm" value="{{ $data['fax'] }}" name="fax">
                                                        </div>
                                                    </div>
                                                    <br>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <span class="label_span">Email</span>
                                                            <input type="email" class="form-control form-control-sm" value="{{ $data['email'] }}" name="email">
                                                        </div>
                                                        <div class="col-md-6">
                                                            <span class="label_span">Website</span>
                                                            <input type="text" class="form-control form-control-sm" value="{{ $data['website'] }}" name="website">
                                                        </div>
                                                    </div>
                                                    <br>

                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <span class="label_span">Country</span><span class="required_span">*</span><span class="float-right"><a href="javascript::void()" onclick="getCountry()">Load</a></span>
                                                            <select class="form-control form-control-lg select2" id="fCountry" name="country_id" required>
                                                                <option value="">Select</option>
                                                                @foreach($countries as $key => $count_data)
                                                                    <option value="{{$count_data->id}}"
                                                                        @if($count_data->id == $data['country_id'])
                                                                            selected
                                                                        @endif
                                                                    >{{$count_data->name}}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>
                                                        <div class="col-md-4">
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
                                                        <div class="col-md-4">
                                                            <span class="label_span">Cont. Person</span>
                                                            <input type="text" class="form-control form-control-sm" value="{{ $data['cont_person'] }}" name="cont_person">
                                                        </div>

                                                    </div>
                                                    <br><hr><br>
                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <span class="label_span">Currency</span><span class="required_span">*</span>
                                                            <select class="form-control form-control-lg select2" name="currency" required>
                                                                <option value="USD"
                                                                        @if($data['city_id'] == 'USD')
                                                                            selected
                                                                        @endif
                                                                    >USD</option>
                                                            </select>
                                                        </div>
                                                        <div class="col-md-2">
                                                        </div>
                                                        <div class="col-md-1">
                                                            <label>Type</label><span class="required_span">*</span>
                                                            <div class="custom-control custom-radio">
                                                                <input type="radio" id="customRadio1" name="type" value="1" class="custom-control-input" @if($data['type'] == '1') checked @endif>
                                                                <label class="custom-control-label" for="customRadio1">Local</label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-2">
                                                            <label>&nbsp;</label>
                                                            <div class="custom-control custom-radio">
                                                                <input type="radio" id="customRadio2" name="type" value="2" class="custom-control-input" @if($data['type'] == '2') checked @endif>
                                                                <label class="custom-control-label" for="customRadio2">Foreign Agent</label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-2">
                                                        </div>
                                                        <div class="col-md-4">
                                                            <br>
                                                            <span class="label_span">NTN No.</span>
                                                            <input type="text" class="form-control form-control-sm" value="{{ $data['ntn_no'] }}" name="ntn_no">
                                                        </div>
                                                        <div class="col-md-2">
                                                        </div>
                                                        <div class="col-md-4">
                                                            <br>
                                                            <span class="label_span">Terminal</span><span class="float-right"><a href="javascript::void()" onclick="getTerminal2()">Load</a></span>
                                                            <select class="form-control form-control-lg select2" id="fTerminal2" name="terminal_id">
                                                                <option value="">Select</option>
                                                                @foreach($terminal as $key => $ter_data)
                                                                    <option value="{{$ter_data->id}}"
                                                                        @if($ter_data->id == $data['terminal_id'])
                                                                            selected
                                                                        @endif
                                                                    >{{$ter_data->name}}</option>
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
			                                        		<button type="submit" class="btn btn-primary">&nbsp;&nbsp;Update&nbsp;&nbsp;</button>
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