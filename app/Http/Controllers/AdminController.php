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
        // echo json_encode($current);
        // echo json_encode($players);
    }

    public function increment(Request $request)
    {
        # code...
        $id = $request->all();
        $alloc_man = session('id');
        $budget = DB::table('manager')->select('budget')->where('id',$alloc_man)->get();
        // var_dump($budget[0]->budget);
        $fix_budget = DB::table('manager')->select('fix_budget')->where('id',$alloc_man)->get();
        $sell_price = DB::table('auction')->select('sell_price')->where('id',$id)->get();
        $base_price = DB::table('auction')->select('base_price')->where('id',$id)->get();
        $sp = $sell_price[0]->sell_price; 
        $flag = [];
        if($base_price[0]->base_price == $sp) {
            // $fix_budget[0]->$fix_budget = $budget[0]->budget;
            DB::table('manager')->where('id',$alloc_man)->update(['fix_budget' => $budget[0]->budget]);
            $flag = 1;   
        }
        if($sp<10000000)
            $sp+=1000000;
        else if($sp>=10000000 && $sp<20000000)
            $sp+=2000000;
        else
            $sp+=2500000;
        // var_dump($sp);
        if($flag) {
            $new_budget = $budget[0]->budget - $sp;
            DB::table('manager')->where('id',$alloc_man)->update(['budget' => $new_budget]);
        }
        else {
            // $budget[0]->budget = $fix_budget[0]->fix_budget;
            $new_budget = $fix_budget[0]->fix_budget - $sp;
            // var_dump($new_budget);
            DB::table('manager')->where('id',$alloc_man)->update(['budget' => $new_budget]);
        }
        DB::table('auction')->where('id',$id)->update(['sell_price' => $sp]);
        return redirect('/welcome');
    }


    public function sold(Request $request)
    {
    	$id = $request->all();
        $alloc_man = session('id');
    	
        $sell_price = DB::table('auction')->select('sell_price')->where('id',$id)->get();
        $budget = DB::table('manager')->select('budget')->where('id',$alloc_man)->get();
        $fix_budget = DB::table('manager')->select('fix_budget')->where('id',$alloc_man)->get();

        var_dump($budget[0]->budget);
        var_dump($sell_price[0]->sell_price);
        if($budget[0]->budget <= $sell_price[0]->sell_price) {
            // $new_budget = $budget[0]->budget - $sell_price[0]->sell_price;
            $status = "You do not have enough purse balance to buy this player";
            return redirect('/welcome')->with('status',$status);
        }
        else {
            DB::table('auction')->where('id',$id)->update(['status' => '1']);
            DB::table('auction')->where('id',$id)->update(['manager' => $alloc_man]);
            return redirect('/welcome');
        }
        
    }

    public function unsold(Request $request) {
        $id = $request->all();
        DB::table('auction')->where('id',$id)->update(['status' => '2']);
        return redirect('/welcome');

    }

    public function login(Request $request) {
        $data = $request->all();
        $check_manager = DB::table('manager')->where('man_name',$data['name'])->where('team_name',$data['tname'])->first();
        $man_id = $check_manager->id;
        // var_dump($check_manager->rights);
        if($check_manager->rights == 0){
            
            session(['man_name' => $data['name'], 'team_name' => $data['tname'], 'id'=> $man_id]);
            return redirect('/welcome');
        }
        elseif ($check_manager->rights == 1) {
            session(['man_name' => $data['name'], 'team_name' => $data['tname'], 'id'=> $man_id]);
            return redirect('/index');
        }
        // else {
        //   return redirect()->back()->withInput()->with('error', 'Incorrect details.');
        // }
    }

    public function reset() {
        DB::table('auction')->update(array('status' => 0));
        DB::table('auction')->update(array('manager' => 0));
        DB::table('manager')->update(array('budget' => 100000000));
        DB::table('manager')->update(array('fix_budget' => 100000000));
        $player = DB::table('auction')->get();
        foreach ($player as $key => $value) {
            // $bp = $value->base_price;
            DB::table('auction')->where('id',$value->id)->update(['sell_price' => $value->base_price]);
        }
        return redirect('/welcome');
    }

    public function remove(Request $request) {
        $id = $request->all();
        $alloc_man = session('id');
        $budgetbp = DB::table('auction')->select('base_price')->where('id',$id)->get();
        // var_dump($budget[0]->base_price);
        // echo json_encode($budget);
        $sell_price = DB::table('auction')->select('sell_price')->where('id',$id)->get();
        $budget = DB::table('manager')->select('budget')->where('id',$alloc_man)->get();
        $nb = $budget[0]->budget + $sell_price[0]->sell_price;
        DB::table('auction')->where('id',$id)->update(['status' => '0']);
        DB::table('auction')->where('id',$id)->update(['manager' => '0']);
        DB::table('auction')->where('id',$id)->update(['sell_price' => $budgetbp[0]->base_price]);
        DB::table('manager')->where('id',$alloc_man)->update(['budget' => $nb]);
        DB::table('manager')->where('id',$alloc_man)->update(['fix_budget' => $nb]);
        // $player = DB::table('auction')->where('id',$id)->get();
        // var_dump($player);
        return redirect('/welcome');
    }

    public function stdt(Request $request) {
        $id = $request->all();
        DB::table('auction')->where('id',$id)->update(['status' => '3']);
        $alloc_man = session('id');
        $fix_budget = DB::table('manager')->select('fix_budget')->where('id',$alloc_man)->get();
        // $budget = DB::table('manager')->select('budget')->where('id',$alloc_man)->get();
        // $sell_price = DB::table('auction')->select('sell_price')->where('id',$id)->get();
        // $new_budget = $budget[0]->budget + $sell_price[0]->sell_price;
        DB::table('manager')->where('id',$alloc_man)->update(['budget' => $fix_budget[0]->fix_budget]);
        return redirect('/welcome');
    }

    public function submit() {
        // DB::table('auction')->where('status',2)->update(array('status' => 0));
        // return redirect('\welcome');
        $player = DB::table('auction')->where('status',2)->get();
        foreach ($player as $key => $value) {
            $budget = $value->sell_price;
            $budget /= 2;
            DB::table('auction')->where('id',$value->id)->update(['sell_price' => $budget]);
            DB::table('auction')->where('id',$value->id)->update(['base_price' => $budget]);
        }
        DB::table('auction')->where('status',2)->update(array('status' => 0));
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
