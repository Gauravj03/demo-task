@extends('layouts.app')

@section('content')
<div class="container">
    <h3>Customers List</h3>
    <table class="table table-bordered data-table">
        <thead>
            <tr>
                <th>No</th>
                <th>Name</th>
                <th>Email</th>
                <th width="100px">Action</th>
            </tr>
        </thead>
        <tbody>
        </tbody>
    </table>
</div>
<script type="text/javascript">
//  $(function () {
//    
//    var table = $('.data-table').DataTable({
//        processing: true,
//        serverSide: true,
//        ajax: "{{ route('customers') }}",
//        columns: [
//            {data: 'DT_RowIndex', name: 'DT_RowIndex'},
//            {data: 'name', name: 'name'},
//            {data: 'email', name: 'email'},
//            {data: 'action', name: 'action', orderable: false, searchable: false},
//        ]
//    });
//    
//  });
</script>
@endsection
