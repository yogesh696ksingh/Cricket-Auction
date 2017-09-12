@extends('layouts.master')
@section('content')
<!-- ADMIN SPACE -->
<div class="col-sm-12 ongoing">
    <!-- MANAGER DETAILS -->
    <div class="col-sm-2">
        <div class="thumbnail"><h6>Welcome {!! Session::get('man_name') !!}</h6></div>
        <div>
            <a href="/reset" class="btn btn-danger btn-block">Reset</a>
        </div>
        <div>&nbsp;</div>
        <div><a href="/logout" class="btn btn-danger btn-block">Logout</a></div>
    </div>
    <div class="col-sm-3">
        <!-- <img src="$current->image" style="max-width: 160px; max-height: 180px" > -->
        <img src="img/Yogesh.jpg" style="max-width: 160px; max-height: 180px" >
    </div>
    <!-- PLAYER DETAILS -->
    <div class="col-sm-6">
        <table class="table">
            <tr>
                <td><b>{{ $current->name }}</b></td>
            </tr>
            <tr>
                <td><b>{{ $current->year }}&nbsp;{{ $current->branch }}&nbsp;{{ $current->division }}</b></td>
            </tr>
            <tr>
                <td><b>Batting:</b> {{ $current->info_batting }}</td>
            </tr>
            <tr>
                <td><b>Bowling:</b> {{ $current->info_bowling }}</td>
            </tr>
            <tr>
            	<td><b>Base Price: </b>{{ $current->base_price }}</td>
            </tr>
            <tr>
                <td><b>Current Bid</b>: {{ $current->sell_price }}</td>
            </tr>
        </table>
    </div>
</div>
<div class="list">
    <!-- ALL PLAYER LIST -->
    <div class="col-sm-6" align="center">
    	<h3>All Players List</h3>
    </div>
    <div class="col-sm-1">
    	
    </div>
    <div class="col-sm-5" align="center">
    	<h3>Unsold Players</h3>
    </div>
    <div class="col-sm-6">
        <table class="table table-bordered">
            <tr>
        <!--         <th>ID check</th> -->
                <th>Name</th>
                <th>Base Price</th>
                <th>Sell Price</th>
                <th>Type</th>
                <th>Status</th>
            </tr>
            @foreach($players as $player)
            <tr>
                <!-- <td>{{ $player->id }}</td> -->
                <td>{{ $player->name }}</td>
                <td>{{ $player->base_price }}</td>
                @if($current->id == $player->id)
                <td>{{ $player->sell_price }}<!-- &nbsp;<a href="/increment?id=<?=$player->id?>" class="btn btn-info"><span class="glyphicon glyphicon-plus"></span></a> --></td>
                @else
                <td>{{ $player->sell_price }}<!-- &nbsp;<a href="/increment?id=<?=$player->id?>" class="btn btn-info disabled"><span class="glyphicon glyphicon-plus"></span></a> --></td>
                @endif
                <td>{{ $player->player_type }}</td>
             
                    <td>
                        <!-- <a href="/sold?id=<?=$player->id?>" type="button" class="btn btn-success">Sold</a>&emsp;
                        @if($player->base_price == $player->sell_price)
                            <a href="/unsold?id=<?=$player->id?>" type="button" class="btn btn-warning">Unsold</a>
                        @else
                            <a href="/unsold?id=<?=$player->id?>" type="button" class="btn btn-warning disabled">Unsold</a>
                        @endif -->
                    </td>
            </tr>
            @endforeach
        </table>
    </div>
    <div class="col-sm-1">
        
    </div>
    <!-- UNSOLD PLAYER LIST -->
    <div class="col-sm-5">
        <table class="table">
            <tr>
                <th>Type</th>
                <th>Name</th>
                <th>Year Branch Division</th>
                <th></th>
                <th>Remove</th>
            </tr>
            @foreach($unsold as $unsold)
            <tr>
                <td>{{ $unsold->player_type }}</td>
                <td>{{ $unsold->name }}</td>
                <td>{{ $unsold->year }}&nbsp;{{ $unsold->branch }}&nbsp;{{ $unsold->division }}</td>
                <td>{{ $unsold->base_price }}</td>
                <td>{{ $unsold->sell_price }}</td>
                <td><a href="/remove?id=<?=$team->id?>" type="button" class="btn btn-danger glyphicon glyphicon-remove"></a></td>
            </tr>
            @endforeach
        </table>
    </div>
</div>
@stop