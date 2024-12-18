<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Thanh toán hóa đơn h&#224;ng</title>
    <link rel="stylesheet" href="{{asset('vnpay/bootstrap4.min.css')}}">
</head>

<body style="font-size: 0.9rem;">
    <div class="container">

        <div class="clearfix" style="padding-bottom: 1rem;">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="/tryitnow/">VNPAY THANH TOÁN</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown"
                    aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                    <ul class="navbar-nav">

                        <li class="nav-item">
                            <a class="nav-link " href="/tryitnow/">Danh sách </a> </li>
                        <li class="nav-item"> <a class="nav-link active" href="/tryitnow/Home/CreateOrder">Tạo mới <span
                                    class="sr-only">(current)</span></a></li>

                    </ul>
                </div>
            </nav>
        </div>

        <h3>Tạo mới đơn h&#224;ng</h3>
        <div class="table-responsive">
            <form action="{{ route('payment.online') }}" id="frmCreateOrder" method="post">
                @csrf
                <div class="form-group">
                    <label for="language">Loại hàng hóa </label>
                    <select name="order_type" id="ordertype" class="form-control">
                        <option value="topup">Nạp tiền điện thoại</option>
                        <option value="billpayment">Thanh toán hóa đơn</option>
                        <option value="fashion">Thời trang</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="Amount">Số tiền</label>
                    <input class="form-control" data-val="true" data-val-number="The field Amount must be a number."
                        data-val-required="The Amount field is required." id="Amount" name="amount" type="text"
                        value="{{$totalMoney}}" />
                </div>
                <div class="form-group">
                    <label for="OrderDescription">Nội dung thanh toán</label>
                    <textarea class="form-control" cols="20" id="OrderDescription" name="order_desc" rows="2"></textarea>
                </div>
                <div class="form-group">
                    <label for="bankcode">Ngân hàng</label>
                    <select name="bank_code" id="bankcode" class="form-control">
                        <option value="">Không chọn </option>
                        <option value="QRONLY">Thanh toan QRONLY</option>
                        <option value="MBAPP">Ung dung MobileBanking</option>
                        <option value="VNPAYQR">VNPAYQR</option>
                        <option value="VNBANK">LOCAL BANK</option>
                        <option value="IB">INTERNET BANKING</option>
                        <option value="ATM">ATM CARD</option>
                        <option value="INTCARD">INTERNATIONAL CARD</option>
                        <option value="VISA">VISA</option>
                        <option value="MASTERCARD"> MASTERCARD</option>
                        <option value="JCB">JCB</option>
                        <option value="UPI">UPI</option>
                        <option value="VIB">VIB</option>
                        <option value="VIETCAPITALBANK">VIETCAPITALBANK</option>
                        <option value="SCB">Ngan hang SCB</option>
                        <option value="NCB">Ngan hang NCB</option>
                        <option value="SACOMBANK">Ngan hang SacomBank </option>
                        <option value="EXIMBANK">Ngan hang EximBank </option>
                        <option value="MSBANK">Ngan hang MSBANK </option>
                        <option value="NAMABANK">Ngan hang NamABank </option>
                        <option value="VNMART"> Vi dien tu VnMart</option>
                        <option value="VIETINBANK">Ngan hang Vietinbank </option>
                        <option value="VIETCOMBANK">Ngan hang VCB </option>
                        <option value="HDBANK">Ngan hang HDBank</option>
                        <option value="DONGABANK">Ngan hang Dong A</option>
                        <option value="TPBANK">Ngân hàng TPBank </option>
                        <option value="OJB">Ngân hàng OceanBank</option>
                        <option value="BIDV">Ngân hàng BIDV </option>
                        <option value="TECHCOMBANK">Ngân hàng Techcombank </option>
                        <option value="VPBANK">Ngan hang VPBank </option>
                        <option value="AGRIBANK">Ngan hang Agribank </option>
                        <option value="MBBANK">Ngan hang MBBank </option>
                        <option value="ACB">Ngan hang ACB </option>
                        <option value="OCB">Ngan hang OCB </option>
                        <option value="IVB">Ngan hang IVB </option>
                        <option value="SHB">Ngan hang SHB </option>
                        <option value="APPLEPAY">Apple Pay </option>
                        <option value="GOOGLEPAY">Google Pay </option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="language">Ngôn ngữ</label>
                    <select name="language" id="language" class="form-control">
                        <option value="vn">Tiếng Việt</option>
                        <option value="en">English</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-default">Thanh toán</button>
                <input name="__RequestVerificationToken" type="hidden"
                    value="v0LUOWjnQusTljeamOzv3AuUs6w4IcJx8i8IhY9nu7zwRERWlsPGpsq1TTgPll3rGfw8Uo6nHbOGUiNhYDG-5Evmz8ophfTjt5aSelUmeFE1" />
            </form>
        </div>
        <p>
            &nbsp;
        </p>
        <footer class="footer">
            <p>&copy; VNPAY 2024</p>
        </footer>
    </div>
    <script src="/tryitnow/Styles/js/ie10-viewport-bug-workaround.js"></script>

    <link href="https://pay.vnpay.vn/lib/vnpay/vnpay.css" rel="stylesheet" />
    <script src="https://pay.vnpay.vn/lib/vnpay/vnpay.js"></script>
    
</body>

</html>