<?php $__env->startSection('title', app_name() . ' | ' . __('strings.backend.dashboard.title')); ?>
<?php $__env->startSection('content'); ?>
<div class="row">
    <div class="col">
        <div class="card">
            <div class="card-header">
                <strong><?php echo app('translator')->getFromJson('strings.backend.dashboard.welcome'); ?> <?php echo e($logged_in_user->name); ?>!</strong>
                </div><!--card-header-->
                <div class="card-body">
                    <?php echo __('strings.backend.welcome'); ?>

                    </div><!--card-body-->
                    </div><!--card-->
                    </div><!--col-->
                    </div><!--row-->
               
                    <div class="row">
                        <div class="col-md-4 col-sm-6 mb-3">
                            <div class="card level-card level-all ">
                                <div class="card-header">
                                    <span class="level-icon"><i class="fa fa-user" aria-hidden="true"></i></span> New users
                                </div>
                                <div class="card-body">
                                    <?php echo e($newUser); ?> - New users
                                    
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 mb-3">
                            <div class="card level-card level-emergency level-empty">
                                <div class="card-header">
                                    <span class="level-icon"><i class="fa fa-users" aria-hidden="true"></i></span> Total Users
                                </div>
                                <div class="card-body">
                                    <?php echo e($totalUser); ?> - Total Users
                                    
                                </div>
                            </div>
                        </div>
                        
                        
                        
                        
                        
                        
                    </div>
                    <?php $__env->stopSection(); ?>
<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\wamp32\www\loai\dating\www\resources\views/backend/dashboard.blade.php ENDPATH**/ ?>