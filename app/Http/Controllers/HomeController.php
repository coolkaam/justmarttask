<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

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
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        // $Subcategory = \DB::table('Subcategory')->select('name','category_id')->get();

      //  dd($subcategory);
        // $subcategory=[ 
        // "name"=>'mobile',
        // "category_id"=>1

        // ];

        // echo "name".$subcategory->name;
      // return view('home')->with(array('Subcategory'=>$Subcategory));
       // return view('about', compact('about'));
         return view('home');
    }

}
