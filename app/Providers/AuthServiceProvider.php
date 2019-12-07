<?php

namespace App\Providers;

use Illuminate\Support\Facades\Gate;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        'App\Model' => 'App\Policies\ModelPolicy',
        'App\User' => 'App\Policies\UserPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        Gate::define('view-customers', 'App\Policies\UserPolicy@viewCustomers');
        Gate::define('view-products', 'App\Policies\UserPolicy@viewCustomers');
        Gate::define('view-orders', 'App\Policies\UserPolicy@viewOrders');
        Gate::define('view-detail', 'App\Policies\UserPolicy@viewDetail');
    }
}
