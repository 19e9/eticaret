@extends('layouts.front')

@section('title', "Yorum Ekleyin" )

@section('content')
<div class="container py-5">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-body">
                    @if ($verified_purchase->count() > 0)
                        <h5>Yorumunuzu Bu ürün için yazın {{ $product->name }}</h5>
                        <form action="{{ url('/add-review') }}" method="POST">
                            @csrf
                            <input type="hidden" name="product_id" value="{{ $product->id }}">
                            <textarea class="form-control" name="user_review" rows="5" placeholder="Yorumunuzu burdayızın"></textarea>
                            <button type="submit" class="btn btn-primary mt-3">EKle</button>
                        </form>
                    @else
                        <div class="alert alert-danger">
                            <h5>Bu ürünü incelemeye uygun değilsiniz</h5>
                            <p>
                                Yorumların güvenilirliği için yalnızca ürünü satın alan müşteriler ürün hakkında yorum yazabilir.
                            </p>
                            <a href="{{ url('/') }}" class="btn btn-primary mt-3">Ana Sayfaya Dön</a>
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
