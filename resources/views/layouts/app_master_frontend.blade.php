<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
        <title>{{ ($title_page ?? "Đồ Án Tốt Nghiệp")   }}</title>
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <link rel="icon" sizes="32x32" type="image/png" href="{{ asset('ico.png') }}" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
        <link rel="stylesheet" href="{!! asset('admin/plugins/toastr/toastr.min.css') !!}">
       

<!--Start of Fchat.vn--><script type="text/javascript" src="https://cdn.fchat.vn/assets/embed/webchat.js?id=673f123640b5f058eb5f57e8" async="async"></script><!--End of Fchat.vn-->
        @yield('css')
        {{-- Thông báo --}}
        @if(session('toastr'))
            <script>
                var TYPE_MESSAGE = "{{session('toastr.type')}}";
                var MESSAGE = "{{session('toastr.message')}}";
            </script>
        @endif
        <style>
            .main-title {
                color: red;
            }
            .product-item a h3 {
                font-size: 14px !important;
            }
        </style>
    </head>
    <body>
        @include('frontend.components.header')
        @yield('content')
        @include('frontend.components.footer')

        <script>
            var DEVICE = '{{  device_agent() }}'
        </script>
        @yield('script')
        <div id="fb-root"></div>
        <div id="fb-customer-chat" class="fb-customerchat">
        </div>
        <script src="js/custom.js"></script>
    </body>
    
   
</html>
