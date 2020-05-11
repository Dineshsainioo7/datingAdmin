<!DOCTYPE html>
@langrtl
    <html lang="{{ str_replace('_', '-', app()->getLocale()) }}" dir="rtl">
@else
    <html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
@endlangrtl
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>@yield('title', app_name())</title>
    <meta name="description" content="@yield('meta_description', 'Laravel 5 Boilerplate')">
    <meta name="author" content="@yield('meta_author', 'Anthony Rappa')">
    @yield('meta')

    {{-- See https://laravel.com/docs/5.5/blade#stacks for usage --}}
    @stack('before-styles')

    <!-- Check if the language is set to RTL, so apply the RTL layouts -->
    <!-- Otherwise apply the normal LTR layouts -->
    {{ style(mix('css/backend.css')) }}
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" />
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.css"/>
    @stack('after-styles')
    <script src="{{ asset('js/jquery.min.js')}}"></script>
   
</head>

<body class="{{ config('backend.body_classes') }}">
    @include('backend.includes.header')

    <div class="app-body">
        @include('backend.includes.sidebar')

        <main class="main">
            @include('includes.partials.demo')
            @include('includes.partials.logged-in-as')
            {!! Breadcrumbs::render() !!}

            <div class="container-fluid">
                <div class="animated fadeIn">
                    <div class="content-header">
                        @yield('page-header')
                    </div><!--content-header-->

                    @include('includes.partials.messages')
                    @yield('content')
                </div><!--animated-->
            </div><!--container-fluid-->
        </main><!--main-->

         @include('backend.includes.aside')
    </div><!--app-body-->

    @include('backend.includes.footer')

    <!-- Scripts -->
    @stack('before-scripts')
    {!! script(mix('js/manifest.js')) !!}
    {!! script(mix('js/vendor.js')) !!}
    {!! script(mix('js/backend.js')) !!}
        <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script> 
        @stack('after-scripts')

<script src="{{ asset('js/tinymce/tinymce.min.js')}}"></script>
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
              url:"{{ route('admin.user.state') }}",
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
              url:"{{ route('admin.user.city') }}",
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
