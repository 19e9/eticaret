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
                        <h4>Sipariş Faturası
                            <a href="{{ url('my-order') }}" class="btn-warning float-end">Geri Dön</a>
                        </h4>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <col class="md-6 order-details">
                            <h5>Adres Detayıları</h5>
                            <hr>
                            <label for="">Ad :</label>
                            <div class="boder p-2">{{ $orders->fname }}</div>
                            <label for="">Soyad :</label>
                            <div class="boder p-2">{{ $orders->lname }}</div>
                            <label for="">E-posta :</label>
                            <div class="boder p-2">{{ $orders->email }}</div>
                            <label for="">Cep Telefon No :</label>
                            <div class="boder p-2">{{ $orders->phone }}</div>
                            <label for="">Sipariş Adresi</label>
                            <div class="boder p-2">
                                {{ $orders->city }},
                                {{ $orders->state }},
                                {{ $orders->nhood }},
                                {{ $orders->addres1 }},
                                {{ $orders->addres2 }},
                            </div>
                            <label for="">Posta Kodu :</label>
                            <div class="boder">{{ $orders->zipcode }}</div>
                        </div>
                        <br>
                        <div class="col-md-6">
                            <h4>Sipariş Detayıları</h4>
                            <hr>
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Ürün Adı</th>
                                        <th>Adet</th>
                                        <th>Fiyat</th>
                                        <th>Resim</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($orders->orderitems as $item)
                                        <tr>
                                            <td>{{ $item->products->name }}</td>
                                            <td>{{ $item->qty }}</td>
                                            <td>{{ $item->price }}</td>
                                            <td>
                                                <img src="{{ asset('assets/uploads/products/'.$item->products->image) }}" width="50px" alt="Ürün Resimi">
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                            <h4 class="px-2">Toplam : <span class="float-end">{{ $orders->total_price }} ₺</span></h4>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>

@endsection
