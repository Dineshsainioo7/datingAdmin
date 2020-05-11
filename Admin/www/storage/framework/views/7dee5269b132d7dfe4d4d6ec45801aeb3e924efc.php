<li class="breadcrumb-menu">
    <div class="btn-group" role="group" aria-label="Button group">
        <div class="dropdown">
            <a class="btn dropdown-toggle" href="#" role="button" id="breadcrumb-dropdown-1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?php echo app('translator')->getFromJson('menus.backend.plan-month.main'); ?></a>

            <div class="dropdown-menu" aria-labelledby="breadcrumb-dropdown-1">
                <a class="dropdown-item" href="<?php echo e(route('admin.month.index')); ?>"><?php echo app('translator')->getFromJson('menus.backend.plan-month.all'); ?></a>
                <a class="dropdown-item" href="<?php echo e(route('admin.month.create')); ?>"><?php echo app('translator')->getFromJson('menus.backend.plan-month.create'); ?></a>
            </div>
        </div><!--dropdown-->
    </div><!--btn-group-->
</li>
<?php /**PATH D:\wamp32\www\loai\dating\www\resources\views/backend/plans/plan_months/includes/breadcrumb-links.blade.php ENDPATH**/ ?>