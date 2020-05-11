@extends('backend.layouts.app')

@section('title', app_name() . ' | ' . __('labels.backend.pages.management'))

@section('breadcrumb-links')
    @include('backend.activities.interests.includes.breadcrumb-links')
@endsection
 
@section('content')
<div class="card">
    <div class="card-body">
        <div class="row">
            <div class="col-sm-5">
                <h4 class="card-title mb-0">
                    {{ __('labels.backend.interest.management') }} <small class="text-muted">{{ __('labels.backend.interest.active') }}</small>
                </h4>
            </div><!--col-->

            <div class="col-sm-7">
                <div class="btn-toolbar float-right" role="toolbar" aria-label="@lang('labels.general.toolbar_btn_groups')">
					    <a href="{{ route('admin.interest.create') }}" class="btn btn-success ml-1" data-toggle="tooltip" title="@lang('labels.general.create_new')"><i class="fas fa-plus-circle"></i>
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
                            <th>@lang('labels.backend.interest.table.name')</th>
                            <th>@lang('labels.backend.interest.table.status')</th>
                            <th>@lang('labels.backend.interest.table.created_at')</th>
                            <th>@lang('labels.general.actions')</th>
                        </tr>
                        </thead>
                        <tbody>
                         @php $i=1; @endphp   
                        @foreach($interests as $interest)
                            <tr>
                                <td>{{ $i++ }}</td>
                                <td>{{ $interest->name }}</td>
                                <td>{!! $interest->status_button !!}</td>
                                <td>{{ $interest->updated_at->diffForHumans() }}</td>
                                <td>{!! $interest->action_buttons !!}</td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </div><!--col-->
        </div><!--row-->
        <div class="row">
            <div class="col-7">
                <div class="float-left">
                    {!! $interests->total() !!} {{ trans_choice('Interests', $interests->total()) }}
                </div>
            </div><!--col-->

            <div class="col-5">
                <div class="float-right">
                    {!! $interests->render() !!}
                </div>
            </div><!--col-->
        </div><!--row-->
    </div><!--card-body-->
</div><!--card-->
@endsection
