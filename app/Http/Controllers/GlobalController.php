<?php

namespace App\Http\Controllers;
use DB;
use Illuminate\Http\Request;

class GlobalController extends Controller
{
    //
    public function index()
    {
    	$manager = DB::table('manager')->where('rights',0)->get();	
    	$players = DB::table('auction')->where('status',0)->take(8)->get();
    	$unsold = DB::table('auction')->where('status',2)->get();
        $current = DB::table('auction')->where('status',0)->first();
    	return view('global.index')->with('players',$players)->with('unsold',$unsold)->with('current',$current)->with('manager',$manager);
    }

    public function team(Request $request) {
    	$id = $request->all();
    	$manager = DB::table('manager')->where('id',$id)->get();
    	$team = DB::table('auction')->where('manager',$id)->get();
    
    	return view('global.team')->with('manager',$manager)->with('team',$team);
    }
}
