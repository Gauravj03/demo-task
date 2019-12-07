@extends('layouts.app')

@section('content')
<div class="container">
    <h3>Oder detail</h3>
    <table class="table">
    <tbody>
      <tr>
        <td>Invoice Number</td>
        <td>{{$order->invoice_number}}</td>
      </tr>
      <tr>
        <td>Customer Name</td>
        <td>{{$order->customer->name}}</td>
      </tr>
      <tr>
        <td>Total Amount</td>
        <td>{{$order->total_amount}}</td>
      </tr>
    </tbody>
  </table>
    
    
    <table class="table table-bordered data-table">
        <thead>
            <tr>
                <th>No</th>
                <th>Name</th>
                <th>Price</th>
                <th>Quantity</th>
            </tr>
        </thead>
        <tbody>
        </tbody>
    </table>
</div>
<script type="text/javascript">
  $(function () {
    var  orderId = "{{$order->id}}";
    var table = $('.data-table').DataTable({
        processing: true,
        serverSide: true,
        ajax: {
            url: "{{ url('order-detail')}}/"+orderId,
            type: "get",
//            data: function (d) {
//                  d.order_id = '{{$order->id}}';
//            },
        },
        columns: [
            {data: 'id', name: 'id'},
            {data: 'name', name: 'name'},
            {data: 'price', name: 'price'},
            {data: 'quantity', name: 'quantity'},
        ]
    });
    
  });
</script>
@endsection
