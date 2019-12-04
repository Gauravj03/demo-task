<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
//use DataTables;
use App\Customers;

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
    
    public function customers(Request $request)
    {
//        if ($request->ajax()) {
//         $data = Customers::latest()->get();
//            return Datatables::of($data)
//                    ->addIndexColumn()
//                    ->addColumn('action', function($row){
//   
//                           $btn = '<a href="javascript:void(0)" class="edit btn btn-primary btn-sm">View</a>';
//     
//                            return $btn;
//                    })
//                    ->rawColumns(['action'])
//                    ->make(true);
//        }
        return view('customer');
    }
    
}
