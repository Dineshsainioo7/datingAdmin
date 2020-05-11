<?php $__env->startSection('title', app_name() . ' | ' . __('navs.general.home')); ?>

<?php $__env->startSection('content'); ?>
    <div class="row mb-4">
        <div class="col">
            <div class="card">
                <div class="card-header">
                    <i class="fas fa-home"></i> <?php echo app('translator')->getFromJson('navs.general.home'); ?>
                </div>
                <div class="card-body">
                    <?php echo app('translator')->getFromJson('strings.frontend.welcome_to', ['place' => app_name()]); ?>
                </div>
            </div><!--card-->
        </div><!--col-->
    </div><!--row-->

    
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\wamp32\www\loai\dating\www\resources\views/frontend/index.blade.php ENDPATH**/ ?>