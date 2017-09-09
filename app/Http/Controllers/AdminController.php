<?php
namespace App\Http\Controllers;
use DB;

use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function index() {
    	return view('admin.login');
    }
    public function welcome() {
        $alloc_man = session('id');
        $manager = DB::table('manager')->where('id',$alloc_man)->get();
    	$players = DB::table('auction')->where('status',0)->take(8)->get();
    	$team = DB::table('auction')->where('status',1)->get();
        $current = DB::table('auction')->where('status',0)->first();
    	return view('admin.welcome')->with('players',$players)->with('team',$team)->with('current',$current)->with('manager',$manager);
    }


    public function sold(Request $request)
    {
    	$id = $request->all();
        $alloc_man = session('id');
    	DB::table('auction')->where('id',$id)->update(['status' => '1']);
        DB::table('auction')->where('id',$id)->update(['manager' => $alloc_man]);
        $sell_price = DB::table('auction')->select('sell_price')->where('id',$id)->get();
        $budget = DB::table('manager')->select('budget')->where('id',$alloc_man)->get();
        if($budget[0]->budget >= $sell_price[0]->sell_price) {
            $new_budget = $budget[0]->budget - $sell_price[0]->sell_price;
            DB::table('manager')->where('id',$alloc_man)->update(['budget' => $new_budget]);
            return redirect('/welcome');
        }
        else {
            return redirect('/welcome')->with('status', 'You do not have enough purse balance to buy this player');
        }
        
    }

    public function unsold(Request $request) {
        $id = $request->all();
        DB::table('auction')->where('id',$id)->update(['status' => '2']);

    }

    public function login(Request $request) {
        $data = array_map('trim', $request->all());
        $check_manager = DB::table('manager')->where('man_name',$data['name'])->where('team_name',$data['tname'])->first();
        if($check_manager) {
            $man_id = $check_manager->id;
            session(['man_name' => $data['name'], 'team_name' => $data['tname'], 'id'=> $man_id]);
            return redirect('/welcome');
        }
        else {
            return redirect()->back()->withInput()->with('error', 'Incorrect details.');
        }
    }

    public function reset() {
        DB::table('auction')->update(array('status' => 0));
        DB::table('auction')->update(array('manager' => 0));
        DB::table('manager')->update(array('budget' => 100000000));
        return redirect('/welcome');
    }

    public function remove(Request $request) {
        $id = $request->all();
        $budget = DB::table('auction')->select('base_price')->where('id',$id)->get();
        // var_dump($budget[0]->base_price);
        // echo json_encode($budget);
        DB::table('auction')->where('id',$id)->update(['status' => '0']);
        DB::table('auction')->where('id',$id)->update(['manager' => '0']);
        DB::table('auction')->where('id',$id)->update(['sell_price' => $budget[0]->base_price]);
        // $player = DB::table('auction')->where('id',$id)->get();
        // var_dump($player);
        return redirect('/welcome');
    }

    public function logout(Request $request) 
    {
        $request->session()->forget('man_name');
        $request->session()->forget('team_name');
        $request->session()->forget('id');
        return redirect('/');
    }
}
