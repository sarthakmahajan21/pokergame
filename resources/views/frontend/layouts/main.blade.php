<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    @include('frontend.includes.head')
</head>
<body class="{{ str_replace('.','-',Route::currentRouteName()) }} theme-{{ config('settings.theme') }}">
    @includeWhen(config('settings.gtm_container_id'), 'frontend.includes.gtm-body')

    <div id="app">

        <div class="container-fluid bg-primary">
            @includeFirst(['frontend.includes.header-udf','frontend.includes.header'])
        </div>

        <div class="container">

            <div class="mt-2">
                @message
                @endmessage
            </div>

            <div id="content" class="">
                <div class="row">
                    <div class="col">
                        <h1 class="mb-3">
                            @yield('title')
                            @yield('title_extra')
                        </h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        @yield('content')
                    </div>
                </div>
            </div>

        </div>

        @includeFirst(['frontend.includes.footer-udf', 'frontend.includes.footer'])

    </div>

    @include('frontend.includes.scripts')

</body>
</html>