
    @extends('layouts.master')
    @section('content')
    <!-- MANAGER SPACE -->
        <div class="col-sm-12 ongoing">
            <!-- MANAGER DETAILS -->
            <div class="col-sm-2">
                <div class="thumbnail">Welcome {!! Session::get('man_name') !!}</div>
                <div class="thumbnail">Purse Balance: {{ $manager[0]->budget }}</div>
                <div>
                    @if(isset($status))
                        <h6>{{ $status }}</h6>
                    @endif
                </div>
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
                        <td><b>Achievements</b>: {{ $current->achievements }}</td>
                    </tr>
                </table>
            </div>
        </div>
        <hr>
        <!-- PLAYER SPACE -->
        <div class="list">
            <!-- ALL PLAYER LIST -->
            <div class="col-sm-6">
                <table class="table table-bordered">
                    <tr>
                <!--         <th>ID check</th> -->
                        <th>Name</th>
                        <th>Price</th>
                        <th>Type</th>
                        <th>Status</th>
                    </tr>
                    @foreach($players as $player)
                    <tr>
                        <!-- <td>{{ $player->id }}</td> -->
                        <td>{{ $player->name }}</td>
                        @if($current->id == $player->id)
                        <td>{{ $player->sell_price }}&nbsp;<a href="/increment?id=<?=$player->id?>" class="btn btn-info"><span class="glyphicon glyphicon-plus"></span></a></td>
                        @else
                        <td>{{ $player->sell_price }}&nbsp;<a href="/increment?id=<?=$player->id?>" class="btn btn-info disabled"><span class="glyphicon glyphicon-plus"></span></a></td>
                        @endif
                        <td>{{ $player->player_type }}</td>
                        @if($current->id == $player->id)
                            <td>
                                <a href="/sold?id=<?=$player->id?>" type="button" class="btn btn-success">Sold</a>&emsp;
                                @if($player->base_price == $player->sell_price)
                                    <a href="/unsold?id=<?=$player->id?>" type="button" class="btn btn-warning">Unsold</a>
                                @else
                                    <a href="/unsold?id=<?=$player->id?>" type="button" class="btn btn-warning disabled">Unsold</a>
                                @endif
                                &emsp;<a href="/stdt?id=<?=$player->id?>" type="button" class="btn btn-default"><span class="glyphicon glyphicon-paste"></span></a>
                            </td>
                        @else
                            <td>
                                <a href="/sold?id=<?=$player->id?>" type="button" class="btn btn-success disabled">Sold</a>&emsp;<a href="/unsold" type="button" class="btn btn-warning disabled">Unsold</a>&emsp;<a href="/stdt?id=<?=$player->id?>" type="button" class="btn btn-default disabled"><span class="glyphicon glyphicon-paste"></span></a>
                            </td>
                        @endif
                    </tr>
                    @endforeach
                </table>
            </div>
            <div class="col-sm-1">
                
            </div>
            <!-- ALLOCATED PLAYER LIST -->
            <div class="col-sm-5">
                <table class="table">
                    <tr>
                        <th>Type</th>
                        <th>Name</th>
                        <th>Base Price</th>
                        <th>Offered Price</th>
                        <th>Remove</th>
                    </tr>
                    @foreach($team as $team)
                    <tr>
                        <td>{{ $team->player_type }}</td>
                        <td>{{ $team->name }}</td>
                        <td>{{ $team->base_price }}</td>
                        <td>{{ $team->sell_price }}</td>
                        <td><a href="/remove?id=<?=$team->id?>" type="button" class="btn btn-danger glyphicon glyphicon-remove"></a></td>
                    </tr>
                    @endforeach
                </table>
            </div>
        </div>
        <hr>
        <div class="col-sm-8 col-sm-push-2">
            <a href="/submit" type="button" class="btn btn-success btn-block">Submit</a>
        </div>
        <div class="col-sm-12">
            &nbsp;
        </div>
        <hr>
        
@stop