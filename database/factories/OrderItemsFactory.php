<?php

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| Here you may define all of your model factories. Model factories give
| you a convenient way to create models for testing and seeding your
| database. Just tell the factory how a default model should look.
|
*/

/** @var \Illuminate\Database\Eloquent\Factory $factory */
$factory->define(App\OrderItems::class, function (Faker\Generator $faker) {
    
    return [
        'order_id' => factory(App\Orders::class)->create()->id,
        'product_id' => $faker->randomElement($array =DB::table('products')->pluck('id')) ,
        'quantity'=>$faker->randomDigitNot(0),
    ];
      
});
