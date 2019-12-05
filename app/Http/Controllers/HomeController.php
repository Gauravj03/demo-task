<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Customers;
use App\Products;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('home');
    }
    
    /*
     * Get customers list
     */
    public function customers(Request $request)
    {
        if ($request->ajax()) {
           return Customers::getCustomers();
        }
        return view('customer');
    }
    
    /*
     * Get product list
     */
    public function products(Request $request)
    {
        if ($request->ajax()) {
           return Products::getProducts();
        }
        return view('products');
    }
    
    
}
