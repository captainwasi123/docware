<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="host" content="{{URL::to('/')}}">
    <title>@yield('title') | eLogistic</title>
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

    @yield('addScript')
  
</body>
</html>