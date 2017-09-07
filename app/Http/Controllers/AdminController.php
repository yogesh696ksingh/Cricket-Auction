<?php
namespace App\Http\Controllers;
use DB;

use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function index() {
    	return view('admin.welcome')->with('players',[]);
    }

    public function players()
    {
    	$players = DB::table('auction')->take(8)->get();
    	echo json_encode($players);
    }
    public function increment(Request $re) {
    	/*if($player->base_price < 10000000) 
            $player->base_price = $player->base_price + 1000000;
        else  if($player->base_price > 10000000) 
            $player->base_price = $player->base_price + 2000000;
        else  if($player->base_price > 20000000) 
            $player->base_price = $player->base_price + 2500000;
        else 
            $player->base_price = $player->base_price + 3000000;*/
           // $s = $re
            dd($re->all());
            //echo json_encode($re->all());
            //echo "string";
    }
}
