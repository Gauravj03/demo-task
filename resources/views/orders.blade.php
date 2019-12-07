@extends('layouts.app')

@section('content')
<div class="container">
    <h3>Oders List</h3>
    <table class="table table-bordered data-table">
        <thead>
            <tr>
                <th>No</th>
                <th>Invoice Number</th>
                <th>Customer Name</th>
                <th>Total Amount</th>
                <th>Status</th>
                <th width="100px">Action</th>
            </tr>
        </thead>
        <tbody>
        </tbody>
    </table>
</div>
<script type="text/javascript">
  $(function () {
    
    var table = $('.data-table').DataTable({
        processing: true,
        serverSide: true,
        ajax: "{{ route('orders') }}",
        columns: [
            {data: 'id', name: 'id'},
            {data: 'invoice_number', name: 'invoice_number'},
            {data: 'name', name: 'name'},
            {data: 'total_amount', name: 'total_amount'},
            {data: 'status', name: 'status'},
            {data: 'action', name: 'action', orderable: false, searchable: false},
        ]
    });
    
  });
</script>
@endsection
