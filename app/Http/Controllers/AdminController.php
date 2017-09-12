<?php
namespace App\Http\Controllers;
use DB;

use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function index() {
    	$players = DB::table('auction')->get();
    	return view('admin.welcome')->with('players',$players);
    }
}
