        <div class="col">
            <div class="form-group row">
                {!! Form::label('name', trans('validation.attributes.backend.pages.name'), ['class' => 'col-lg-2 control-label required']) !!}
                <div class="col-md-10">
                   {!! Form::text('name', null, ['class' => 'form-control box-size', 'placeholder' => trans('validation.attributes.backend.pages.name'), 'required' => 'required']) !!}
                </div><!--col-->
            </div><!--form-group-->
              <div class="form-group row">
                      {!! Form::label('fullDesc', trans('validation.attributes.backend.pages.description'), ['class' => 'col-lg-2 control-label required']) !!}
                     <div class="col-md-10">
                          {!! Form::textarea('descrption', null, ['class' => 'form-control tiny','id'=>'tiny', 'placeholder' => trans('validation.attributes.backend.pages.description')]) !!}
                    </div>
              </div>
              <div class="form-group row">
                    {!! Form::label('media_type', trans('validation.attributes.backend.pages.mediatype'), ['class' => 'col-lg-2 control-label required']) !!}
                    <div class="col-md-10">
                    	<?php  $media_type = ['image'=>'Image','video'=>'video'] ?>
                    	{!! Form::select('graphic_type', [null => 'Select Media Type'] + $media_type, null, ['class' => 'form-control','id'=>'mediatype','required' => 'required']) !!}
                    </div><!--col-->
              </div><!--form-group-->
              <div class="video" style="<?php if(isset($staticPage) && $staticPage->graphic_type=='video') echo 'display: block'; else echo 'display: none'; ?>">  
  				       <div class="form-group row">
  	                    {!! Form::label('name', trans('validation.attributes.backend.pages.video'), ['class' => 'col-lg-2 control-label required']) !!}
  	                   <div class="col-md-10">
                        @if(isset($staticPage) && !empty($staticPage->graphic_type == 'video'))
                        {!! Form::file('video', $staticPage->media, ['class' => 'form-control box-size', 'placeholder' => trans('fa fa-icon')]) !!} <br><br>

                          <video controls>
                            <source src="{{ asset('/pages/video/'.$staticPage->graphic_content)}}"  type="video/mp4">
                            <source src="{{ asset('/pages/video/'.$staticPage->graphic_content)}}" type="video/ogg">
                            Your browser does not support the video tag.
                          </video>
                        @else
  	                        {!! Form::file('video', null, ['class' => 'form-control box-size', 'id' =>'video', 'placeholder' => trans('fa fa-icon')]) !!}
                        @endif    
  	                  </div>
  	            </div>
               </div>
               <div class="image" style="<?php if(isset($staticPage) && $staticPage->graphic_type=='image') echo 'display: block'; else echo 'display: none'; ?>">   
	              <div class="form-group row">
	                    {!! Form::label('name', trans('validation.attributes.backend.pages.image'), ['class' => 'col-lg-2 control-label required']) !!}
	                   <div class="col-md-10">
                           @if(isset($staticPage) && !empty($staticPage->graphic_type == 'image'))
                             <input type="file" name="image" class="form-control"><br>
                              <img src="{{ asset('/pages/image/'.$staticPage->graphic_content)}}" alt="">
                           @else
	                          <input type="file" name="image" id="image" class="form-control">
                           @endif 
	                   </div><!--col-->
	              </div><!--form-group-->
               </div> 
               
                                    
                <div class="form-group row">
                    {{ html()->label(__('validation.attributes.backend.access.users.active'))->class('col-md-2 form-control-label')->for('active') }}
                    <div class="col-md-10">
                        <label class="switch switch-label switch-pill switch-primary">
                              <input class="switch-input" type="checkbox" name="status" id="active"  value="1"@if(isset($staticPage) && !empty($staticPage) && $staticPage->status == 0) unchecked  @else checked @endif>
                           <span class="switch-slider" data-checked="yes" data-unchecked="no"></span>
                        </label> 
                    </div><!--col-->
                </div><!--form-group-->
                                                               
                                                          
                                                                  
</div><!--col-->

<script>
        $(document).ready(function(){
                $("#mediatype").change(function(){
                    var optionValue = $(this).val();
                    if(optionValue){
                        if (optionValue == 'video') {
                             $("#image").val("");
                             $(".video").css('display', 'block');
                             $(".image").css('display', 'none');
                             $("#video").attr('required', true);
                            $("#image").attr('required', false);
                        }
                        else
                        {

                        }
                        if (optionValue == 'image') {
                            $("#video").val("");
                            $(".video").css('display', 'none');
                            $(".image").css('display', 'block');
                            $("#video").attr('required', false);
                            $("#image").attr('required', true);
                        }else{

                        }
                        
                    }
                });
         
        });
</script>