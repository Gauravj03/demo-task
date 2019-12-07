<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DataTables;

class Orders extends Model
{
    public function customer()
    {
        return $this->belongsTo('App\Customers','customer_id','id');
    }
    
    public static function getOrderDetailById($id){
        return self::where('id',$id)->first();
    }
    /*
     * Get orders list with customer detail
     */
    public static function getOrdersList(){
         $data = self::select(['orders.id','invoice_number','customers.name as name','total_amount','status'])
                ->leftjoin('customers','customers.id','orders.customer_id')->get();
        
            return Datatables::of($data)
                    ->addColumn('action', function($data){
                           $btn = '<a href="'.url('order-detail/'.$data->id).'" class="edit btn btn-primary btn-sm" target="_blank">View</a>';
                            return $btn;
                    })
                    ->rawColumns(['action'])
                    ->make(true);
    }
    
    /*
     * Get get orer items list
     */
    public static function getOrdersItems($id){
         $data = OrderItems::select(['order_items.id','products.product_name as name','price','quantity',])
                 ->where('order_id',$id)
                ->leftjoin('products','products.id','order_items.product_id')->get();
        
            return Datatables::of($data)
                    ->make(true);
    }
}
