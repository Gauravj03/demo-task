<?php

use Illuminate\Database\Seeder;
use App\Orders;
use App\OrderItems;

class OrdersTableSeeder extends Seeder {

    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run() {
       // $orders = factory(App\Orders::class, 20)->create();
        $orderItems = factory(App\OrderItems::class, 50)->create();
        $this->getOrderSum();
    }

    public function getOrderSum() {
        $orders = Orders::get();
        if(count($orders) > 0) {
            foreach ($orders as $order) {
                $orderItems = OrderItems::where('order_id', $order->id)->get();
                $total = [];
                if(count($orderItems) > 0){
                    foreach ($orderItems as $item) {
                        $total[] = $item->quantity * $item->product->price;
                    }
                    $order->total_amount = array_sum($total);
                    $order->save();
                }
            }
        }
    }

}
