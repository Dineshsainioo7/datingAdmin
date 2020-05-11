@extends('backend.layouts.app')

@section('title', app_name() . ' | ' . __('labels.backend.plan_feature.management'))

@section('breadcrumb-links')
    @include('backend.plans.plan_features.includes.breadcrumb-links')
@endsection

@section('content')
<div class="card">
    <div class="card-body">
        <div class="row">
            <div class="col-sm-5">
                <h4 class="card-title mb-0">
                    {{ __('labels.backend.plan_feature.management') }} <small class="text-muted">{{ __('labels.backend.plan_feature.active') }}</small>
                </h4>
            </div><!--col-->

            <div class="col-sm-7">
                <div class="btn-toolbar float-right" role="toolbar" aria-label="@lang('labels.general.toolbar_btn_groups')">
					    <a href="{{ route('admin.feature.create') }}" class="btn btn-success ml-1" data-toggle="tooltip" title="@lang('labels.general.create_new')"><i class="fas fa-plus-circle"></i>
					    </a>
				</div><!--btn-toolbar-->
            </div><!--col-->
        </div><!--row-->

        <div class="row mt-4">
            <div class="col">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                        <tr>
                            <th>@lang('S.No')</th>
                            <th>@lang('labels.backend.plan_feature.table.name')</th>
                            <th>@lang('labels.backend.plan_feature.table.plan_name')</th>
                            <th>@lang('labels.backend.plan_feature.table.occurence')</th>
                            <th>@lang('labels.backend.plan_feature.table.created_at')</th>
                            <th>@lang('labels.backend.plan_feature.table.status')</th>
                            <th>@lang('labels.general.actions')</th>
                        </tr>
                        </thead>
                        <tbody>
                         @php $i=1; @endphp   
                        @forelse($plan_features as $planFeature)
                            <tr>
                                <td>{{ $i++ }}</td>
                                <td>{{ $planFeature->feature_name }}</td>
                                <td>{!! $planFeature->plan->name !!}</td>
                                <td>{!! $planFeature->occurence !!}</td>
                                <td>{{  $planFeature->created_at }}</td>
                                <td>{!! $planFeature->status_button !!}</td>
                                <td>{!! $planFeature->action_buttons !!}</td>
                            </tr>
                        @empty
                         <td> Data Not Found !</td>
                        @endforelse
                        </tbody>
                    </table>
                </div>
            </div><!--col-->
        </div><!--row-->
        <div class="row">
            <div class="col-7">
                <div class="float-left">
                    {!! $plan_features->total() !!} {{ trans_choice('Plan Feature', $plan_features->total()) }}
                </div>
            </div><!--col-->

            <div class="col-5">
                <div class="float-right">
                    {!! $plan_features->render() !!}
                </div>
            </div><!--col-->
        </div><!--row-->
    </div><!--card-body-->
</div><!--card-->
@endsection
