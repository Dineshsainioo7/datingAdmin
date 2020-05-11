@extends('backend.layouts.app')

@section('title', app_name() . ' | ' . __('labels.backend.access.users.management'))

@section('breadcrumb-links')
    @include('backend.auth.user.includes.breadcrumb-links')
@endsection

@section('content')
<div class="card">
    <div class="card-body">
        <div class="row">
            <div class="col-sm-5">
                <h4 class="card-title mb-0">
                    {{ __('labels.backend.access.users.management') }} <small class="text-muted">{{ __('labels.backend.access.users.active') }}</small>
                </h4>
            </div><!--col-->

            <div class="col-sm-7">
                @include('backend.auth.user.includes.header-buttons')
            </div><!--col-->
        </div><!--row-->

        <div class="row mt-4">
            <div class="col">
                <div class="table-responsive">
                    <table id="example" class="table display">
                        <thead>
                        <tr>
                            <th>@lang('labels.backend.access.users.table.last_name')</th>
                            <th>@lang('labels.backend.access.users.table.first_name')</th>
                            <th>@lang('labels.backend.access.users.table.email')</th>
                            <th>@lang('labels.backend.access.users.table.roles')</th>
                                                        <th>@lang('labels.backend.access.users.table.city')</th>
                            <th>@lang('labels.backend.access.users.table.country')</th>
                            <th>@lang('labels.backend.access.users.table.mobile-number')</th>
                            <th>@lang('labels.backend.access.users.table.confirmed')</th>

                            <th>@lang('labels.backend.access.users.table.last_updated')</th>
                            <th>@lang('labels.general.actions')</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($users as $user)
                            <tr>
                                <td>{{ $user->last_name }}</td>
                                <td>{{ $user->first_name }}</td>
                                <td>{{ $user->email }}</td>
                                <td>@if(isset($user->role_id) && !empty($user->role_id))
                                        @if($user->role_id == 1)
                                            Administrator
                                        @else
                                            User
                                        @endif
                                   
                                    @endif
                                </td>
                                <td>{!! isset($user->userProfile['city_name']) && !empty($user->userProfile['city_name'])?$user->userProfile['city_name'] :'-' !!}</td>
                                <td>{!! isset($user->userProfile['country_name']) && !empty($user->userProfile['country_name'])?$user->userProfile['country_name'] :'-' !!}</td>
                                <td>{!! isset($user->userProfile->contact_numbers) && !empty($user->userProfile->contact_numbers)?$user->userProfile->contact_numbers :'-' !!}</td>
                                <td>{!! $user->confirmed_label !!}</td>
                                {{-- <td>{!! $user->permissions_label !!}</td>
                                <td>{!! $user->social_buttons !!}</td> --}}
                                <td>{{ $user->updated_at->diffForHumans() }}</td>
                                <td>{!! $user->action_buttons !!}</td>
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
                    {!! $users->total() !!} {{ trans_choice('labels.backend.access.users.table.total', $users->total()) }}
                </div>
            </div><!--col-->

            <div class="col-5">
                <div class="float-right">
                    {!! $users->render() !!}
                </div>
            </div><!--col-->
        </div><!--row-->
    </div><!--card-body-->
</div><!--card-->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.6/js/dataTables.buttons.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.html5.min.js"></script>
<script>

$(document).ready(function() {s
    var buttonCommon = {
        exportOptions: {
            format: {
                body: function ( data, row, column, node ) {
                    // Strip $ from salary column to make it numeric
                    return column === 5 ?
                        data.replace( /[$,]/g, '' ) :
                        data;
                }
            }
        }
    };
 
    $('#example').DataTable({
        ajax: '../../../../examples/ajax/data/objects.txt',
        columns: [
            { data: 'last_name' },
            { data: 'first_name' },
            { data: 'confirmed_label' },
            // { data: 'extn' },
            // { data: 'start_date' },
            // { data: 'salary' }
        ],
        dom: 'Bfrtip',
        buttons: [
            $.extend( true, {}, buttonCommon, {
                extend: 'copyHtml5'
            }),
            $.extend( true, {}, buttonCommon, {
                extend: 'excelHtml5'
            }),
            $.extend( true, {}, buttonCommon, {
                extend: 'pdfHtml5'
            })
        ]
    });
});
</script>
@endsection
