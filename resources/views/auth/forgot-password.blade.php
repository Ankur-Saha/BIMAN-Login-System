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
                    <p class="login-card-description">Reset password</p>
                    @if (session ('status'))
                    <div class="alert  alert-success" role="alert">
                        {{ session ('status') }}
                    </div>
                    @endif
                    <form method="POST" action="{{ route('password.request') }}">
                        @csrf

                        <div class="form-group">
                            <label for="email" class="sr-only">Email</label>
                            <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" placeholder="Email address">
                            @error('email')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                        </div>
                        <input name="reset" id="reset" class="btn btn-block login-btn mb-4" type="submit" value="Reset">
                    </form>
                    <p class="login-card-footer-text">Don't have an account? <a href="{{ route('register') }}" class="text-reset">Register here</a></p>
                    <nav class="login-card-footer-nav">
                        <a href="#!">Terms of use.</a>
                        <a href="#!">Privacy policy</a>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    @endsection