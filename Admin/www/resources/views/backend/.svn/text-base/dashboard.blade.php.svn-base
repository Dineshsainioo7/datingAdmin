@extends('backend.layouts.app')
@section('title', app_name() . ' | ' . __('strings.backend.dashboard.title'))
@section('content')
<div class="row">
    <div class="col">
        <div class="card">
            <div class="card-header">
                <strong>@lang('strings.backend.dashboard.welcome') {{ $logged_in_user->name }}!</strong>
                </div><!--card-header-->
                <div class="card-body">
                    {!! __('strings.backend.welcome') !!}
                    </div><!--card-body-->
                    </div><!--card-->
                    </div><!--col-->
                    </div><!--row-->
               
                    <div class="row">
                        <div class="col-md-4 col-sm-6 mb-3">
                            <div class="card level-card level-all ">
                                <div class="card-header">
                                    <span class="level-icon"><i class="fa fa-user" aria-hidden="true"></i></span> New users
                                </div>
                                <div class="card-body">
                                    {{ $newUser }} - New users
                                    {{-- <div class="progress">
                                        <div class="progress-bar" style="width: 100%"></div>
                                    </div> --}}
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 mb-3">
                            <div class="card level-card level-emergency level-empty">
                                <div class="card-header">
                                    <span class="level-icon"><i class="fa fa-users" aria-hidden="true"></i></span> Total Users
                                </div>
                                <div class="card-body">
                                    {{ $totalUser }} - Total Users
                                    {{-- <div class="progress">
                                        <div class="progress-bar" style="width: 0%"></div>
                                    </div> --}}
                                </div>
                            </div>
                        </div>
                        {{-- <div class="col-md-4 col-sm-6 mb-3">
                            <div class="card level-card level-alert level-empty">
                                <div class="card-header">
                                    <span class="level-icon"><i class="fa fa-paper-plane" aria-hidden="true"></i></span> Total Plans
                                </div>
                                <div class="card-body">
                                    {{ $totalPlan }} - Total Plans
                                    
                                </div>
                            </div>
                        </div> --}}
                        
                        
                        
                        
                        
                    </div>
                    @endsection