<nav class="navbar navbar-expand-lg bg-light">
    <div class="container">
      <a class="navbar-brand" href="{{ url('/') }}">E-Ticaret</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="{{ url('/') }}">AnaSayfa <i class="fa fa-home"></i></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{ url('category') }}">Kategorilar</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{ url('cart') }}">Sepet <i class="fa fa-shopping-cart"></i></a>
          </li>
          @guest
          @if (Route::has('login'))
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('login') }}">{{ __('Giriş Yap') }}</a>
                </li>
            @endif

            @if (Route::has('register'))
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('register') }}">{{ __('Üye Ol') }}</a>
                </li>
            @endif
        @else
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    {{ Auth::user()->name }}
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li>
                    <a class="dropdown-item" href="{{ url('my-order') }}">
                        Siparişlerim
                    </a>
                </li>

                    <li>
                        <a class="dropdown-item" href="{{ route('logout') }}"  onclick="event.preventDefault(); document.getElementById('logout-form').submit();" >
                            {{ __('Çıkış Yap') }}
                        </a>
                        <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                        @csrf
                        </form>
                    </li>
                </ul>
            </li>
          @endguest
        </ul>
      </div>
    </div>
  </nav>
