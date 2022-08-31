@extends('frontend.layouts.main')

@section('title')
    {{ __('Leaderboard') }}
@endsection

@section('content')
    <div class="btn-group mb-4" role="group" aria-label="{{ __('All games') }}">
        @if(Request::get('game') == 'VideoPoker')
            <a href="{{ route('frontend.leaderboard', array_merge(request()->query(), ['game' => 'VideoPoker'])) }}" class="btn btn-primary">{{ __('Video Poker') }}</a>
        @else
            <a href="{{ route('frontend.leaderboard', request()->query()) }}" class="btn btn-primary">{{ __('All games') }}</a>
        @endif
        <button type="button" class="btn btn-primary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></button>
        <div class="dropdown-menu">
            <a class="dropdown-item" href="{{ route('frontend.leaderboard', array_merge(request()->query(), ['game' => NULL, 'index' => NULL])) }}">{{ __('All games') }}</a>
            <div class="dropdown-divider"></div>
            @installed('game-video-poker')
            <a class="dropdown-item" href="{{ route('frontend.leaderboard', array_merge(request()->query(), ['game' => 'VideoPoker'])) }}">
                {{ __('Video Poker') }}
            </a>
            @endinstalled
            
        </div>
    </div>
    <div class="btn-group mb-4" role="group" aria-label="{{ __('All time') }}">
        @if(Request::get('period') == 'CurrentWeek')
            <a href="{{ route('frontend.leaderboard', array_merge(request()->query(), ['period' => 'CurrentWeek'])) }}" class="btn btn-primary">{{ __('Current week') }}</a>
        @elseif(Request::get('period') == 'CurrentMonth')
            <a href="{{ route('frontend.leaderboard', array_merge(request()->query(), ['period' => 'CurrentMonth'])) }}" class="btn btn-primary">{{ __('Current month') }}</a>
        @elseif(Request::get('period') == 'PreviousMonth')
            <a href="{{ route('frontend.leaderboard', array_merge(request()->query(), ['period' => 'PreviousMonth'])) }}" class="btn btn-primary">{{ __('Previous month') }}</a>
        @elseif(Request::get('period') == 'CurrentYear')
            <a href="{{ route('frontend.leaderboard', array_merge(request()->query(), ['period' => 'CurrentYear'])) }}" class="btn btn-primary">{{ __('Current year') }}</a>
        @else
            <a href="{{ route('frontend.leaderboard', request()->query()) }}" class="btn btn-primary">{{ __('All time') }}</a>
        @endif
        <button type="button" class="btn btn-primary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></button>
        <div class="dropdown-menu">
            <a class="dropdown-item" href="{{ route('frontend.leaderboard', array_merge(request()->query(), ['period' => NULL])) }}">{{ __('All time') }}</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="{{ route('frontend.leaderboard', array_merge(request()->query(), ['period' => 'CurrentWeek'])) }}">{{ __('Current week') }}</a>
            <a class="dropdown-item" href="{{ route('frontend.leaderboard', array_merge(request()->query(), ['period' => 'CurrentMonth'])) }}">{{ __('Current month') }}</a>
            <a class="dropdown-item" href="{{ route('frontend.leaderboard', array_merge(request()->query(), ['period' => 'PreviousMonth'])) }}">{{ __('Previous month') }}</a>
            <a class="dropdown-item" href="{{ route('frontend.leaderboard', array_merge(request()->query(), ['period' => 'CurrentYear'])) }}">{{ __('Current year') }}</a>
        </div>
    </div>
    @if($users->isEmpty())
        <div class="alert alert-info" role="alert">
            {{ __('No data found.') }}
        </div>
    @else
        <table class="table table-hover table-stackable">
            <thead>
            <tr>
                <th>{{ __('Rank') }}</th>
                <th>{{ __('Name') }}</th>
                <th class="text-right">{{ __('Games played') }}</th>
                <th class="text-right">{{ __('Total bet') }}</th>
                <th class="text-right">{{ __('Max win') }}</th>
                <th class="text-right">{{ __('Total net win') }}</th>
                <th class="text-right"><i class="fas fa-arrow-down"></i> {{ __('Total win') }}</th>
            </tr>
            </thead>
            <tbody>
            @foreach ($users as $i=> $user)
                <tr>
                    <td data-title="{{ __('Rank') }}">
                        {{ ++$i + 10 * (max(1, intval(request()->query('page'))) - 1) }}
                    </td>
                    <td data-title="{{ __('Name') }}">
                        <a href="{{ route('frontend.users.show', $user) }}">
                            {{ $user->name }}
                        </a>
                    </td>
                    <td data-title="{{ __('Games played') }}" class="text-right">
                        {{ $user->_total_games }}
                    </td>
                    <td data-title="{{ __('Total bet') }}" class="text-right">
                        {{ $user->_total_bet }}
                    </td>
                    <td data-title="{{ __('Max win') }}" class="text-right">
                        {{ $user->_max_win }}
                    </td>
                    <td data-title="{{ __('Total net win') }}" class="text-right">
                        {{ $user->_total_net_win }}
                    </td>
                    <td data-title="{{ __('Total win') }}" class="text-right">
                        {{ $user->_total_win }}
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
        <div class="d-flex justify-content-center">
            {{ $users->appends(request()->query())->links() }}
        </div>
    @endif
@endsection
