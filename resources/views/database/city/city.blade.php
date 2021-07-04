@extends('support.master')
@section('title', 'City List')
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
                    <h4 class="hk-pg-title"><span class="pg-title-icon"><i class="icon-people"></i></span>City list</h4>
                    <div class="right_side">
                    	<a href="{{ URL::to('/database/city/add') }}" class="btn btn-primary"><i class="icon-user-follow"></i>&nbsp;Add City</a>
                    </div>
                </div>
                <!-- /Title -->

                <!-- Row -->
                <div class="row">
                    <div class="col-xl-12">
                        <section class="hk-sec-wrapper">
                            <div class="row">
                                <div class="col-sm">
                                    <div class="table-wrap">
                                        <div class="table-responsive">
                                            <table id="datable_1" class="table mb-0">
                                                <thead>
                                                    <tr>
                                                        <th>#</th>
                                                        <th>Name</th>
                                                        <th>Code</th>
                                                        <th>Country</th>
                                                        <th>Type</th>
                                                        <th>Created by</th>
                                                        <th>Created at</th>
                                                        <th>Action</th>
                                                    </tr>
                                                </thead>
                                                <tfoot>
                                                    <tr>
                                                        <th>#</th>
                                                        <th>Name</th>
                                                        <th>Code</th>
                                                        <th>Country</th>
                                                        <th>Type</th>
                                                        <th>Created by</th>
                                                        <th>Created at</th>
                                                        <th>Action</th>
                                                    </tr>
                                                </tfoot>
                                                <tbody>
                                                	@php
                                                		$s=1;
                                                	@endphp
                                                	@foreach($databelt as $key => $data)
                                                    <tr>
                                                        <th scope="row">{{$s}}</th>
                                                        <td>{{$data->name}}</td>
                                                        <td>{{$data->paccs_code}}</td>
                                                        <td>
                                                            @if(isset($data->country->name))
                                                                {{$data->country->name}}
                                                            @endif
                                                        </td>
                                                        <td>{{$data->type}}</td>
                                                        <td>
                                                            @if(isset($data->user->username))
                                                                {{$data->user->username}}
                                                            @endif
                                                        </td>
                                                        <td>{{date("d-M-Y", strtotime($data['created_at']))}}</td>
														<td>
                                                            <div class="btn-group">
                                                                <div class="dropdown">
                                                                    <a href="#" aria-expanded="false" data-toggle="dropdown" class="btn btn-link dropdown-toggle btn-icon-dropdown"><span class="feather-icon"><i data-feather="server"></i></span> <span class="caret"></span></a>
                                                                    <div role="menu" class="dropdown-menu">
                                                                        <a class="dropdown-item" href="{{URL::to('/')}}/database/city/edit/{{ base64_encode($data->id) }}"><i class="fa fa-edit"></i>&nbsp;Edit</a>            
                                                                        <div class="dropdown-divider"></div>
                                                                        <a class="dropdown-item tst2" data-id="{{ base64_encode($data->id) }}" href="#"><i class="fa fa-trash"></i>&nbsp;&nbsp;Delete</a>
                                                                    </div>
                                                                </div>
                                                            </div>
														</td>
                                                    </tr>
                                                    @php
                                                    	$s++;
                                                    @endphp
                                                    @endforeach
                                                </tbody>
                                            </table>
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
    
    <!-- Data Table CSS -->
    <link href="/vendors4/datatables.net-dt/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
    <link href="/vendors4/datatables.net-responsive-dt/css/responsive.dataTables.min.css" rel="stylesheet" type="text/css" />

    <style type="text/css">
        .col-sm{
            padding-left: 0px !important;
        }
        .dataTables_wrapper{
            width: 98% !important;
        }
        .table-responsive{
            width: 102% !important;
        }
    </style>
@endsection

@section('addScript')
    <!-- Data Table JavaScript -->
    <script src="/vendors4/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="/vendors4/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
    <script src="/vendors4/datatables.net-dt/js/dataTables.dataTables.min.js"></script>
    <script src="/vendors4/datatables.net-responsive/js/dataTables.responsive.min.js"></script>

    @if (session()->has('success'))
        <script type="text/javascript">
            $.toast({
                text: "<i class='jq-toast-icon glyphicon glyphicon-ok'></i><p><strong>Success.! </strong> &nbsp;{{session()->get('success')}}</p>",
                position: 'top-center',
                loaderBg:'#7a5449',
                class: 'jq-has-icon jq-toast-success',
                hideAfter: 3500, 
                stack: 6,
                showHideTransition: 'fade'
            });
        </script>
    @endif
    <script type="text/javascript">
        $(document).ready(function() {
            "use strict";

            $('#datable_1').DataTable({
                responsive: true,
                autoWidth: false,
                pageLength: 25,
                language: { 
                    search: "",
                    searchPlaceholder: "Search",
                    sLengthMenu: "_MENU_items"
                }
            });

           $('.tst2').on('click',function(e){
                var del_data = $(this).data("id");
                $.toast().reset('all');
                $("body").removeAttr('class');
                $.toast({
                    heading: 'Are you sure you want to delete this city?',
                    text: '<i class="jq-toast-icon ti-alert"></i><a href="{{ URL::to("/")}}/database/city/delete/'+del_data+'" class="btn btn-primary btn-sm">&nbsp;&nbsp;&nbsp;&nbsp;Yes&nbsp;&nbsp;&nbsp;&nbsp;</a>',
                    position: 'top-center',
                    loaderBg:'#7a5449',
                    class: 'jq-has-icon jq-toast-warning',
                    hideAfter: 3500, 
                    stack: 6,
                    showHideTransition: 'fade'
                });
                return false;
            });

        });
    </script>
@endsection