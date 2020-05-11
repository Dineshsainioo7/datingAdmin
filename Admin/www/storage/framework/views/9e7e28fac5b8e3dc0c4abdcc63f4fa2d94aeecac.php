<li class="breadcrumb-menu">
    <div class="btn-group" role="group" aria-label="Button group">
        <div class="dropdown">
            <a class="btn dropdown-toggle" href="#" role="button" id="breadcrumb-dropdown-1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?php echo app('translator')->getFromJson('menus.backend.plan-feature.main'); ?></a>

            <div class="dropdown-menu" aria-labelledby="breadcrumb-dropdown-1">
                <a class="dropdown-item" href="<?php echo e(route('admin.feature.index')); ?>"><?php echo app('translator')->getFromJson('menus.backend.plan-feature.all'); ?></a>
                <a class="dropdown-item" href="<?php echo e(route('admin.feature.create')); ?>"><?php echo app('translator')->getFromJson('menus.backend.plan-feature.create'); ?></a>
            </div>
        </div><!--dropdown-->
    </div><!--btn-group-->
</li>
<?php /**PATH D:\wamp32\www\loai\dating\www\resources\views/backend/plans/plan_features/includes/breadcrumb-links.blade.php ENDPATH**/ ?>