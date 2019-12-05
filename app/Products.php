<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DataTables;

class Products extends Model
{
    /**
     * Get the order items record associated with the products.
     */
    public function orderItems()
    {
        return $this->hasMany('App\OrdersItems');
    }
    
    public static function getProducts(){
        $data = Products::latest()->get();
        
            return Datatables::of($data)
                    ->addColumn('action', function($row){
   
                           $btn = '<a href="javascript:void(0)" class="edit btn btn-primary btn-sm">View</a>';
     
                            return $btn;
                    })
                    ->rawColumns(['action'])
                    ->make(true);
    }
}
