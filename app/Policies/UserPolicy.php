<?php

namespace App\Policies;

use App\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class UserPolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the user can view the =User.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function view(User $user)
    {
        //
    }

    /**
     * Determine whether the user can create =Users.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function create(User $user)
    {
        //
    }

    /**
     * Determine whether the user can update the =User.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function update(User $user)
    {
        //
    }

    /**
     * Determine whether the user can delete the =User.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function delete(User $user)
    {
        //
    }
    
    /*
     * Allow admin and user manager to access customers list
     */
    public function viewCustomers(User $user)
    {
        if($user->isAn('admin') || $user->isAn('user_manager')){
            return true;
        }    
        return false;
    }
    
    /*
     * Allow admin and shop manager to access products list
     */
    public function viewProducts(User $user)
    {
        if($user->isAn('admin') || $user->isAn('shop_manager')){
            return true;
        }    
        return false;
    }
    
    /*
     * Allow admin and shop manager to access orders list
     */
    public function viewOrders(User $user)
    {
        if($user->isAn('admin') || $user->isAn('shop_manager')){
            return true;
        }    
        return false;
    }
    
    /*
     * Allow admin and shop manager to access orders detail
     */
    public function viewDetail(User $user)
    {
        if($user->isAn('admin') || $user->isAn('shop_manager')){
            return true;
        }    
        return false;
    }
}
