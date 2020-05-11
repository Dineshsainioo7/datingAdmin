<?php $__env->startSection('title', __('labels.backend.plans.management') . ' | ' . __('labels.backend.plans.edit')); ?>

<?php $__env->startSection('breadcrumb-links'); ?>
    <?php echo $__env->make('backend.plans.plan_page.includes.breadcrumb-links', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
     <?php echo e(Form::model($plan, ['route' => ['admin.plans.update',$plan->id], 'class' => 'form-horizontal', 'role' => 'form', 'method' => 'PATCH', 'id' => 'edit-role', 'files' => true])); ?>

        <input type="hidden" name="id" value="<?php echo e($plan->id); ?>">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-5">
                        <h4 class="card-title mb-0">
                            <?php echo app('translator')->getFromJson('labels.backend.plans.management'); ?>
                            <small class="text-muted"><?php echo app('translator')->getFromJson('labels.backend.plans.edit'); ?></small>
                        </h4>
                    </div><!--col-->
                </div><!--row-->

                <hr>

                <div class="row mt-4 mb-4">
                        <?php echo $__env->make('backend.plans.plan_page.form', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </div><!--row-->
            </div><!--card-body-->

            <div class="card-footer clearfix">
                <div class="row">
                    <div class="col">
                        <?php echo e(form_cancel(route('admin.plans.index'), __('buttons.general.cancel'))); ?>

                    </div><!--col-->

                    <div class="col text-right">
                        <?php echo e(form_submit(__('buttons.general.crud.update'))); ?>

                    </div><!--col-->
                </div><!--row-->
            </div><!--card-footer-->
        </div><!--card-->
    <?php echo Form::close(); ?>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\wamp32\www\loai\dating\www\resources\views/backend/plans/plan_page/edit.blade.php ENDPATH**/ ?>