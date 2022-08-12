<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="host" content="{{URL::to('/')}}">
    <title>@yield('title') | {{env('APP_NAME')}}</title>
    <meta name="description" content="A responsive bootstrap 4 admin dashboard template by hencework" />

    @include('support.style')
    @yield('addStyle')

</head>

<body>
    <!-- Preloader 
    <div class="preloader-it">
        <div class="loader-pendulums"></div>
    </div>
    --><!-- /Preloader -->
  
  <!-- HK Wrapper -->
  <div class="hk-wrapper hk-vertical-nav">

        <!-- Top Navbar -->
        @include('support.topnav')
        <!-- /Top Navbar -->

        <!-- Vertical Nav -->
        @include('support.sidebar')
        <!-- /Vertical Nav -->

        <!-- Setting Panel -->
        @include('support.setting')
        <!-- /Setting Panel -->

        <!-- Main Content -->

            <div class="hk-pg-wrapper">
                <!-- Container -->
                    @yield('content')
                <!-- Container -->
                <!-- Footer -->
                    @include('support.footer')
                <!-- /Footer -->
            </div>
        <!-- /Main Content -->

    </div>
    <!-- /HK Wrapper -->

    @include('support.script')
    @if (session()->has('success'))
        <script type="text/javascript">
            $.toast({
                text: "<i class='jq-toast-icon glyphicon glyphicon-ok'></i><p><strong>Success.! </strong> &nbsp;{{session()->get('success')}}</p>",
                position: 'top-center',
                loaderBg:'#7a5449',
                class: 'jq-has-icon jq-toast-success',
                hideAfter: 3500, 
                stack: 6,
                showHideTransition: 'fade'
            });
        </script>
    @endif
    @yield('addScript')
  
</body>
</html>