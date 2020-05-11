        <div class="col">
            <div class="form-group row">
                  {!! Form::label('name', trans('validation.attributes.backend.plan_privilege.name'), ['class' => 'col-lg-2 control-label required']) !!}
                  <div class="col-md-10">
                      {!! Form::text('name', null, ['class' => 'form-control','placeholder' => trans('validation.attributes.backend.plan_privilege.name'), 'required' => 'required']) !!}
                   </div><!--col-->
            </div><!--form-group--> 
            <div class="form-group row">
                {!! Form::label('controller', trans('validation.attributes.backend.plan_privilege.controller'), ['class' => 'col-lg-2 control-label required']) !!}
                <div class="col-md-10">
                   {!! Form::select('controller', [null => 'Select Controller']+$controllers,null,['class' => 'form-control','id'=>'privilege-controller','required'=>'required']) !!} 
                </div><!--col-->
             </div><!--form-group-->
              <div class="form-group row">
                      {!! Form::label('methods', trans('validation.attributes.backend.plan_privilege.methods'), ['class' => 'col-lg-2 control-label required']) !!}
                     <div class="col-md-10">
                      @if(isset($plan_privilege) && !empty($plan_privilege->action))
                        @php  $privilege = (isset($plan_privilege->action) && 
                                        !empty($plan_privilege->action)) ? $plan_privilege->action : '';
                                              $privilege = (explode(",",$privilege));
                            @endphp
                      {!! Form::select('action[]',$actions,$privilege, ['class' => 'form-control','id'=>'actionLoad','multiple' => 'multiple']) !!}
                     @else
                        <select name="action[]" class="form-control" id="actionLoad" multiple ,required>
                      </select>
                     @endif
                    </div>
              </div>
              <!--Amount box--> 

                                     
                <div class="form-group row">
                    {{ html()->label(__('validation.attributes.backend.access.users.active'))->class('col-md-2 form-control-label')->for('active') }}
                    <div class="col-md-10">
                        <label class="switch switch-label switch-pill switch-primary">
                              <input class="switch-input" type="checkbox" name="status" id="active"  value="1"@if(isset($plan_privilege) && !empty($plan_privilege) && $plan_privilege->status == 0) unchecked  @else checked @endif>
                           <span class="switch-slider" data-checked="yes" data-unchecked="no"></span>
                        </label> 
                    </div><!--col-->
                </div>
      </div><!--col-->

     <script>
      $(document).ready(function(){
            $('#privilege-controller').change(function(){
               if($(this).val() != '')
               {
                  var controllerValue = $(this).val();
                  $.ajax({
                    url:"{{ url('admin/plan-privilege/fetchAction') }}",
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
     </script> 