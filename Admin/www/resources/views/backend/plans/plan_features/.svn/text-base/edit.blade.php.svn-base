@extends('backend.layouts.app')

@section('title', __('labels.backend.plan_feature.management') . ' | ' . __('labels.backend.plan_feature.edit'))

@section('breadcrumb-links')
      @include('backend.plans.plan_features.includes.breadcrumb-links')
@endsection

@section('content')
     {{ Form::model($feature, ['route' => ['admin.feature.update',$feature->id], 'class' => 'form-horizontal', 'role' => 'form', 'method' => 'PATCH', 'id' => 'edit-role', 'files' => true]) }}
        
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-5">
                        <h4 class="card-title mb-0">
                            @lang('labels.backend.plans.management')
                            <small class="text-muted">@lang('labels.backend.plans.edit')</small>
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
                        {{ form_submit(__('buttons.general.crud.update')) }}
                    </div><!--col-->
                </div><!--row-->
            </div><!--card-footer-->
        </div><!--card-->
    {!! Form::close() !!}
@endsection
