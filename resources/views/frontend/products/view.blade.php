@extends('layouts.front')

@section('title', $products->name)

@section('content')

<div class="py-3 mb-4 shadow-sm bg-warning border-top">
    <div class="container">
        <h6 class="mb-0"> Koleksiyonlar / Kategori Adı / Ürün </h6>
    </div>
</div>

<div class="container">
    <div class="card shadow">
          <div class="card-body">
                 <div class="row">
                       <div class="col-md-4 border-right">
                              <img src="{{asset('assets/uploads/products/'.$products->image)}}"class="w-100" alt="">
                       </div>
                       <div class="col-md-8">
                              <h2 class="mb-0">
                                    {{$products->name}}
                                    @if($products->trending == '1')
                                        <label style="font-size: 16px;" class="float-end badge bg-danger trending_tag">Trend</label>
                                    @endif
                              </h2>

                              <hr>
                              <label class="me-3">Orijinal Fiyat:<s>₺{{ $products->original_price}}</s></label>
                              <label class="fw-bold">Satış Fiyat: ₺{{ $products->selling_price}}</label>
                              <p class="mt-3">
                                    {!!$products->small_description !!}
                              </p>
                            <hr>
                            @if($products->qty > 0)
                                <label class="badge bg-success">Stokta var</label>
                            @else
                                 <label class="badge bg-danger">Stoklar tükendi</label>
                            @endif
                            <div class="row mt-2">
                                <div class="col-md-2">
                                     <label for="Quantity">Adet</label>
                                      <div class="input-group text-center mb-3">
                                          <span class="input-group-text">-</span>
                                          <input type="text"name="quantity"value="1"class="form-control"/>
                                           <span class="input-group-text">+</span>
                                     </div>
                                </div>
                                <div class="col-md-10">
                                     <br/>
                                     <button type="button" class="btn btn-success me-3 float-start">İstek listesine ekle</button>
                                     <button type="button" class="btn btn-primary me-3 float-start">Sepete Ekle</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
@endsection

