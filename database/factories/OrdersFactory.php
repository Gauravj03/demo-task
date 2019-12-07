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
$factory->define(App\Orders::class, function (Faker\Generator $faker) {
    
    return [
        'customer_id' => $faker->randomElement($array =DB::table('customers')->pluck('id')),
        'invoice_number' => $faker->numberBetween($min = 1000, $max = 9999) ,
        'total_amount'=> NULL,
        'status' => $faker->randomElement($array = array ('new','processed')),
        
    ];
});
