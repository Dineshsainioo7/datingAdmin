        <div class="col">
            <div class="form-group row">
                <?php echo Form::label('select-plan', trans('validation.attributes.backend.plan_feature.select-plan'), ['class' => 'col-lg-2 control-label required']); ?>

                <div class="col-md-10">
                   <?php echo Form::select('plan_id', $plans,null,['class' => 'form-control','required'=>'required']); ?> 
                </div><!--col-->
             </div><!--form-group-->
              <div class="form-group row">
                      <?php echo Form::label('feature-name', trans('validation.attributes.backend.plan_feature.feature-name'), ['class' => 'col-lg-2 control-label required']); ?>

                     <div class="col-md-10">
                          <?php echo Form::text('feature_name', null, ['class' => 'form-control', 'placeholder' => trans('validation.attributes.backend.plan_feature.feature-name'),'required'=>'required']); ?>

                    </div>
              </div>
              <div class="form-group row">
                <?php echo Form::label('select-privilege', trans('validation.attributes.backend.plan_feature.select-privilege'), ['class' => 'col-lg-2 control-label required']); ?>

                <div class="col-md-10">
                 <?php if(isset($feature) && !empty($feature->plan_privilege_id)): ?>
                 <?php  $oldprivilege = (isset($feature->plan_privilege_id) && 
                      !empty($feature->plan_privilege_id)) ? $feature->plan_privilege_id : '';
                      $oldprivilege = (explode(",",$oldprivilege));

                  ?>

                  <?php echo Form::select('plan_privilege_id[]', $privilege,$oldprivilege,['class' => 'form-control','required'=>'required','id'=>'privilege','multiple'=>'multiple']); ?>

                 <?php else: ?> 
                    
                   <?php echo Form::select('plan_privilege_id[]', $privilege,null,['class' => 'form-control','required'=>'required','id'=>'privilege','multiple'=>'multiple']); ?>

                  <?php endif; ?>  
                </div><!--col-->
             </div><!--form-group-->
              <!--Amount box--> 
              <div class="form-group row">
                  <?php echo Form::label('occurence', trans('validation.attributes.backend.plan_feature.occurence'), ['class' => 'col-lg-2 control-label required']); ?>

                  <div class="col-md-10">
                      <?php echo Form::number('occurence', null, ['class' => 'form-control','placeholder' => trans('validation.attributes.backend.plan_feature.occurence'), 'required' => 'required']); ?>

                   </div><!--col-->
              </div><!--form-group--> 
                                     
                <div class="form-group row">
                    <?php echo e(html()->label(__('validation.attributes.backend.access.users.active'))->class('col-md-2 form-control-label')->for('active')); ?>

                    <div class="col-md-10">
                        <label class="switch switch-label switch-pill switch-primary">
                              <input class="switch-input" type="checkbox" name="status" id="active"  value="1"<?php if(isset($feature) && !empty($feature) && $feature->status == 0): ?> unchecked  <?php else: ?> checked <?php endif; ?>>
                           <span class="switch-slider" data-checked="yes" data-unchecked="no"></span>
                        </label> 
                    </div><!--col-->
                </div>
      </div><!--col-->
<?php /**PATH D:\wamp32\www\loai\dating\www\resources\views/backend/plans/plan_features/form.blade.php ENDPATH**/ ?>