<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Orders extends Model
{
    public function customerOrder()
    {
        return $this->belongsTo('App\Customers');
    }
}
