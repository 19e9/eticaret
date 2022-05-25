@extends('layouts.front')

@section('title')
    Sepetim
@endsection

@section('content')

<div class="py-3 mb-4 shadow-sm bg-warning border-top">
    <div class="container">
        <h6 class="mb-8">
             <a href="{{ url('/') }}">
                 AnaSayfa
             </a> /
             <a href="{{ url('cart') }}">
                 Sepet
             </a>
         </h6>
    </div>
</div>

<div class="container my-5">
    <div class="card shadow ">
         <div class="card-body">
             @php $total = 0; @endphp
             @foreach ($cartitems as $item)
                <div class="row product_data">
                    <div class="col-md-2 my-auto">
                        <img src="{{ asset('assets/uploads/products/'.$item->products->image) }}" height="70px" width="70px" alt="Resim Burda">
                    </div>
                    <div class="col-md-3 my-auto">
                        <h6>{{ $item->products->name }}</h6>
                    </div>
                    <div class="col-md-2 my-auto">
                        <h6>{{ $item->products->selling_price }} ₺ </h6>
                    </div>
                    <div class="col-md-3 my-auto">
                        <input type="hidden" class="prod_id" value="{{ $item->prod_id}}">
                        @if( $item->products->qty >= $item->prod_qty )
                            <label for="Quanity">Adet</label>
                            <div class="input-group text-center mb-3" style="width:130px;">
                                <button class="input-group-text changeQuantity decrement-btn">-</button>
                                <input type="text" name="quantity" class="form-control qty-input text-center" value="{{ $item->prod_qty }}">
                                <button class="input-group-text changeQuantity increment-btn">+</button>
                            </div>
                            @php $total += $item->products->selling_price * $item->prod_qty; @endphp
                        @else
                            <h6>Stoktan tükendi</h6>
                        @endif
                    </div>
                    <div class="col-md-2 my-auto">
                        <button class="btn btn-danger delete-cart-item"><i class="fa fa-trash"></i> Sil</button>
                   </div>
                </div>
              @endforeach
            </div>
            <div class="card-footer">
                <h6>Ürünün Toplamı : {{ $total }} ₺
                <a href="{{ url('checkout') }}" class="btn btn-outline-success float-end">Sepeti Onayla</a>
            </div>
        </div>
    </div>
@endsection
