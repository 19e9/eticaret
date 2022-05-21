@extends('layouts.admin')

@section('content')
<div class="card">
    <div class="card-header">
    <h4>Ürünler</h4>
    <hr>
    </div>
        <div class="card-body">
        <table class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Kategori Adı</th>
                    <th>Ürün Adı</th>
                    <th>Satış Fiyat</th>
                    <th>Resim</th>
                    <th>İşlem</th>
                </tr>
            </thead>
            <tbody>
                @foreach($products as $item)
                    <tr>
                        <td>{{ $item->id }}</td>
                        <td>{{ $item->category->name }}</td>
                        <td>{{ $item->name }}</td>
                        <td>{{ $item->selling_price }}</td>
                        <td>
                            <img src="{{ asset('assets/uploads/products/'.$item->image) }}" class="cate-image" alt="Resim Burda">
                        </td>
                        <td>
                            <a href="{{ url('edit-product/'.$item->id) }}" class="btn btn-primary btn-sm">Düzenle</a>
                            <a href="{{ url('delete-product/'.$item->id) }}" class="btn btn-Danger btn-sm">Sil</a>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
        </div>
    </div>
@endsection
