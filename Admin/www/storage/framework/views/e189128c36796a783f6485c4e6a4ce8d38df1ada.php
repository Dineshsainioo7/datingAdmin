        <div class="col">
            <div class="form-group row">
                <?php echo Form::label('select-plan', trans('validation.attributes.backend.plan_month.select-plan'), ['class' => 'col-lg-2 control-label required']); ?>

                <div class="col-md-10">
                   <?php echo Form::select('plan_id', $plans,null,['class' => 'form-control','required'=>'required']); ?> 
                </div><!--col-->
             </div><!--form-group-->
              <div class="form-group row">
                      <?php echo Form::label('feature-name', trans('validation.attributes.backend.plan_month.time'), ['class' => 'col-lg-2 control-label required']); ?>

                     <div class="col-md-10">
                      <?php  $time = ['1 month'=>'1 Month', '6 month'=>'6 Month','1 year' => '1 Year','2 year'=>'2 Year','5 year' =>'5 Year','10 year' => '10 Year'] ?>
                      <?php echo Form::select('month', [null => 'Select Time'] + $time, null, ['class' => 'form-control','id'=>'mediatype']); ?>

                    </div>
              </div>
              <!--Amount box--> 
              <div class="form-group row">
                  <?php echo Form::label('discount', trans('validation.attributes.backend.plan_month.discount'), ['class' => 'col-lg-2 control-label required']); ?>

                  <div class="col-md-10">
                      <?php echo Form::number('discount', null, ['class' => 'form-control','placeholder' => trans('validation.attributes.backend.plan_month.discount'), 'required' => 'required']); ?>

                   </div><!--col-->
              </div><!--form-group--> 
                                     
                <div class="form-group row">
                    <?php echo e(html()->label(__('validation.attributes.backend.access.users.active'))->class('col-md-2 form-control-label')->for('active')); ?>

                    <div class="col-md-10">
                        <label class="switch switch-label switch-pill switch-primary">
                              <input class="switch-input" type="checkbox" name="status" id="active"  value="1"<?php if(isset($plan) && !empty($plan) && $plan->status == 0): ?> unchecked  <?php else: ?> checked <?php endif; ?>>
                           <span class="switch-slider" data-checked="yes" data-unchecked="no"></span>
                        </label> 
                    </div><!--col-->
                </div>
      </div><!--col--><?php /**PATH D:\wamp32\www\loai\dating\www\resources\views/backend/plans/plan_months/form.blade.php ENDPATH**/ ?>