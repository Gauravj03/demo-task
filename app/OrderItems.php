<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderItems extends Model
{
    /**
     * Get the product that owns the order items.
     */
    public function product()
    {
        return $this->belongsTo('App\Products');
    }
    /**
     * Get the order that owns the order items.
     */
    public function order()
    {
        return $this->belongsTo('App\Orders');
    }
    
    
}
