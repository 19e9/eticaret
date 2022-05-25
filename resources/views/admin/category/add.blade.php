@extends('layouts.admin')

@section('content')
<div class="card">
    <div class="card-header">
        <h4>Kategori Ekle</h4>
    </div>
        <div class="card-body">
            <form action="{{ url('insert-category') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="row">
                    <div class="col-md-6">
                        <label for="">Kategori Adı</label>
                        <input type="text" class="form-control" name="name" required>
                    </div>
                    <div class="col-md-6">
                        <label for="">Link Adı</label>
                        <input type="text" class="form-control" name="slug" required>
                    </div>
                    <div class="col-md-12 mb-3">
                        <label for="">Kategori Hakkında</label>
                        <textarea name="description"  required rows="3" class="form-control"></textarea>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="">Durum</label>
                        <input type="checkbox" name="status">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="">Popüler</label>
                        <input type="checkbox" name="popular">
                    </div>
                    <div class="col-md-12 mb-3">
                        <label for="">Meta Başlık</label>
                        <input type="text" class="form-control" name="meta_title" required>
                    </div>
                    <div class="col-md-12 mb-3">
                        <label for="">Meta Anahtar Kelimeler</label>
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
