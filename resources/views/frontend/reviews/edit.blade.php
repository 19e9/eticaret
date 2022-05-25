@extends('layouts.front')

@section('title', "Yorum Düzenle" )

@section('content')
<div class="container py-5">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-body">
                    <h5>Yorumunuzu Bu ürün için yazın {{ $review->product->name }}</h5>
                    <form action="{{ url('/update-review') }}" method="POST">
                        @csrf
                        @method('PUT')
                        <input type="hidden" name="review_id" value="{{ $review->id }}">
                        <textarea class="form-control" name="user_review" rows="5" placeholder="Yorumunuzu burdayızın">{{  $review->user_review }}</textarea>
                        <button type="submit" class="btn btn-primary mt-3">Yorumu Güncelle</button>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>

@endsection
