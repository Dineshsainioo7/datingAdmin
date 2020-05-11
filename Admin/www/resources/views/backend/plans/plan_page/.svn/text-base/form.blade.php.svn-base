        <div class="col">
            <div class="form-group row">
                {!! Form::label('name', trans('validation.attributes.backend.plans.name'), ['class' => 'col-lg-2 control-label required']) !!}
                <div class="col-md-10">
                   {!! Form::text('name', null, ['class' => 'form-control box-size', 'placeholder' => trans('validation.attributes.backend.plans.name'), 'required' => 'required']) !!}
                </div><!--col-->
             </div><!--form-group-->
              <div class="form-group row">
                      {!! Form::label('fullDesc', trans('validation.attributes.backend.plans.description'), ['class' => 'col-lg-2 control-label required']) !!}
                     <div class="col-md-10">
                          {!! Form::text('description', null, ['class' => 'form-control tiny','id'=>'tiny', 'placeholder' => trans('validation.attributes.backend.plans.description')]) !!}
                    </div>
              </div>
               <div class="form-group row">
                {!! Form::label('plan_type', trans('validation.attributes.backend.plans.plan-type'), ['class' => 'col-lg-2 control-label required']) !!}
                <div class="col-md-10">
                       <div class="form-group row"> 
                        <div class="col-md-6">
                            {{ Form::radio('plan_type', 'free', false) }}
                            {!! Form::label('name', trans('validation.attributes.backend.plans.free'), ['class' => 'col-lg-2 control-label required']) !!}
                           
                        </div>
                        
                        <div class="col-md-6">
                            {{ Form::radio('plan_type', 'paid',false,['id'=>'paid']) }}
                            {!! Form::label('name', trans('validation.attributes.backend.plans.paid'), ['class' => 'col-lg-3 control-label required']) !!}
                        </div>     
                       </div><!--form-group-->  
                        
                       {{--  @endif    --}}          
                </div><!--col-->
              </div><!--form-group-->  
              <!--Amount box--> 
                <div id="amount-box" style="<?php if(isset($plan) && $plan->plan_type=='paid') echo 'display: block'; else echo 'display: none'; ?>">
                    <div class="form-group row">
                        {!! Form::label('amount', trans('validation.attributes.backend.plans.amount'), ['class' => 'col-lg-2 control-label required']) !!}
                        <div class="col-md-10">
                         {!! Form::number('amount', null, ['class' => 'form-control amount','id'=>'amount','placeholder' => trans('validation.attributes.backend.plans.amount'), 'required' => 'required']) !!}
                        </div><!--col-->
                    </div><!--form-group--> 
                </div>                       
                <div class="form-group row">
                    {{ html()->label(__('validation.attributes.backend.access.users.active'))->class('col-md-2 form-control-label')->for('active') }}
                    <div class="col-md-10">
                        <label class="switch switch-label switch-pill switch-primary">
                              <input class="switch-input" type="checkbox" name="status" id="active"  value="1"@if(isset($plan) && !empty($plan) && $plan->status == 0) unchecked  @else checked @endif>
                           <span class="switch-slider" data-checked="yes" data-unchecked="no"></span>
                        </label> 
                    </div><!--col-->
                </div>
      </div><!--col-->

      <script>
         $(document).ready(function(){
          $(".amount").attr('required', false);
              $("input[type='radio']").click(function(){
                    var palnType = $(this).val();
                     if (palnType == 'paid') {
                           $("#amount-box").css('display', 'block');
                            $(".amount").attr('required', true);
                     }else{
                       $(".amount").attr('required', false);
                       $("#amount").val(""); 
                      $("#amount-box").css('display', 'none');
                     }
              });
          }); 
      </script>