@extends('layouts.admin')

@section('content')
<div class="card">
    <div class="card-header">
    <h4>Kategoriler</h4>
    <hr>
    </div>
        <div class="card-body">
        <table class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Kategori Adı</th>
                    <th>Kategori Hakkında</th>
                    <th>Resim</th>
                    <th>İşlem</th>
                </tr>
            </thead>
            <tbody>
                @foreach($category as $item)
                    <tr>
                        <td>{{ $item->id }}</td>
                        <td>{{ $item->name }}</td>
                        <td>{{ $item->description }}</td>
                        <td>
                            <img src="{{ asset('assets/uploads/category/'.$item->image) }}" class="cate-image" alt="Resim Burda">
                        </td>
                        <td>
                            <a href="{{ url('edit-category/'.$item->id)}}" class="btn btn-primary">Düzenle</a>
                            <a href="{{ url('delete-category/'.$item->id) }}" class="btn btn-Danger">Sil</a>
                        </td>
                    </tr>
                @endforeach

            </tbody>
        </table>
        </div>
    </div>
@endsection
