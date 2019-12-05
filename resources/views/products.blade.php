@extends('layouts.app')

@section('content')
<div class="container">
    <h3>Produts List</h3>
    <table class="table table-bordered data-table">
        <thead>
            <tr>
                <th>No</th>
                <th>Product Name</th>
                <th>Price</th>
                <th>Stock Status</th>
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
        ajax: "{{ route('products') }}",
        columns: [
            {data: 'id', name: 'id'},
            {data: 'product_name', name: 'product_name'},
            {data: 'price', name: 'price'},
            {data: 'stock', name: 'stock'},
            {data: 'action', name: 'action', orderable: false, searchable: false},
        ]
    });
    
  });
</script>
@endsection
