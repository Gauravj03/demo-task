<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Customers;

class CustomersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();

        foreach (range(1, 200) as $index)
        {
            Customers::create([
                'name'       => $faker->firstName . ' ' . $faker->lastName,
                'email'      => $faker->email
            ]);
        }
    }
}
