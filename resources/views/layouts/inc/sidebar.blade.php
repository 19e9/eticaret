<div class="sidebar" data-color="purple" data-background-color="white" data-image="../assets/img/sidebar-1.jpg">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
      <div class="logo"><a href="{{ url('/') }}" class="simple-text logo-normal">
          E-Ticaret
        </a></div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="nav-item {{ Request::is('dashboard') ? 'active':'' }}  ">
            <a class="nav-link" href="{{ url('/dashboard') }}">
              <i class="material-icons">dashboard</i>
              <p>Dashboard</p>
            </a>
          </li>
          <li class="nav-item {{ Request::is('categories') ? 'active':'' }}">
            <a class="nav-link" href="{{ url('categories') }}">
              <i class="material-icons">category</i>
              <p>Kategoriler</p>
            </a>
          </li>
          <li class="nav-item {{ Request::is('add-category') ? 'active':'' }}">
            <a class="nav-link" href="{{ url('add-category') }}">
              <i class="material-icons">add</i>
              <p>Kategori Ekle</p>
            </a>
          </li>
          <li class="nav-item {{ Request::is('products') ? 'active':'' }}">
            <a class="nav-link" href="{{ url('products') }}">
              <i class="material-icons">style</i>
              <p>Ürünler</p>
            </a>
          </li>
          <li class="nav-item {{ Request::is('add-products') ? 'active':'' }}">
            <a class="nav-link" href="{{ url('add-products') }}">
              <i class="material-icons">add</i>
              <p>Ürün Ekle</p>
            </a>
          </li>

        </ul>
      </div>
    </div>
