@extends('layouts.front')

@section('title')
    Siparişim
@endsection

@section('content')
    <div class="container py-5">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4>Siparişlerim</h4>
                    </div>
                    <div class="card-body">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Takip No</th>
                                    <th>Toplam Fiyat</th>
                                    <th>Sipariş Durumu</th>
                                    <th>İşlem</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($orders as $item)
                                    <tr>
                                        <td>{{ $item->tracking_no }}</td>
                                        <td>{{ $item->total_price }}</td>
                                        <td>{{ $item->status== '0' ?'pending':'completed' }}</td>
                                        <td>
                                            <a href="{{ url('view-order/'.$item->id) }}" class="btn btn-primary">Göster</a>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>

            </div>
        </div>
    </div>

@endsection
