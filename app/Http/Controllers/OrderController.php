<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Customers;
use App\Products;
use App\Orders;
use Auth;
use Illuminate\Support\Facades\Gate;

class OrderController extends Controller {

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct() {
        $this->middleware('auth');
    }

    /*
     * Get product list
     */

    public function orders(Request $request) {
        if (Gate::allows('view-orders', Auth::User())) {
            if ($request->ajax()) {
                return Orders::getOrdersList();
            }
            return view('orders');
        }
        abort(403, 'Unauthorized action.');
    }

    /*
     * View Order detail
     */

    public function orderDetail(Request $request, $id) {
        
        $order = Orders::getOrderDetailById($id);
        if (!empty($order)) {
            if (Gate::allows('view-detail', Auth::User())) {
                if ($request->ajax()) {
                    return Orders::getOrdersItems($id);
                }
                return view('order_detail', ['order' => $order]);
            }
            abort(403, 'Unauthorized action.');
        } else {
            abort(404, 'Page not found.');
        }
    }

}
