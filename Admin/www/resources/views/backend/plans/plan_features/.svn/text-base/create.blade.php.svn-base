@extends('backend.layouts.app')

@section('title', __('labels.backend.plan_feature.management') . ' | ' . __('labels.backend.plan_feature.create'))

@section('breadcrumb-links')
    @include('backend.plans.plan_features.includes.breadcrumb-links')
@endsection

@section('content')
     {!! Form::open(['route' => ['admin.feature.store'], 'id'=>'myForm', 'files'=>true]) !!}
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-5">
                        <h4 class="card-title mb-0">
                            @lang('labels.backend.plan_feature.management')
                            <small class="text-muted">@lang('labels.backend.plan_feature.create')</small>
                        </h4>
                    </div><!--col-->
                </div><!--row-->

                <hr>

                <div class="row mt-4 mb-4">
                        @include('backend.plans.plan_features.form')
                </div><!--row-->
            </div><!--card-body-->

            <div class="card-footer clearfix">
                <div class="row">
                    <div class="col">
                        {{ form_cancel(route('admin.feature.index'), __('buttons.general.cancel')) }}
                    </div><!--col-->

                    <div class="col text-right">
                        {{ form_submit(__('buttons.general.crud.create')) }}
                    </div><!--col-->
                </div><!--row-->
            </div><!--card-footer-->
        </div><!--card-->
    {!! Form::close() !!}
@endsection
