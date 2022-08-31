@extends('frontend.layouts.home')

@section('content')
    <div id="masthead" class="mb-5">
        <div class="jumbotron jumbotron-fluid text-center">
            <div class="container">
                <h1 class="display-3 text-black">{{ __('Poker') }}</h1>
                <div>
                    @auth
                        <a href="{{ route('frontend.users.show', auth()->user()) }}" class="btn btn-primary btn-lg">{{ __('My profile') }}</a>
                    @else
                        <a href="{{ route('login') }}" class="btn btn-outline-info btn-lg mr-2">{{ __('Log in') }}</a>
                        <a href="{{ route('register') }}" class="btn btn-info btn-lg">{{ __('Sign up') }}</a>
                    @endauth
                </div>
            </div>
        </div>
    </div>

    <div id="call-to-action-blocks" class="container">
        <div class="row">
            <div class="col-lg-4 mt-3 mb-5">
                <div class="bg-secondary shadow-sm p-3">
                    <h2>{{ __('Free trial') }}</h2>
                    <p>
                        {{ __('Sign up and get :x free credits to play and try our casino.', ['x' => config('settings.bonuses.sign_up_credits')]) }}
                    </p>
                    @auth
                        <a href="{{ route('frontend.users.show', auth()->user()) }}" class="btn btn-primary">{{ __('My profile') }}</a>
                    @else
                        <a href="{{ route('register') }}" class="btn btn-primary">{{ __('Sign up') }}</a>
                    @endauth
                </div>
            </div>
        </div>
    </div>

@endsection
