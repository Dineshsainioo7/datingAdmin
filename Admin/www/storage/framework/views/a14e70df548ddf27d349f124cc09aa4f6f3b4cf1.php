<?php $__env->startSection('title', app_name() . ' | ' . __('labels.backend.plans.management')); ?>

<?php $__env->startSection('breadcrumb-links'); ?>
    <?php echo $__env->make('backend.plans.plan_page.includes.breadcrumb-links', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
<div class="card">
    <div class="card-body">
        <div class="row">
            <div class="col-sm-5">
                <h4 class="card-title mb-0">
                    <?php echo e(__('labels.backend.plans.management')); ?> <small class="text-muted"><?php echo e(__('labels.backend.plans.active')); ?></small>
                </h4>
            </div><!--col-->

            <div class="col-sm-7">
                <div class="btn-toolbar float-right" role="toolbar" aria-label="<?php echo app('translator')->getFromJson('labels.general.toolbar_btn_groups'); ?>">
					    <a href="<?php echo e(route('admin.plans.create')); ?>" class="btn btn-success ml-1" data-toggle="tooltip" title="<?php echo app('translator')->getFromJson('labels.general.create_new'); ?>"><i class="fas fa-plus-circle"></i>
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
                            <th><?php echo app('translator')->getFromJson('S.No'); ?></th>
                            <th><?php echo app('translator')->getFromJson('labels.backend.plans.table.name'); ?></th>
                            <th><?php echo app('translator')->getFromJson('labels.backend.plans.table.descrption'); ?></th>
                            <th><?php echo app('translator')->getFromJson('labels.backend.plans.table.plan_type'); ?></th>
                            <th><?php echo app('translator')->getFromJson('labels.backend.plans.table.price'); ?></th>
                            <th><?php echo app('translator')->getFromJson('labels.backend.plans.table.created_at'); ?></th>
                            <th><?php echo app('translator')->getFromJson('labels.backend.plans.table.status'); ?></th>
                            <th><?php echo app('translator')->getFromJson('labels.general.actions'); ?></th>
                        </tr>
                        </thead>
                        <tbody>
                         <?php $i=1; ?>   
                        <?php $__empty_1 = true; $__currentLoopData = $plans; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $plan): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                            <tr>
                                <td><?php echo e($i++); ?></td>
                                <td><?php echo e($plan->name); ?></td>
                                <td><?php echo $plan->description; ?></td>
                                <td><?php echo $plan->plan_type; ?></td>
                                <td><?php echo $plan->amount; ?></td>
                                <td><?php echo e($plan->updated_at->diffForHumans()); ?></td>
                                <td><?php echo $plan->status_button; ?></td>
                                <td><?php echo $plan->action_buttons; ?></td>
                            </tr>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                         <td> Data Not Found !</td>
                        <?php endif; ?>
                        </tbody>
                    </table>
                </div>
            </div><!--col-->
        </div><!--row-->
        <div class="row">
            <div class="col-7">
                <div class="float-left">
                    <?php echo $plans->total(); ?> <?php echo e(trans_choice('plans', $plans->total())); ?>

                </div>
            </div><!--col-->

            <div class="col-5">
                <div class="float-right">
                    <?php echo $plans->render(); ?>

                </div>
            </div><!--col-->
        </div><!--row-->
    </div><!--card-body-->
</div><!--card-->
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\wamp32\www\loai\dating\www\resources\views/backend/plans/plan_page/index.blade.php ENDPATH**/ ?>