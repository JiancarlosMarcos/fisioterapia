<?php

namespace App\Http\Controllers\Dasboard;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(){
        return view('admin.home');
    }
}
