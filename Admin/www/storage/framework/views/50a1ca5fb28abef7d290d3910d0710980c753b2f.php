<?php $__env->startSection('title', __('labels.backend.interest.management') . ' | ' . __('labels.backend.interest.edit')); ?>

<?php $__env->startSection('breadcrumb-links'); ?>
    <?php echo $__env->make('backend.activities.interests.includes.breadcrumb-links', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <?php echo e(html()->modelForm($interest, 'PATCH', route('admin.interest.update', $interest->id))->class('form-horizontal')->open()); ?>

          <input type="hidden" name="id" value="<?php echo e($interest->id); ?>">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-5">
                        <h4 class="card-title mb-0">
                            <?php echo app('translator')->getFromJson('labels.backend.interest.management'); ?>
                            <small class="text-muted"><?php echo app('translator')->getFromJson('labels.backend.interest.edit'); ?></small>
                        </h4>
                    </div><!--col-->
                </div><!--row-->

                <hr>

                <div class="row mt-4 mb-4">
                    <div class="col">
                        <div class="form-group row">
                            <?php echo e(html()->label(__('validation.attributes.backend.interest.name'))->class('col-md-2 form-control-label')->for('name')); ?>


                            <div class="col-md-10">
                                <?php echo e(html()->text('name')
                                    ->class('form-control')
                                    ->placeholder(__('validation.attributes.backend.interest.name'))
                                    ->attribute('maxlength', 191)
                                    ->required()
                                    ->autofocus()); ?>

                            </div><!--col-->
                        </div><!--form-group-->
                        
                        <div class="form-group row">
                                <?php echo e(html()->label(__('validation.attributes.backend.access.users.active'))->class('col-md-2 form-control-label')->for('status')); ?>


                                <div class="col-md-10">
                                    <label class="switch switch-label switch-pill switch-primary">
                                        <?php echo e(html()->checkbox('status',($interest->status == 1)? true : false  )->class('switch-input')); ?>

                                        <span class="switch-slider" data-checked="yes" data-unchecked="no"></span>
                                    </label>
                                </div><!--col-->
                        </div><!--form-group-->

                
                    </div><!--col-->
                </div><!--row-->
            </div><!--card-body-->

            <div class="card-footer clearfix">
                <div class="row">
                    <div class="col">
                        <?php echo e(form_cancel(route('admin.interest'), __('buttons.general.cancel'))); ?>

                    </div><!--col-->

                    <div class="col text-right">
                        <?php echo e(form_submit(__('buttons.general.crud.update'))); ?>

                    </div><!--col-->
                </div><!--row-->
            </div><!--card-footer-->
        </div><!--card-->
    <?php echo e(html()->closeModelForm()); ?>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\wamp32\www\loai\dating\www\resources\views/backend/activities/interests/edit.blade.php ENDPATH**/ ?>