<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Products extends Model
{
    /**
     * Get the order items record associated with the products.
     */
    public function orderItems()
    {
        return $this->hasMany('App\OrdersItems');
    }
}
