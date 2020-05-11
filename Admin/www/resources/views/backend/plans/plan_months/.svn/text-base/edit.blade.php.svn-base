@extends('backend.layouts.app')

@section('title', __('labels.backend.plan_month.management') . ' | ' . __('labels.backend.plan_month.edit'))

@section('breadcrumb-links')
    @include('backend.plans.plan_months.includes.breadcrumb-links')
@endsection

@section('content')
     {{ Form::model($month, ['route' => ['admin.month.update',$month->id], 'class' => 'form-horizontal', 'role' => 'form', 'method' => 'PATCH', 'id' => 'edit-role', 'files' => true]) }}
    
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-5">
                        <h4 class="card-title mb-0">
                            @lang('labels.backend.plan_month.management')
                            <small class="text-muted">@lang('labels.backend.plan_month.edit')</small>
                        </h4>
                    </div><!--col-->
                </div><!--row-->

                <hr>

                <div class="row mt-4 mb-4">
                       @include('backend.plans.plan_months.form')
                </div><!--row-->
            </div><!--card-body-->

            <div class="card-footer clearfix">
                <div class="row">
                    <div class="col">
                        {{ form_cancel(route('admin.month.index'), __('buttons.general.cancel')) }}
                    </div><!--col-->

                    <div class="col text-right">
                        {{ form_submit(__('buttons.general.crud.update')) }}
                    </div><!--col-->
                </div><!--row-->
            </div><!--card-footer-->
        </div><!--card-->
    {!! Form::close() !!}
@endsection
