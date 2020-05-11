<?php $__env->startSection('title', __('labels.backend.access.users.management') . ' | ' . __('labels.backend.access.users.create')); ?>

<?php $__env->startSection('breadcrumb-links'); ?>
    <?php echo $__env->make('backend.auth.user.includes.breadcrumb-links', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <?php echo e(html()->form('POST', route('admin.user.store'))->class('form-horizontal')->attribute('enctype','multipart/form-data')->open()); ?>

        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-5">
                        <h4 class="card-title mb-0">
                            <?php echo app('translator')->getFromJson('labels.backend.access.users.management'); ?>
                            <small class="text-muted"><?php echo app('translator')->getFromJson('labels.backend.access.users.create'); ?></small>
                        </h4>
                    </div><!--col-->
                </div><!--row-->

                <hr>

                <div class="row mt-4 mb-4">
                    <div class="col">
                        <div class="form-group row">
                            <?php echo e(html()->label(__('validation.attributes.backend.access.users.first_name'))->class('col-md-2 form-control-label')->for('first_name')); ?>


                            <div class="col-md-10">
                                <?php echo e(html()->text('first_name')
                                    ->class('form-control')
                                    ->placeholder(__('validation.attributes.backend.access.users.first_name'))
                                    ->attribute('maxlength', 191)
                                    ->required()
                                    ->autofocus()); ?>

                            </div><!--col-->
                        </div><!--form-group-->

                        <div class="form-group row">
                        <?php echo e(html()->label(__('validation.attributes.backend.access.users.last_name'))->class('col-md-2 form-control-label')->for('last_name')); ?>


                            <div class="col-md-10">
                                <?php echo e(html()->text('last_name')
                                    ->class('form-control')
                                    ->placeholder(__('validation.attributes.backend.access.users.last_name'))
                                    ->attribute('maxlength', 191)
                                    ->required()); ?>

                            </div><!--col-->
                        </div><!--form-group-->

                        <div class="form-group row">
                            <?php echo e(html()->label(__('validation.attributes.backend.access.users.email'))->class('col-md-2 form-control-label')->for('email')); ?>


                            <div class="col-md-10">
                                <?php echo e(html()->email('email')
                                    ->class('form-control')
                                    ->placeholder(__('validation.attributes.backend.access.users.email'))
                                    ->attribute('maxlength', 191)
                                    ->required()); ?>

                            </div><!--col-->
                        </div><!--form-group-->

                        <div class="form-group row">
                            <?php echo e(html()->label(__('validation.attributes.backend.access.users.password'))->class('col-md-2 form-control-label')->for('password')); ?>


                            <div class="col-md-10">
                                <?php echo e(html()->password('password')
                                    ->class('form-control')
                                    ->placeholder(__('validation.attributes.backend.access.users.password'))
                                    ->required()); ?>

                            </div><!--col-->
                        </div><!--form-group-->

                        <div class="form-group row">
                            <?php echo e(html()->label(__('validation.attributes.backend.access.users.password_confirmation'))->class('col-md-2 form-control-label')->for('password_confirmation')); ?>


                            <div class="col-md-10">
                                <?php echo e(html()->password('password_confirmation')
                                    ->class('form-control')
                                    ->placeholder(__('validation.attributes.backend.access.users.password_confirmation'))
                                    ->required()); ?>

                            </div><!--col-->
                        </div><!--form-group-->

                        <div class="form-group row">
                            <?php echo e(html()->label(__('validation.attributes.backend.access.users.active'))->class('col-md-2 form-control-label')->for('active')); ?>


                            <div class="col-md-10">
                                <label class="switch switch-label switch-pill switch-primary">
                                    <?php echo e(html()->checkbox('active', true)->class('switch-input')); ?>

                                    <span class="switch-slider" data-checked="yes" data-unchecked="no"></span>
                                </label>
                            </div><!--col-->
                        </div><!--form-group-->

                        <div class="form-group row">
                            <?php echo e(html()->label(__('validation.attributes.backend.access.users.confirmed'))->class('col-md-2 form-control-label')->for('confirmed')); ?>


                            <div class="col-md-10">
                                <label class="switch switch-label switch-pill switch-primary">
                                    <?php echo e(html()->checkbox('confirmed', true)->class('switch-input')); ?>

                                    <span class="switch-slider" data-checked="yes" data-unchecked="no"></span>
                                </label>
                            </div><!--col-->
                        </div><!--form-group-->

                        <?php if(! config('access.users.requires_approval')): ?>
                            <div class="form-group row">
                                <?php echo e(html()->label(__('validation.attributes.backend.access.users.send_confirmation_email') . '<br/>' . '<small>' .  __('strings.backend.access.users.if_confirmed_off') . '</small>')->class('col-md-2 form-control-label')->for('confirmation_email')); ?>


                                <div class="col-md-10">
                                    <label class="switch switch-label switch-pill switch-primary">
                                        <?php echo e(html()->checkbox('confirmation_email')->class('switch-input')); ?>

                                        <span class="switch-slider" data-checked="yes" data-unchecked="no"></span>
                                    </label>
                                </div><!--col-->
                            </div><!--form-group-->
                        <?php endif; ?>
                        <h4>Personal Information</h4>
                        <hr>  
                        <div class="form-group row">
                            <?php echo e(html()->label(__('validation.attributes.backend.access.users.gender'))->class('col-md-2 form-control-label')->for('gender')); ?>


                            <div class="col-md-2">
                                <?php echo e(html()->label(__('validation.attributes.backend.access.users.male'))->class('col-md-5 form-control-label')->for('gender')); ?>

                                <?php echo e(html()->radio('gender')->value('M')); ?>

                            </div><!--col-->
                            <div class="col-md-3">
                                <?php echo e(html()->label(__('validation.attributes.backend.access.users.female'))->class('col-md-4 form-control-label')->for('gender')); ?>

                                <?php echo e(html()->radio('gender')->value('F')); ?>

                            </div><!--col-->
                             <?php echo e(html()->label(__('validation.attributes.backend.access.users.interests'))->class('col-md-1 form-control-label')->for('interests')); ?>

                              <div class="col-md-4">
                                  <?php echo Form::select('interests[]',$interests, null, ['class' => 'form-control interests','multiple' => 'multiple','required'=>'required']); ?>

                              </div>
                        </div><!--form-group-->
                         <div class="form-group row">
                            <?php echo e(html()->label(__('validation.attributes.backend.access.users.date-of-birth'))->class('col-md-2 form-control-label')->for('date-of-birth')); ?>


                                <div class="col-md-4">
                                    <?php echo e(html()->date('date_of_birth')
                                        ->class('form-control')
                                        ->required()); ?>

                                </div><!--col-->
                             <?php echo e(html()->label(__('validation.attributes.backend.access.users.contact-number'))->class('col-md-2')->for('contact-number')); ?>


                                <div class="col-md-4">
                                   <?php echo Form::number('contact_numbers', null, ['class' => 'form-control','placeholder' => trans('validation.attributes.backend.access.users.contact-number'),'required'=>'required']); ?>

                                </div><!--col-->    
                        </div><!--form-group--> 
                        <div class="form-group row">
                            <?php echo e(html()->label(__('validation.attributes.backend.access.users.interested_in'))->class('col-md-2 form-control-label')->for('interested_in')); ?>


                                <div class="col-md-4">
                            <?php  $interested_in = ['female'=>'Female','male'=>'Male'] ?>
                         <?php echo Form::select('interested_in', [null => 'Select Interested In'] + $interested_in, null, ['class' => 'form-control','required'=>'required']); ?>

                                </div><!--col-->
                             <?php echo e(html()->label(__('validation.attributes.backend.access.users.profile-image'))->class('col-md-2')->for('profile-image')); ?>


                                <div class="col-md-4">
                                   <?php echo Form::file('profile_pic', null, ['class' => 'form-control','required'=>'required']); ?>

                                </div><!--col-->    
                        </div><!--form-group--> 
                        <div class="form-group row">
                            <?php echo e(html()->label(__('validation.attributes.backend.access.users.country'))->class('col-md-2 form-control-label')->for('country')); ?>


                        <div class="col-md-10">
                         <?php echo Form::select('country',$countries, null, ['class' => 'form-control country','required'=>'required']); ?>

                        </div><!--col-->
                               
                        </div><!--form-group-->
                        <div class="form-group row">
                            <?php echo e(html()->label(__('validation.attributes.backend.access.users.state'))->class('col-md-2 form-control-label')->for('state')); ?>


                        <div class="col-md-10">
                         <?php echo Form::select('state' ,[null => 'Select State'] , null, ['class' => 'form-control','id'=>'state','required'=>'required']); ?>

                        </div><!--col-->
                               
                        </div><!--form-group-->
                        <div class="form-group row">
                            <?php echo e(html()->label(__('validation.attributes.backend.access.users.city'))->class('col-md-2 form-control-label')->for('city')); ?>


                        <div class="col-md-10">
                         <?php echo Form::select('city',[null => 'Select City'] , null, ['class' => 'form-control','id'=>'city','required'=>'required']); ?>

                        </div><!--col-->
                               
                        </div><!--form-group--> 
                         <div class="form-group row">
                            <?php echo e(html()->label(__('validation.attributes.backend.access.users.address'))->class('col-md-2 form-control-label')->for('address')); ?>

                                <div class="col-md-10">
                                 <?php echo Form::text('address',null, ['class' => 'form-control','placeholder' => trans('validation.attributes.backend.access.users.address'),'required'=>'required']); ?>

                                </div><!--col-->
                         </div><!--form-group-->    
                        <div class="form-group row">
                            <?php echo e(html()->label(__('validation.attributes.backend.access.users.summery'))->class('col-md-2 form-control-label')->for('summery')); ?>


                            <div class="col-md-10">
                                <?php echo e(html()->textarea('summery')
                                    ->class('form-control')
                                    ->placeholder(__('validation.attributes.backend.access.users.summery'))
                                    ->required()
                                    ->autofocus()); ?>

                            </div><!--col-->
                        </div><!--form-group-->     
                    </div><!--col-->
                </div><!--row-->
            </div><!--card-body-->

            <div class="card-footer clearfix">
                <div class="row">
                    <div class="col">
                        <?php echo e(form_cancel(route('admin.user'), __('buttons.general.cancel'))); ?>

                    </div><!--col-->

                    <div class="col text-right">
                        <?php echo e(form_submit(__('buttons.general.crud.create'))); ?>

                    </div><!--col-->
                </div><!--row-->
            </div><!--card-footer-->
        </div><!--card-->
    <?php echo e(html()->form()->close()); ?>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\wamp32\www\loai\dating\www\resources\views/backend/auth/user/create.blade.php ENDPATH**/ ?>