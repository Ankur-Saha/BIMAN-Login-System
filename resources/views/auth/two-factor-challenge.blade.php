@extends('template')

@section('content')
<div class="container">
    <div class="card login-card">
        <div class="row no-gutters">
            <div class="col-md-5">
                <img src="/img/login.jpg" alt="login" class="login-card-img">
            </div>
            <div class="col-md-7">
                @error('email')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
                @enderror
                <div class="card-body">
                    <div class="brand-wrapper">
                        <img src="/img/logo.svg" alt="logo" class="logo">
                    </div>
                    @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                    @endif
                    <p class="login-card-description">Please enter your authentication code to login.</p>
                    <form method="POST" action="{{ route('two-factor.login') }}">
                        @csrf
                        <input id="code" type="code" class="form-control @error('code') is-invalid @enderror" name="code" required autocomplete="current-code">

                        @error('code')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                        <button type="submit" class="btn btn-primary">
                            {{ __('Submit') }}
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection