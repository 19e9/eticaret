@extends('layouts.admin')

@section('content')
<div class="card">
    <div class="card-header">
        <h4>Ürün Ekle</h4>
    </div>
        <div class="card-body">
            <form action="{{ url('update-product/'.$products->id) }}" method="POST" enctype="multipart/form-data">
                @method('PUT')
                @csrf
                <div class="row">
                    <div class="col-md-12 mb-3">
                        <select class="form-select">
                            <option value="">{{ $products->category->name}}</option>
                        </select>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="">Ürün Adı</label>
                        <input type="text" class="form-control" value="{{ $products->name }}" name="name" required>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="">Link Adı</label>
                        <input type="text" class="form-control" value="{{ $products->slug }}" name="slug" required>
                    </div>
                    <div class="col-md-12 mb-3">
                        <label for="">Küçük Açıklama</label>
                        <textarea name="small_description" required rows="3" class="form-control">{{ $products->small_description }}</textarea>
                    </div>
                    <div class="col-md-12 mb-3">
                        <label for="">Ürün Hakkında</label>
                        <textarea name="description" required rows="3" class="form-control">{{ $products->description }}</textarea>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="">Orijinal Fiyat</label>
                        <input type="number" value="{{ $products->original_price }}" class="form-control" name="original_price" required>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="">İndirim Fiyat</label>
                        <input type="number" value="{{ $products->selling_price }}" class="form-control" name="selling_price" required>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="">Vergi</label>
                        <input type="number" value="{{ $products->tax }}" class="form-control" name="tax" required>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="">Adet</label>
                        <input type="number" value="{{ $products->qty }}" class="form-control" name="qty" required>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="">Durum</label>
                        <input type="checkbox" {{ $products->status == "1" ? 'checked' : '' }} name="status">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="">Trend</label>
                        <input type="checkbox" {{ $products->trending == "1" ? 'checked' : '' }} name="trending">
                    </div>
                    <div class="col-md-12 mb-3">
                        <label for="">Meta Başlık</label>
                        <input type="text" value="{{ $products->meta_title }}" class="form-control" name="meta_title" required>
                    </div>
                    <div class="col-md-12 mb-3">
                        <label for="">Anahtar Kelimeler</label>
                        <textarea name="meta_keywords" required rows="3" class="form-control">{{ $products->meta_keywords }}</textarea>
                    </div>
                    <div class="col-md-12 mb-3">
                        <label for="">Meta Açıklama</label>
                        <textarea name="meta_description" required rows="3" class="form-control">{{ $products->meta_description }}</textarea>
                    </div>
                    @if ($products->image)
                        <img src="{{ asset('assets/uploads/products/'.$products->image) }}" class="cate-image" alt="">
                    @endif
                    <div class="col-md-12">
                        <input type="file" name="image" required class="form-control">
                    </div>
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-primary">Güncelle</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
@endsection
