@extends ('template')
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="#">Biman Bangladesh Airlines</a>
        <div class="me-0" id="navbarSupportedContent">
            <button name="logout" id="logout" class="btn btn-primary" type="submit" value="Logout">
                <a class="text-light" href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                    Logout
                </a>
            </button>
            <form id="logout-form" action="{{ route('logout') }}" method="POST">
                @csrf
            </form>
        </div>
    </div>
</nav>
@section ('content')

<div class="container">
    <div class="card login-card">
        <div class="row no-gutters">
            <div class="col-md-12">
                <div class="card-body">
                    @if(! auth()->user()->two_factor_secret)
                    You have not enabled 2-factor authentication.
                    <form method="POST" action="{{ url('user/two-factor-authentication') }}">
                        @csrf
                        <button type="submit" class="btn btn-primary">
                            Enable
                        </button>
                    </form>
                    @else
                    You have 2-factor authentication enabled.
                    <form method="POST" action="{{ url('user/two-factor-authentication') }}">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-primary">
                            Disable
                        </button>
                    </form>
                    @endif
                    @if (session('status') == 'two-factor-authentication-enabled')
                    <p>
                        You have now enabled 2fa, please scan the following QR code
                        into your phones authenticator application.<br><br>
                        {!! auth()->user()->twoFactorQrCodeSvg() !!}
                        @endif
                </div>
            </div>
        </div>
    </div>
</div>