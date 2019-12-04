@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Dashboard</div>

                <div class="panel-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif

                    You are logged in!
                    <?php $users = \App\User::whereIs('admin')->first();
                    echo $users->name;
//                    echo $users->getRoles();
                    echo '<pre>';
                    //print_r($users->getAbilities());
                    ?>
                    @can ('update', $users)
                        <p>Edit Post</p>
                    @endcan
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
