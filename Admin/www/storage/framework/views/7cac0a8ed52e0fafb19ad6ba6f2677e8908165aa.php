<?php $__env->startSection('title', __('labels.backend.access.users.management') . ' | ' . __('labels.backend.access.users.edit')); ?>

<?php $__env->startSection('breadcrumb-links'); ?>
    <?php echo $__env->make('backend.auth.user.includes.breadcrumb-links', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
<?php echo e(html()->modelForm($user, 'PATCH', route('admin.user.update', $user->id))->class('form-horizontal')->attribute('enctype','multipart/form-data')->open()); ?>

    <div class="card">
        <div class="card-body">
            <div class="row">
                <div class="col-sm-5">
                    <h4 class="card-title mb-0">
                        <?php echo app('translator')->getFromJson('labels.backend.access.users.management'); ?>
                        <small class="text-muted"><?php echo app('translator')->getFromJson('labels.backend.access.users.edit'); ?></small>
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
                                ->required()); ?>

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
                        <?php echo e(html()->label(__('validation.attributes.backend.access.users.role'))->class('col-md-2 form-control-label')->for('role')); ?>


                        <div class="col-md-10">
                            <?php  $role_type = ['1'=>'Admin','2'=>'User'] ?>
                         <?php echo Form::select('role_id', [null => 'Select Role'] + $role_type, $user->role_id, ['class' => 'form-control','id'=>'mediatype','required' => 'required']); ?>

                        </div><!--col-->
                    </div><!--form-group-->
                    <br><br>
                    <h4>Personal Information <small class="text-muted"><?php echo app('translator')->getFromJson('Edit'); ?></small></h4>
                        <hr>  
                    
                        <div class="form-group row">
                            <?php echo e(html()->label(__('validation.attributes.backend.access.users.gender'))->class('col-md-2 form-control-label')->for('gender')); ?>


                            <div class="col-md-2">
                                <?php echo e(html()->label(__('validation.attributes.backend.access.users.male'))->class('col-md-5 form-control-label')->for('gender')); ?>

                                <?php if(!empty($user->userProfile->gender)): ?>
                                    <input type="radio" class="flat" name="gender"  value="M"  
                           <?php echo e($user->userProfile->gender == 'M' ? 'checked' : ''); ?> >
                                <?php else: ?>
                                <input type="radio" class="flat" name="gender"  value="M">
                                <?php endif; ?>
                                
                                
                            </div><!--col-->
                            <div class="col-md-3">
                                <?php echo e(html()->label(__('validation.attributes.backend.access.users.female'))->class('col-md-4 form-control-label')->for('gender')); ?>

                                <?php if(!empty($user->userProfile->gender)): ?>
                                <input type="radio" class="" name="gender"  value="F" 
                                <?php echo e($user->userProfile->gender == 'F' ? 'checked' : ''); ?> >
                                 <?php else: ?>
                                <input type="radio" class="" name="gender"  value="F">
                                <?php endif; ?>
                                
                            </div><!--col-->
                             <?php echo e(html()->label(__('validation.attributes.backend.access.users.interests'))->class('col-md-1 form-control-label')->for('interests')); ?>

                             <?php  $interest = (isset($user->userProfile->interests) && 
                                        !empty($user->userProfile->interests)) ? $user->userProfile->interests : '';
                                              $interest = (explode(",",$interest)); ?>
                              <div class="col-md-4">
                                  <?php echo Form::select('interests[]',$interests, $interest, ['class' => 'form-control interests','multiple' => 'multiple']); ?>

                              </div>
                        </div><!--form-group-->

                         <div class="form-group row">
                            <?php echo e(html()->label(__('validation.attributes.backend.access.users.date-of-birth'))->class('col-md-2 form-control-label')->for('date-of-birth')); ?>


                                <div class="col-md-4">
                                     <?php echo Form::date('date_of_birth', (isset($user->userProfile->date_of_birth) && !empty($user->userProfile->date_of_birth)) ? $user->userProfile->date_of_birth : null, ['class' => 'form-control']); ?>

                                </div><!--col-->
                             <?php echo e(html()->label(__('validation.attributes.backend.access.users.contact-number'))->class('col-md-2')->for('contact-number')); ?>


                                <div class="col-md-4">
                                   <?php echo Form::number('contact_numbers', isset($user->userProfile) && !empty($user->userProfile->contact_numbers) ?$user->userProfile->contact_numbers: null, ['class' => 'form-control','placeholder' => trans('validation.attributes.backend.access.users.contact-number')]); ?>

                                </div><!--col-->    
                        </div><!--form-group-->
                        <div class="form-group row">
                            <?php echo e(html()->label(__('validation.attributes.backend.access.users.interested_in'))->class('col-md-2 form-control-label')->for('interested_in')); ?>


                                <div class="col-md-4">
                            <?php  $interested_in = ['female'=>'Female','male'=>'Male'] ?>
                         <?php echo Form::select('interested_in', [null => 'Select Interested In'] + $interested_in, isset($user->userProfile->interested_in)?$user->userProfile->interested_in:null, ['class' => 'form-control']); ?>

                                </div><!--col-->
                             <?php echo e(html()->label(__('validation.attributes.backend.access.users.profile-image'))->class('col-md-2')->for('profile-image')); ?>


                                <div class="col-md-4">
                                   <?php echo Form::file('profile_pic', null, ['class' => 'form-control']); ?>

                                </div><!--col-->    
                        </div><!--form-group-->
                        <?php if(!empty($user->userProfile->profile_pic)): ?>
                        <div class="form-group row">
                            <?php echo e(html()->label(__(''))->class('col-md-2 form-control-label')->for('summery')); ?>

                            <div class="col-md-10">
                                <img src="<?php echo e(url('user/image/'.$user->userProfile->profile_pic)); ?>" alt="Profile Image" style="width: 40%; height: 150px;">
                            </div>
                        </div>
                        <?php endif; ?> 
                        <div class="form-group row">
                            <?php echo e(html()->label(__('validation.attributes.backend.access.users.country'))->class('col-md-2 form-control-label')->for('country')); ?>


                        <div class="col-md-10">
                         <?php echo Form::select('country',$countries, (isset($user->userProfile->country) && !empty($user->userProfile->country)) ? $user->userProfile->country : null, ['class' => 'form-control country']); ?>

                        </div><!--col-->
                               
                        </div><!--form-group-->
                        <div class="form-group row">
                            <?php echo e(html()->label(__('validation.attributes.backend.access.users.state'))->class('col-md-2 form-control-label')->for('state')); ?>


                        <div class="col-md-10">
                         <?php echo Form::select('state' ,$state, (isset($user->userProfile->state) && !empty($user->userProfile->state)) ? $user->userProfile->state : null, ['class' => 'form-control','id'=>'state']); ?>

                        </div><!--col-->
                               
                        </div><!--form-group-->
                       <div class="form-group row">
                            <?php echo e(html()->label(__('validation.attributes.backend.access.users.city'))->class('col-md-2 form-control-label')->for('city')); ?>


                        <div class="col-md-10">
                         <?php echo Form::select('city',$city, (isset($user->userProfile->city) && !empty($user->userProfile->city)) ? $user->userProfile->city : null, ['class' => 'form-control','id'=>'city']); ?>

                        </div><!--col-->
                               
                        </div><!--form-group-->  
                        <div class="form-group row">
                            <?php echo e(html()->label(__('validation.attributes.backend.access.users.address'))->class('col-md-2 form-control-label')->for('address')); ?>

                                <div class="col-md-10">
                                 <?php echo Form::text('address',(isset($user->userProfile->address) && !empty($user->userProfile->address)) ? $user->userProfile->address : null, ['class' => 'form-control','placeholder' => trans('validation.attributes.backend.access.users.address'),'required'=>'required']); ?>

                                </div><!--col-->
                         </div><!--form-group-->      
                        <div class="form-group row">
                            <?php echo e(html()->label(__('validation.attributes.backend.access.users.summery'))->class('col-md-2 form-control-label')->for('summery')); ?>


                            <div class="col-md-10">
                                     <?php echo Form::textarea('summery', (isset($user->userProfile->summery) && !empty($user->userProfile->summery)) ? $user->userProfile->summery : null, ['class' => 'form-control textarea-edit', 'rows'=>'7','placeholder' => trans('validation.attributes.backend.access.users.summery')]); ?>

                            </div><!--col-->
                        </div><!--form-group--> 
                   
                </div><!--col-->
            </div><!--row-->
        </div><!--card-body-->

        <div class="card-footer">
            <div class="row">
                <div class="col">
                    <?php echo e(form_cancel(route('admin.user'), __('buttons.general.cancel'))); ?>

                </div><!--col-->

                <div class="col text-right">
                    <?php echo e(form_submit(__('buttons.general.crud.update'))); ?>

                </div><!--row-->
            </div><!--row-->
        </div><!--card-footer-->
    </div><!--card-->
<?php echo e(html()->closeModelForm()); ?>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\wamp32\www\loai\dating\www\resources\views/backend/auth/user/edit.blade.php ENDPATH**/ ?>