@extends ('template')

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