<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>A simple, clean, and responsive HTML invoice template</title>

    <style>
        .invoice-box {
            max-width: 800px;
            margin: auto;
            padding: 30px;
            border: 1px solid #eee;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
            font-size: 16px;
            line-height: 24px;
            font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
            color: #555;
        }

        .invoice-box table {
            width: 100%;
            line-height: inherit;
            text-align: left;
        }

        .invoice-box table td {
            padding: 5px;
            vertical-align: top;
        }

        .invoice-box table tr td:nth-child(2) {
            text-align: right;
        }

        .invoice-box table tr.top table td {
            padding-bottom: 20px;
        }

        .invoice-box table tr.top table td.title {
            font-size: 45px;
            line-height: 45px;
            color: #333;
        }

        .invoice-box table tr.information table td {
            padding-bottom: 40px;
        }

        .invoice-box table tr.heading td {
            background: #eee;
            border-bottom: 1px solid #ddd;
            font-weight: bold;
        }

        .invoice-box table tr.details td {
            padding-bottom: 20px;
        }

        .invoice-box table tr.item td {
            border-bottom: 1px solid #eee;
        }

        .invoice-box table tr.item.last td {
            border-bottom: none;
        }

        .invoice-box table tr.total td:nth-child(2) {
            border-top: 2px solid #eee;
            font-weight: bold;
        }

        @media only screen and (max-width: 600px) {
            .invoice-box table tr.top table td {
                width: 100%;
                display: block;
                text-align: center;
            }

            .invoice-box table tr.information table td {
                width: 100%;
                display: block;
                text-align: center;
            }
        }

        /** RTL **/
        .invoice-box.rtl {
            direction: rtl;
            font-family: Tahoma, 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
        }

        .invoice-box.rtl table {
            text-align: right;
        }

        .invoice-box.rtl table tr td:nth-child(2) {
            text-align: left;
        }
    </style>
</head>

<body>
        <div class="invoice-box">
    <table cellpadding="0" cellspacing="0">
        <tr class="top">
            <td colspan="4">
                <table>
                    <tr>
                        <td class="title" >
                            <img
                                src="https://sparksuite.github.io/simple-html-invoice-template/images/logo.png"
                                style="width: 100%; max-width: 300px"
                            />
                        </td>

                        <td>
                            Invoice #: 00{{$order->id}}<br />
                            Order Date: {{$order->order_date}}<br />
                            Delivery Date: {{date('Y-m-d')}}
                        </td>
                    </tr>
                </table>
            </td>
        </tr>

        <tr class="information">
            <td colspan="4">
                <table>
                    <tr>
                        <td colspan="">
                            <h3>Customer Info</h3>
                            <hr>
                            {{$order->customer->name}}<br />
                            {{$order->customer->mobile}}<br />
                            {{$order->delivery_address}}
                        </td>

                        <td colspan="">
                            <h3>Company Info</h3>
                            <hr>
                            ABC Limited.<br />
                            Wshington DC<br />
                            cserubelhosen@gmail.com
                        </td>
                    </tr>
                </table>
            </td>
        </tr>


        <tr class="heading">
            <td colspan="3">Payment Method</td>

            <td>{{$order->payment_method}} </td>
        </tr>

        <tr class="details">
            <td colspan="3">{{$order->payment_method}}</td>

            <td>{{$order->order_total}}</td>
        </tr>

        <tr class="heading">
            <td align="left">Item info</td>
            <td align="center" >Unit Price</td>
            <td align="center">Quantity</td>

            <td align="right">Total Price(BDT)</td>
        </tr>
        @php($sum=0)
        @foreach($order->orderDetail as $orderDetail)

            <tr class="item">

                <td>{{$orderDetail->product_name}}</td>
                <td align="center">{{$orderDetail->product_price}}</td>
                <td align="center">{{$orderDetail->product_qty}}</td>
                <td align="right">{{$orderDetail->product_price * $orderDetail->product_qty}}</td>

            </tr>
            @php($sum = $sum+($orderDetail->product_price * $orderDetail->product_qty))

        @endforeach


        <tr class="total">
            <td colspan="3"></td>

            <td>Item Total: {{$sum}}</td>

        </tr>
        <tr class="total">
            <td colspan="3"></td>
            <td>Tax total: {{$order->tax_total}}</td>
        </tr>
        <tr class="total">
            <td colspan="3"></td>
            <td>Shipping Cost: {{$order->shipping_total}}</td>
        </tr>
        <tr class="total">
            <td colspan="3"></td>

            <td>Total Payable BDT: {{$sum+$order->tax_total+$order->shipping_total}}</td>
        </tr>
    </table>
</div>
</body>
</html>
