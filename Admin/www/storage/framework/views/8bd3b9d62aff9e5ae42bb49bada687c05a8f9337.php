<!DOCTYPE html>
<?php if (\Illuminate\Support\Facades\Blade::check('langrtl')): ?>
    <html lang="<?php echo e(str_replace('_', '-', app()->getLocale())); ?>" dir="rtl">
<?php else: ?>
    <html lang="<?php echo e(str_replace('_', '-', app()->getLocale())); ?>">
<?php endif; ?>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="csrf-token" content="<?php echo e(csrf_token()); ?>">
    <title><?php echo $__env->yieldContent('title', app_name()); ?></title>
    <meta name="description" content="<?php echo $__env->yieldContent('meta_description', 'Laravel 5 Boilerplate'); ?>">
    <meta name="author" content="<?php echo $__env->yieldContent('meta_author', 'Anthony Rappa'); ?>">
    <?php echo $__env->yieldContent('meta'); ?>

    
    <?php echo $__env->yieldPushContent('before-styles'); ?>

    <!-- Check if the language is set to RTL, so apply the RTL layouts -->
    <!-- Otherwise apply the normal LTR layouts -->
    <?php echo e(style(mix('css/backend.css'))); ?>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" />
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.css"/>
    <?php echo $__env->yieldPushContent('after-styles'); ?>
    <script src="<?php echo e(asset('js/jquery.min.js')); ?>"></script>
   
</head>

<body class="<?php echo e(config('backend.body_classes')); ?>">
    <?php echo $__env->make('backend.includes.header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <div class="app-body">
        <?php echo $__env->make('backend.includes.sidebar', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

        <main class="main">
            <?php echo $__env->make('includes.partials.demo', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <?php echo $__env->make('includes.partials.logged-in-as', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <?php echo Breadcrumbs::render(); ?>


            <div class="container-fluid">
                <div class="animated fadeIn">
                    <div class="content-header">
                        <?php echo $__env->yieldContent('page-header'); ?>
                    </div><!--content-header-->

                    <?php echo $__env->make('includes.partials.messages', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <?php echo $__env->yieldContent('content'); ?>
                </div><!--animated-->
            </div><!--container-fluid-->
        </main><!--main-->

         <?php echo $__env->make('backend.includes.aside', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div><!--app-body-->

    <?php echo $__env->make('backend.includes.footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <!-- Scripts -->
    <?php echo $__env->yieldPushContent('before-scripts'); ?>
    <?php echo script(mix('js/manifest.js')); ?>

    <?php echo script(mix('js/vendor.js')); ?>

    <?php echo script(mix('js/backend.js')); ?>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script> 
        <?php echo $__env->yieldPushContent('after-scripts'); ?>

<script src="<?php echo e(asset('js/tinymce/tinymce.min.js')); ?>"></script>
<script>
  tinymce.init(
          {
            selector:'.tiny',
            plugins: [
                    "advlist autolink lists link image charmap print preview anchor",
                    "searchreplace visualblocks code fullscreen",
                    "insertdatetime media table paste imagetools wordcount"
                  ],
          }
          );

    $(document).ready(function() {
             $(".interests").select2({
                 placeholder: "Select Interests",
                 allowClear: true
            });

             $("#actionLoad").select2({
                 placeholder: "Select methods",
                 allowClear: true
            });
             
              $("#privilege").select2({
                 placeholder: "Select Privilege",
                 allowClear: true
            });
    });

    // dyamic country list
     $('.country').change(function(){
        var country = $(this).val();
         if (country != ''){
              $.ajax({
              url:"<?php echo e(route('admin.user.state')); ?>",
              method:"get",
              data:{country:country},
              success:function(result)
              {
                
               $('#state').html(result);
              }

             })
         }   

     });
     // city list
     $('#state').change(function(){
        var state = $(this).val();
        
         if (state != ''){
              $.ajax({
              url:"<?php echo e(route('admin.user.city')); ?>",
              method:"get",
              data:{state:state},
              success:function(result)
              {
               $('#city').html(result);
              }

             })
         }   

     });

</script>
</body>
</html>
<?php /**PATH D:\wamp32\www\loai\dating\www\resources\views/backend/layouts/app.blade.php ENDPATH**/ ?>