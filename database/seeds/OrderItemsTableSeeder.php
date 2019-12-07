<?php

use Illuminate\Database\Seeder;

class OrderItemsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // https://laraveldaily.com/laravel-two-ways-seed-data-relationships/
//        $studentsIDs= DB::table('students')->pluck('id');
//        foreach (range(1,50) as $index) {
//            DB::table('course_student')->insert([
//               'course_id' => $faker->randomElement($coursesIDs),
//               'student_id' => $faker->randomElement($studentsIDs)
//            ]);
//        }
    }
}
