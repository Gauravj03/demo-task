<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DataTables;

class Customers extends Model
{
   
    public function orders()
    {
        return $this->hasMany('App\Orders');
    }
    
    
    public static function getCustomers(){
        $data = Customers::latest()->get();
        
            return Datatables::of($data)
                    ->addColumn('action', function($row){
                           $btn = '<a href="javascript:void(0)" class="edit btn btn-primary btn-sm">View</a>';
                            return $btn;
                    })
                    ->rawColumns(['action'])
                    ->make(true);
    }
}
