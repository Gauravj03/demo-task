<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Products;

class ProdutsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();

        foreach (range(1, 100) as $index)
        {
            Products::create([
                'product_name' => 'product-'.$faker->firstName,
                'price' => $faker->randomFloat($nbMaxDecimals = 2, $min = 0, $max = 9999),
                'stock' => $faker->randomElement($array = array ('in','out'))
            ]);
        }
    }
}
