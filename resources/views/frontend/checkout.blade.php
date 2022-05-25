@extends('layouts.front')

@section('title')
    Ödeme | E-Ticaret
@endsection

@section('content')
    <div class="container mt-3">
        <form action="{{ url('place-order') }}" method="POST">
            {{ csrf_field() }}
        <div class="row">
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <h6>Adres Bilgileri</h6>
                        <hr>
                        <div class="row checkout-form">
                            <div class="col-md-6">
                                <label for="">Ad</label>
                                <input type="text" class="form-control" value="{{ Auth::user()->name }}" name="fname"  required placeholder="">
                            </div>
                            <div class="col-md-6">
                                <label for="">Soyad</label>
                                <input type="text" class="form-control" value="{{ Auth::user()->lname }}" name="lname" required placeholder="">
                            </div>
                            <div class="col-md-6 mt-3">
                                <label for="">E-posta</label>
                                <input type="text" class="form-control" value="{{ Auth::user()->email }}" name="email" required placeholder="">
                            </div>
                            <div class="col-md-6 mt-3">
                                <label for="">Telefon</label>
                                <input type="text" class="form-control" value="{{ Auth::user()->phone }}" name="phone" required placeholder="">
                            </div>
                            <div class="col-md-6 mt-3">
                                <label for="">İl*</label>
                                <select class="form-select" value="{{ Auth::user()->city }}" name="city" required>
                                    <option selected>Seçiniz</option>
                                    <option value="İstanbul">İstanbul</option>
                                    <option value="Ankara">Ankara</option>
                                    <option value="İzmir">İzmir</option>
                                    <option value="Adana">Adana</option>
                                    <option value="Adıyaman">Adıyaman</option>
                                    <option value="Afyonkarahisar">Afyonkarahisar</option>
                                    <option value="Ağrı">Ağrı</option>
                                    <option value="Aksaray">Aksaray</option>
                                    <option value="Amasya">Amasya</option>
                                    <option value="Antalya">Antalya</option>
                                    <option value="Ardahan">Ardahan</option>
                                    <option value="Artvin">Artvin</option>
                                    <option value="Aydın">Aydın</option>
                                    <option value="Balıkesir">Balıkesir</option>
                                    <option value="Bartın">Bartın</option>
                                    <option value="Batman">Batman</option>
                                    <option value="Bayburt">Bayburt</option>
                                    <option value="Bilecik3">Bilecik</option>
                                    <option value="Bingöl">Bingöl</option>
                                    <option value="Bitlis">Bitlis</option>
                                    <option value="Bolu">Bolu</option>
                                    <option value="Burdur">Burdur</option>
                                    <option value="Bursa">Bursa</option>
                                    <option value="Çanakkale">Çanakkale</option>
                                    <option value="Çankırı">Çankırı</option>
                                    <option value="Çorum">Çorum</option>
                                    <option value="Denizli">Denizli</option>
                                    <option value="Diyarbakır">Diyarbakır</option>
                                    <option value="Düzce">Düzce</option>
                                    <option value="Edirne">Edirne</option>
                                    <option value="Elazığ">Elazığ</option>
                                    <option value="Erzincan">Erzincan</option>
                                    <option value="Erzurum">Erzurum</option>
                                    <option value="Eskişehir">Eskişehir</option>
                                    <option value="Gaziantep">Gaziantep</option>
                                    <option value="Giresun">Giresun</option>
                                    <option value="Gümüşhane">Gümüşhane</option>
                                    <option value="Hakkari">Hakkari</option>
                                    <option value="Hatay">Hatay</option>
                                    <option value="Iğdır">Iğdır</option>
                                    <option value="Isparta">Isparta</option>
                                    <option value="Kahramanmaraş">Kahramanmaraş</option>
                                    <option value="Karabük">Karabük</option>
                                    <option value="Karaman">Karaman</option>
                                    <option value="Kars">Kars</option>
                                    <option value="Kastamonu">Kastamonu</option>
                                    <option value="Kayseri">Kayseri</option>
                                    <option value="Kırıkkale">Kırıkkale</option>
                                    <option value="Kırklareli">Kırklareli</option>
                                    <option value="Kırşehir">Kırşehir</option>
                                    <option value="Kilis">Kilis</option>
                                    <option value="Kocaeli">Kocaeli</option>
                                    <option value="Konya">Konya</option>
                                    <option value="Kütahya">Kütahya</option>
                                    <option value="Malatya">Malatya</option>
                                    <option value="Manisa">Manisa</option>
                                    <option value="Mardin">Mardin</option>
                                    <option value="Mersin">Mersin</option>
                                    <option value="Muğla">Muğla</option>
                                    <option value="Muş">Muş</option>
                                    <option value="Nevşehir">Nevşehir</option>
                                    <option value="Niğde">Niğde</option>
                                    <option value="Ordu">Ordu</option>
                                    <option value="Osmaniye">Osmaniye</option>
                                    <option value="Rize">Rize</option>
                                    <option value="Sakarya">Sakarya</option>
                                    <option value="Samsun">Samsun</option>
                                    <option value="Siirt">Siirt</option>
                                    <option value="Sinop">Sinop</option>
                                    <option value="Sivas">Sivas</option>
                                    <option value="Şanlıurfa">Şanlıurfa</option>
                                    <option value="Şırnak">Şırnak</option>
                                    <option value="Tekirdağ">Tekirdağ</option>
                                    <option value="Tokat">Tokat</option>
                                    <option value="Trabzon">Trabzon</option>
                                    <option value="Tunceli">Tunceli</option>
                                    <option value="Uşak">Uşak</option>
                                    <option value="Van">Van</option>
                                    <option value="Yalova">Yalova</option>
                                    <option value="Yozgat">Yozgat</option>
                                    <option value="Zonguldak">Zonguldak</option>
                                </select>
                            </div>
                                    <div class="col-md-6 mt-3">
                                        <label for="">İlçe*</label>
                                        <input type="text" class="form-control" value="{{ Auth::user()->state }}" name="state" required placeholder="">
                                    </div>
                                    <div class="col-md-6 mt-3">
                                        <label for="">Mahalle*</label>
                                        <input type="text" class="form-control" value="{{ Auth::user()->nhood }}" name="nhood" required placeholder="">
                                    </div>
                                    <div class="col-md-6 mt-3">
                                        <label for="">Adres*</label>
                                        <input type="text" class="form-control" value="{{ Auth::user()->addres1 }}" name="addres1" required placeholder="">
                                    </div>
                                    <div class="col-md-6 mt-3">
                                        <label for="">Adres Başlığı*</label>
                                        <input type="text" class="form-control" value="{{ Auth::user()->addres2 }}" name="addres2" required placeholder="">
                                    </div>
                                    <div class="col-md-6 mt-3">
                                        <label for="">Post Kodu</label>
                                        <input type="text" class="form-control" value="{{ Auth::user()->zipcode }}" name="zipcode" required placeholder="">
                                    </div>
                    </div>
                </div>
            </div>
        </div>

            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <h6>Sipariş Bilgileri</h6>
                        <hr>
                        <table class="table table-striped table-bordered">
                            <thead>
                                <tr>
                                    <th>Ürün </th>
                                    <th>Adet</th>
                                    <th>Fiyat</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($cartitems as $item)
                                <tr>
                                    <td>{{ $item->products->name }}</td>
                                    <td>{{ $item->prod_qty }}</td>
                                    <td>{{ $item->products->selling_price }}</td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                        <hr>
                        <button type="submit" class="btn btn-primary">Siparişimi Onayla</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
    </div>
@endsection
