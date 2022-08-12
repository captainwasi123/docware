@extends('support.master')
@section('title', 'Edit Country')
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
                    <h4 class="hk-pg-title"><span class="pg-title-icon"><i class="icon-user-follow"></i></span>Edit Country</h4>
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
		                                    	<form method="post" action="{{ URL::to('/database/country/update')}}">
		                                    		{{ csrf_field() }}
                                                    <input type="hidden" name="country_id" value="{{ $data['id'] }}">
                                                    <div class="row">
                                                        <div class="col-md-8">
                                                            <span class="label_span">Code</span>
                                                            <input type="text" class="form-control form-control-sm" name="un_code" value="{{ $data['un_code'] }}" required>
                                                        </div>
                                                    </div>
                                                    <br>
		                                        	<div class="row">
			                                        	<div class="col-md-8">
				                                        	<span class="label_span">ISO3 Code</span>
				                                            <input type="text" class="form-control form-control-sm" name="iso_code" value="{{ $data['code'] }}">
			                                        	</div>
		                                        	</div>
		                                        	<br>
		                                        	<div class="row">
			                                        	<div class="col-md-12">
				                                        	<span class="label_span">Name</span>
				                                            <input type="text" placeholder="" class="form-control form-control-sm" name="name" value="{{ $data['name'] }}" required>
			                                        	</div>
			                                        </div> 
		                                        	<div class="row">
		                                        		<hr>
		                                        	</div>
			                                        <br>
			                                        <div class="row">
			                                        	<div class="col-md-12 right_side">
			                                        		<button type="submit" class="btn btn-primary">&nbsp;&nbsp;Update&nbsp;&nbsp;</button>
			                                        		<a href="{{URL::to('/database/country')}}" class="btn btn-default">Cancel</a>
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

@section('addScript')
@endsection