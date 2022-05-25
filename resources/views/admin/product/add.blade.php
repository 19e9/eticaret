@extends('layouts.admin')

@section('content')
<div class="card">
    <div class="card-header">
        <h4>Ürün Ekle</h4>
    </div>
        <div class="card-body">
            <form action="{{ url('insert-product') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="row">
                    <div class="col-md-12 mb-3">
                        <select class="form-select" name="cate_id" required >
                            <option value="">Katagori Seç</option>
                            @foreach ($category as $item)
                                <option value="{{ $item->id }}">{{ $item->name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="">Ürün Adı</label>
                        <input type="text" class="form-control" name="name" required>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="">Link Adı</label>
                        <input type="text" class="form-control" name="slug" required>
                    </div>
                    <div class="col-md-12 mb-3">
                        <label for="">Küçük Açıklama</label>
                        <textarea name="small_description" required rows="3" class="form-control"></textarea>
                    </div>
                    <div class="col-md-12 mb-3">
                        <label for="">Ürün Hakkında</label>
                        <textarea name="description" required rows="3" class="form-control"></textarea>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="">Orijinal Fiyat</label>
                        <input type="number" class="form-control" name="original_price" required>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="">İndirim Fiyat</label>
                        <input type="number" class="form-control" name="selling_price" required>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="">Vergi</label>
                        <input type="number" class="form-control" name="tax" required>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="">Adet</label>
                        <input type="number" class="form-control" name="qty" required>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="">Durum</label>
                        <input type="checkbox" name="status">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="">Trend</label>
                        <input type="checkbox" name="trending">
                    </div>
                    <div class="col-md-12 mb-3">
                        <label for="">Meta Başlık</label>
                        <input type="text" class="form-control" name="meta_title" required>
                    </div>
                    <div class="col-md-12 mb-3">
                        <label for="">Anahtar Kelimeler</label>
                        <textarea name="meta_keywords" required rows="3" class="form-control"></textarea>
                    </div>
                    <div class="col-md-12 mb-3">
                        <label for="">Meta Açıklama</label>
                        <textarea name="meta_description" required rows="3" class="form-control"></textarea>
                    </div>
                    <div class="col-md-12">
                        <input type="file" name="image" required class="form-control">
                    </div>
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-primary">Ekle</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
@endsection
