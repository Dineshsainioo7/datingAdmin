@extends('backend.layouts.app')

@section('title', app_name() . ' | ' . __('labels.backend.pages.management'))

@section('breadcrumb-links')
    @include('backend.static_pages.includes.breadcrumb-links')
@endsection

@section('content')
<div class="card">
    <div class="card-body">
        <div class="row">
            <div class="col-sm-5">
                <h4 class="card-title mb-0">
                    {{ __('labels.backend.pages.management') }} <small class="text-muted">{{ __('labels.backend.pages.active') }}</small>
                </h4>
            </div><!--col-->

            <div class="col-sm-7">
                <div class="btn-toolbar float-right" role="toolbar" aria-label="@lang('labels.general.toolbar_btn_groups')">
					    <a href="{{ route('admin.pages.create') }}" class="btn btn-success ml-1" data-toggle="tooltip" title="@lang('labels.general.create_new')"><i class="fas fa-plus-circle"></i>
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
                            <th>@lang('labels.backend.pages.table.name')</th>
                            <th>@lang('labels.backend.pages.table.descrption')</th>
                            <th>@lang('labels.backend.pages.table.created_at')</th>
                            <th>@lang('labels.backend.pages.table.status')</th>
                            <th>@lang('labels.general.actions')</th>
                        </tr>
                        </thead>
                        <tbody>
                         @php $i=1; @endphp   
                        @foreach($pages as $page)
                            <tr>
                                <td>{{ $i++ }}</td>
                                <td>{{ $page->name }}</td>
                                <td>{!! $page->descrption !!}</td>
                                <td>{{ $page->updated_at->diffForHumans() }}</td>
                                <td>{!! $page->status_button !!}</td>
                                <td>{!! $page->action_buttons !!}</td>
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
                    {!! $pages->total() !!} {{ trans_choice('pages', $pages->total()) }}
                </div>
            </div><!--col-->

            <div class="col-5">
                <div class="float-right">
                    {!! $pages->render() !!}
                </div>
            </div><!--col-->
        </div><!--row-->
    </div><!--card-body-->
</div><!--card-->
@endsection
