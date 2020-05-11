<header class="app-header navbar">
    <button class="navbar-toggler sidebar-toggler d-lg-none mr-auto" type="button" data-toggle="sidebar-show">
        <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand" href="#">
        <?php echo e(app_name()); ?>

      
    </a>
    <button class="navbar-toggler sidebar-toggler d-md-down-none" type="button" data-toggle="sidebar-lg-show">
        <span class="navbar-toggler-icon"></span>
    </button>

    <ul class="nav navbar-nav d-md-down-none">
        <li class="nav-item px-3">
            <a class="nav-link" href="<?php echo e(route('frontend.index')); ?>"><i class="fas fa-home"></i></a>
        </li>

        <li class="nav-item px-3">
            <a class="nav-link" href="<?php echo e(route('admin.dashboard')); ?>"><?php echo app('translator')->getFromJson('navs.frontend.dashboard'); ?></a>
        </li>

        <?php if(config('locale.status') && count(config('locale.languages')) > 1): ?>
            <li class="nav-item px-3 dropdown">
                <a class="nav-link dropdown-toggle nav-link" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                    <span class="d-md-down-none"><?php echo app('translator')->getFromJson('menus.language-picker.language'); ?> (<?php echo e(strtoupper(app()->getLocale())); ?>)</span>
                </a>

                <?php echo $__env->make('includes.partials.lang', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </li>
        <?php endif; ?>
    </ul>

    <ul class="nav navbar-nav ml-auto">
        <li class="nav-item d-md-down-none">
            <a class="nav-link" href="#">
                <i class="fas fa-bell"></i>
            </a>
        </li>
        <li class="nav-item d-md-down-none">
            <a class="nav-link" href="#">
                <i class="fas fa-list"></i>
            </a>
        </li>
        <li class="nav-item d-md-down-none">
            <a class="nav-link" href="#">
                <i class="fas fa-map-marker-alt"></i>
            </a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
            <img src="<?php echo e($logged_in_user->picture); ?>" class="img-avatar" alt="<?php echo e($logged_in_user->email); ?>">
            <span class="d-md-down-none"><?php echo e($logged_in_user->full_name); ?></span>
          </a>
          <div class="dropdown-menu dropdown-menu-right">
            <div class="dropdown-header text-center">
              <strong>Account</strong>
            </div>
            <a class="dropdown-item" href="<?php echo e(route('frontend.auth.logout')); ?>">
                <i class="fas fa-lock"></i> <?php echo app('translator')->getFromJson('navs.general.logout'); ?>
            </a>
          </div>
        </li>
    </ul>

    <button class="navbar-toggler aside-menu-toggler d-md-down-none" type="button" data-toggle="aside-menu-lg-show">
        <span class="navbar-toggler-icon"></span>
    </button>
    <button class="navbar-toggler aside-menu-toggler d-lg-none" type="button" data-toggle="aside-menu-show">
        <span class="navbar-toggler-icon"></span>
    </button>
</header>
<?php /**PATH D:\wamp32\www\loai\dating\www\resources\views/backend/includes/header.blade.php ENDPATH**/ ?>