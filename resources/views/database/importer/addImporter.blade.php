@extends('support.master')
@section('title', 'Add Importer')
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
                    <h4 class="hk-pg-title"><span class="pg-title-icon"><i class="icon-user-follow"></i></span>Add Importer</h4>
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
		                                    	<form method="post" action="{{ URL::to('/database/importer/insert')}}">
		                                    		{{ csrf_field() }}
		                                        	<div class="row">
                                                        <div class="col-md-12">
                                                            <span class="label_span">Name</span><span class="required_span">*</span>
                                                            <input type="text" placeholder="" class="form-control form-control-sm" name="name" required>
                                                        </div>
		                                        	</div>
		                                        	<br>
		                                        	<div class="row">
			                                        	<div class="col-md-6">
				                                        	<span class="label_span">Address</span>
                                                            <textarea class="form-control form-control-sm" name="address"></textarea>
			                                        	</div>
                                                        <div class="col-md-6">
                                                            <span class="label_span">Remarks</span>
                                                            <textarea class="form-control form-control-sm" name="remarks"></textarea>
                                                        </div>
			                                        </div> 
                                                    <br>
                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <span class="label_span">Phone</span>
                                                            <input type="text" data-mask="999-99999999" class="form-control form-control-sm" name="phone">
                                                        </div>
                                                        <div class="col-md-4">
                                                            <span class="label_span">Fax</span>
                                                            <input type="text" data-mask="9999-9999999" class="form-control form-control-sm" name="fax">
                                                        </div>
                                                        <div class="col-md-4">
                                                            <span class="label_span">City</span><span class="required_span">*</span><span class="float-right"><a href="{{URL::to('/database/city/add')}}" target="_blank">Add</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript::void()" onclick="getCity()">Load</a></span>
                                                            <select class="form-control form-control-lg select2" id="fCity" name="city_id" required>
                                                                <option value="">Select</option>
                                                                @foreach($cities as $key => $cit_data)
                                                                    <option value="{{$cit_data->id}}">{{$cit_data->name}}</option>
                                                                @endforeach
                                                            </select>
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
                                                        <div class="col-md-3">
                                                            <span class="label_span">Cont. Person</span>
                                                            <input type="text" class="form-control form-control-sm" name="cont_person">
                                                        </div>
                                                        <div class="col-md-3">
                                                            <span class="label_span">Position</span>
                                                            <input type="text" class="form-control form-control-sm" name="cont_position">
                                                        </div>
                                                        <div class="col-md-3">
                                                            <span class="label_span">Finan. Person</span>
                                                            <input type="text" class="form-control form-control-sm" name="fin_person">
                                                        </div>
                                                        <div class="col-md-3">
                                                            <span class="label_span">Position</span>
                                                            <input type="text" class="form-control form-control-sm" name="fin_position">
                                                        </div>

                                                    </div>
                                                    <br>
                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <span class="label_span">Import License</span>
                                                            <input type="text" class="form-control form-control-sm" name="import_license">
                                                        </div>
                                                        <div class="col-md-4">
                                                            <span class="label_span">License Validity</span>
                                                            <input class="form-control form-control-sm" type="date" name="lic_validity" />
                                                        </div>
                                                        <div class="col-md-4">
                                                            <span class="label_span">NTN No.</span>
                                                            <input type="text" class="form-control form-control-sm" name="ntn_no">
                                                        </div>

                                                    </div>
                                                    <br>
                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <span class="label_span">Clearing Agent</span>
                                                            <input type="text" class="form-control form-control-sm" name="clearing_agent">
                                                        </div>
                                                        <div class="col-md-4">
                                                            <span class="label_span">CCIE Registration</span>
                                                            <input class="form-control form-control-sm" type="text" name="ccie_regist" />
                                                        </div>
                                                        <div class="col-md-4">
                                                            <span class="label_span">Sales Man</span>
                                                            <input type="text" class="form-control form-control-sm" name="sales_man">
                                                        </div>
                                                    </div>
                                                    <br>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <span class="label_span">Customer Type</span>
                                                            <div class="block-border">
                                                                <div class="custom-control custom-checkbox block">
                                                                    <input type="checkbox" class="custom-control-input" id="customCheck1" value="1" name="cust_type[]">
                                                                    <label class="custom-control-label" for="customCheck1">Importer</label>
                                                                </div>
                                                                <div class="custom-control custom-checkbox block">
                                                                    <input type="checkbox" class="custom-control-input" id="customCheck2" value="2" name="cust_type[]">
                                                                    <label class="custom-control-label" for="customCheck2">Is IMP Client</label>
                                                                </div>
                                                                <div class="custom-control custom-checkbox block">
                                                                    <input type="checkbox" class="custom-control-input" id="customCheck3" value="3" name="cust_type[]">
                                                                    <label class="custom-control-label" for="customCheck3">Forwarder</label>
                                                                </div>
                                                                <div class="custom-control custom-checkbox block">
                                                                    <input type="checkbox" class="custom-control-input" id="customCheck4" value="4" name="cust_type[]">
                                                                    <label class="custom-control-label" for="customCheck4">Indentor</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
		                                        	<div class="row">
		                                        		<hr>
		                                        	</div>
			                                        <div class="row">
			                                        	<div class="col-md-12 right_side">
			                                        		<button type="submit" class="btn btn-primary">&nbsp;&nbsp;Save&nbsp;&nbsp;</button>
			                                        		<a href="{{URL::to('/database/importer')}}" class="btn btn-default">Cancel</a>
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
    <script src="/vendors4/moment/min/moment.min.js"></script>
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