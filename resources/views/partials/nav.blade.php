<nav class="navbar navbar-default navbar-inverse">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle Navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="{{ (Request::is('/') ? 'active' : '') }}">
                    <a href="{{ url('') }}"><i class="fa fa-home"></i> Home</a>
                </li>
                @if (!Auth::guest())
                    <li class="{{ (Request::is('expressions') ? 'active' : '') }}">
                        <a href="{{ url('expressions') }}">Expressions</a>
                    </li>
                @endif
                <li class="{{ (Request::is('about') ? 'active' : '') }}">
                    <a href="{{ url('about') }}">About</a>
                </li>
            </ul>

            <span style="position:absolute;top:0px;left:0px;text-align:center;width:100%;height:40px;">
                    <a href="/"><img alt="russell etheridge dot com" src="/img/logo-anim.png"></a>
                </span>

            <ul class="nav navbar-nav navbar-right">
                @if (Auth::guest())
                    <li class="{{ (Request::is('auth/login') ? 'active' : '') }}"><a href="{{ url('auth/login') }}"><i
                                    class="fa fa-sign-in"></i> Login</a></li>
                    {{--<li class="{{ (Request::is('auth/register') ? 'active' : '') }}"><a--}}
                                {{--href="{{ url('auth/register') }}">Register</a></li>--}}
                @else
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                           aria-expanded="false"><i class="fa fa-user"></i> {{ Auth::user()->name }} <i
                                    class="fa fa-caret-down"></i></a>
                        <ul class="dropdown-menu" role="menu">
                            @if(Auth::check())
                                @if(Auth::user()->admin==1)
                                    <li>
                                        <a href="{{ url('admin/dashboard') }}"><i class="fa fa-tachometer"></i> Admin Dashboard</a>
                                    </li>
                                @endif
                                <li role="presentation" class="divider"></li>
                            @endif
                            <li>
                                <a href="{{ url('auth/logout') }}"><i class="fa fa-sign-out"></i> Logout</a>
                            </li>
                        </ul>
                    </li>
                @endif
            </ul>
        </div>
    </div>
</nav>