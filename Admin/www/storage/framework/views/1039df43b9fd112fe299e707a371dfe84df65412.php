<?php $__env->startSection('title', __('labels.backend.plan_month.management') . ' | ' . __('labels.backend.plan_month.edit')); ?>

<?php $__env->startSection('breadcrumb-links'); ?>
    <?php echo $__env->make('backend.plans.plan_months.includes.breadcrumb-links', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
     <?php echo e(Form::model($month, ['route' => ['admin.month.update',$month->id], 'class' => 'form-horizontal', 'role' => 'form', 'method' => 'PATCH', 'id' => 'edit-role', 'files' => true])); ?>

    
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-5">
                        <h4 class="card-title mb-0">
                            <?php echo app('translator')->getFromJson('labels.backend.plan_month.management'); ?>
                            <small class="text-muted"><?php echo app('translator')->getFromJson('labels.backend.plan_month.edit'); ?></small>
                        </h4>
                    </div><!--col-->
                </div><!--row-->

                <hr>

                <div class="row mt-4 mb-4">
                       <?php echo $__env->make('backend.plans.plan_months.form', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </div><!--row-->
            </div><!--card-body-->

            <div class="card-footer clearfix">
                <div class="row">
                    <div class="col">
                        <?php echo e(form_cancel(route('admin.month.index'), __('buttons.general.cancel'))); ?>

                    </div><!--col-->

                    <div class="col text-right">
                        <?php echo e(form_submit(__('buttons.general.crud.update'))); ?>

                    </div><!--col-->
                </div><!--row-->
            </div><!--card-footer-->
        </div><!--card-->
    <?php echo Form::close(); ?>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\wamp32\www\loai\dating\www\resources\views/backend/plans/plan_months/edit.blade.php ENDPATH**/ ?>