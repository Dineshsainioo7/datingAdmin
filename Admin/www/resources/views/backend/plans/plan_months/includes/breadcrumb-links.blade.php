<li class="breadcrumb-menu">
    <div class="btn-group" role="group" aria-label="Button group">
        <div class="dropdown">
            <a class="btn dropdown-toggle" href="#" role="button" id="breadcrumb-dropdown-1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">@lang('menus.backend.plan-month.main')</a>

            <div class="dropdown-menu" aria-labelledby="breadcrumb-dropdown-1">
                <a class="dropdown-item" href="{{ route('admin.month.index') }}">@lang('menus.backend.plan-month.all')</a>
                <a class="dropdown-item" href="{{ route('admin.month.create') }}">@lang('menus.backend.plan-month.create')</a>
            </div>
        </div><!--dropdown-->
    </div><!--btn-group-->
</li>
