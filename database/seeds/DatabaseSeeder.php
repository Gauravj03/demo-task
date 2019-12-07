<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
//      $this->call(UserSeeder::class);
         //$this->call(CustomersTableSeeder::class);
        // $this->call(ProdutsTableSeeder::class);
         $this->call(OrdersTableSeeder::class);
        
    }
}
