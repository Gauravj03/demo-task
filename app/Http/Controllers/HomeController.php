<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Customers;
use App\Products;
use Auth;
use Illuminate\Support\Facades\Gate;

class HomeController extends Controller {

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct() {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
        return view('home');
    }

    /*
     * Get customers list
     */

    public function customers(Request $request) {
        
        if (Gate::allows('view-customers', Auth::User())) {
            if ($request->ajax()) {
                return Customers::getCustomers();
            }
            return view('customer');
        }
        abort(403, 'Unauthorized action.');
    }

    /*
     * Get product list
     */

    public function products(Request $request) {
        if (Gate::allows('view-products', Auth::User())) {
            if ($request->ajax()) {
                return Products::getProducts();
            }
            return view('products');
        }
        abort(403, 'Unauthorized action.');
    }

}
