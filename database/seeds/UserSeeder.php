<?php

use Illuminate\Database\Seeder;



class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // admin
        
        \Bouncer::allow('admin')->toManage(\App\Customers::class);
        \Bouncer::allow('admin')->toManage(\App\Products::class);
        \Bouncer::allow('admin')->toManage(\App\Orders::class);
        \Bouncer::allow('admin')->toManage(\App\OrderItems::class);
        
        $admin = factory(App\User::class)->create([
            'name' => 'admin',
            'email' => 'admin@mailinator.com',
            'password' => bcrypt('admin123'),
        ]);
        
        $admin->assign('admin');
        
        // user manager
        \Bouncer::allow('user_manager')->to('customers',\App\Customers::class);
        
        $user = factory(App\User::class)->create([
            'name' => 'User Manager',
            'email' => 'usermanager@mailinator.com',
            'password' => bcrypt('user123'),
        ]);
        
        $user->assign('user_manager');
        
        // shope manager
        \Bouncer::allow('user_manager')->to('products', \App\Products::class);
        \Bouncer::allow('user_manager')->to('orders', \App\Orders::class);
        \Bouncer::allow('user_manager')->to('order_items', \App\OrderItems::class);
        
        $shopManager = factory(App\User::class)->create([
            'name' => 'Shop Manger',
            'email' => 'shopmanager@mailinator.com',
            'password' => bcrypt('test123'),
        ]);
        
        $shopManager->assign('shop_manager');
        
    }
}
