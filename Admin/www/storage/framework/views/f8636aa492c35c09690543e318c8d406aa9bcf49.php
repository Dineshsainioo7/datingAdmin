        <div class="col">
            <div class="form-group row">
                  <?php echo Form::label('name', trans('validation.attributes.backend.plan_privilege.name'), ['class' => 'col-lg-2 control-label required']); ?>

                  <div class="col-md-10">
                      <?php echo Form::text('name', null, ['class' => 'form-control','placeholder' => trans('validation.attributes.backend.plan_privilege.name'), 'required' => 'required']); ?>

                   </div><!--col-->
            </div><!--form-group--> 
            <div class="form-group row">
                <?php echo Form::label('controller', trans('validation.attributes.backend.plan_privilege.controller'), ['class' => 'col-lg-2 control-label required']); ?>

                <div class="col-md-10">
                   <?php echo Form::select('controller', [null => 'Select Controller']+$controllers,null,['class' => 'form-control','id'=>'privilege-controller','required'=>'required']); ?> 
                </div><!--col-->
             </div><!--form-group-->
              <div class="form-group row">
                      <?php echo Form::label('methods', trans('validation.attributes.backend.plan_privilege.methods'), ['class' => 'col-lg-2 control-label required']); ?>

                     <div class="col-md-10">
                      <?php if(isset($plan_privilege) && !empty($plan_privilege->action)): ?>
                        <?php  $privilege = (isset($plan_privilege->action) && 
                                        !empty($plan_privilege->action)) ? $plan_privilege->action : '';
                                              $privilege = (explode(",",$privilege));?>
                      <?php echo Form::select('action[]', $actions, $privilege, ['class' => 'form-control','id'=>'actionLoad','multiple' => 'multiple']); ?>

                     <?php else: ?>
                        <select name="action[]" class="form-control" id="actionLoad" multiple ,required>
                      </select>
                     <?php endif; ?>
                    </div>
              </div>
              <!--Amount box--> 

                                     
                <div class="form-group row">
                    <?php echo e(html()->label(__('validation.attributes.backend.access.users.active'))->class('col-md-2 form-control-label')->for('active')); ?>

                    <div class="col-md-10">
                        <label class="switch switch-label switch-pill switch-primary">
                              <input class="switch-input" type="checkbox" name="status" id="active"  value="1"<?php if(isset($plan_privilege) && !empty($plan_privilege) && $plan_privilege->status == 0): ?> unchecked  <?php else: ?> checked <?php endif; ?>>
                           <span class="switch-slider" data-checked="yes" data-unchecked="no"></span>
                        </label> 
                    </div><!--col-->
                </div>
      </div><!--col-->

     <script>
      // 
      $(document).ready(function(){
            $('#privilege-controller').change(function(){
               if($(this).val() != '')
               {
                  var controllerValue = $(this).val();

                  $.ajax({
                    url:"<?php echo e(url('admin/plan-privilege/fetchAction')); ?>",
                    method:"get",
                    data:{controllerValue:controllerValue},
                    success:function(result)
                    {
                      
                     $('#actionLoad').html(result);
                    }

                   })
               } 
            });
      });  
     </script> <?php /**PATH D:\wamp32\www\loai\dating\www\resources\views/backend/plans/plan_privilege/form.blade.php ENDPATH**/ ?>