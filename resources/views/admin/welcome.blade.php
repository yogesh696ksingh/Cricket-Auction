
    @extends('layouts.master')
    @section('content')
    @if( Session::get('rights') == 0)
    <!-- MANAGER SPACE -->
        <div class="col-sm-12 ongoing">
            <!-- MANAGER DETAILS -->
            <div class="col-sm-3">
                <div class="thumbnail"><h5><b>Welcome {!! Session::get('man_name') !!}</b></h5></div>
                <div class="thumbnail" id="purse_balance"></div>
                <div>
                    @if(isset($status))
                        <h6>{{ $status }}</h6>
                    @endif
                </div>
                <div>&nbsp;</div>
                <div><a href="/logout" class="btn btn-danger btn-block">Logout</a></div>
            </div>
    @endif
    @if ( Session::get('rights') == 1) 
        <div><a href="/logout" class="btn btn-danger btn-block">Logout</a></div>
        <div id="reset">
            <a href="/reset" class="btn btn-danger btn-block">Reset</a>
        </div>
        <div class="col-sm-12">
            <a href="/submit" type="button" class="btn btn-success btn-block">Submit</a>
        </div>
    @endif
    @if( Session::get('rights') == 2) 
        <div style="height: 100vh; width: 100vw;" align="center">
            <div class="col-sm-12" id="current_image" align="center">
                {{-- <img src="$current->image" style="max-width: 160px; max-height: 180px" > --}}
                
            </div>
            <!-- CURRENT PLAYER DETAILS -->
            <div class="col-sm-12" align="center">
                <table class="table" id="current_player" align="center">
                    
                </table>
            </div>
        </div>
    @elseif( Session::get('rights') == 1 )

            <div class="col-sm-3" id="current_image">
                {{-- <img src="$current->image" style="max-width: 160px; max-height: 180px" > --}}
                
            </div>
            <!-- CURRENT PLAYER DETAILS -->
            <div class="col-sm-6">
                <table class="table" id="current_player">
                    
                </table>
            </div>
            <div class="col-sm-12">
                <table class="table">
                    <tr id="increment_manager">
                        
                    </tr>
                </table>
            </div>
        </div>
    @else
            <div class="col-sm-3" id="current_image">
                {{-- <img src="$current->image" style="max-width: 160px; max-height: 180px" > --}}
                
            </div>
            <!-- CURRENT PLAYER DETAILS -->
            <div class="col-sm-6">
                <table class="table" id="current_player">
                    
                </table>
            </div>
    @endif
        <!-- PLAYER SPACE -->
        {{-- @if( count($bidding) > 0 ) --}}
    @if( Session::get('rights') == 0 )
    <div class="col-sm-12">
        <div class="col-sm-6" id="current_bid">
            
        </div>

        <div class="col-sm-6" id="bid_manager">
            
        </div>        
    </div>

    @endif        
    @if( Session::get('rights') == 0 )
        <div class="list">
            <div class="col-sm-6" align="center"><h3><b>Player List</b></h3></div>
            <div class="col-sm-6" align="center"><h3><b>My Team</b></h3></div>
            <!-- ALL PLAYER LIST -->
            <div class="col-sm-6">
                <table class="table table-bordered" id="player_details">
                    <tr>
                        <th>Name</th>
                        <th>Price</th>
                        <th>Type</th>
                    </tr>
                </table>
            </div>
            <div class="col-sm-1">
                
            </div>
            <!-- ALLOCATED PLAYER LIST -->

            <div class="col-sm-5">
                <table class="table table-bordered" id="team_details">
                    <tr>
                        <th>Type</th>
                        <th>Name</th>
                        <th>Base Price</th>
                        <th>Offered Price</th>
                    </tr>
                </table>
            </div>
        </div>
        
        <div class="col-sm-12">
            &nbsp;
        </div>
    @elseif( Session::get('rights') == 1 )
        <div class="col-sm-12">
            <div>
                <table class="table" id="bidding_details">
                    <tr>
                        <th>Player Name</th>
                        <th>Base Price</th>
                        <th>Offered Price</th>
                        <th>Manager</th>
                        <th>Status</th>
                    </tr>
                </table>
            </div>
        </div>
    @else 
        <div class="col-sm-12" style="height: 100vh; width: 100vw;">
            <table class="table table-bordered" id="global_display"></table>    
        </div>
        <div class="col-sm-12" style="height: 100vh; width: 100vw;">
            <div align="center"><h2><b>Highest Paid Players</b></h2></div>
            <table class="table" id="stats_display"></table>
        </div>
    @endif

<script type="text/javascript">
    $(document).ready(function () {
        setInterval(function(){ getAllData();; }, 1000);
        
        $(document).on('click', '#increment_btn', function() {
            // alert();
            $.ajax({
                method: "POST",
                url: "/increment",
                dataType: 'json',
                data: { player_id: $(this).attr('curr_id'), manager_id: $(this).attr('manager_id'), _token: "{{ csrf_token() }}" }
            })
                .done(function( res ) {
                   setManagerData(res);
                });
        });
        $(document).on('click', '#unsold_btn', function() {
            // alert();
            $.ajax({
                method: "POST",
                url: "/unsold",
                dataType: 'json',
                data: { player_id: $(this).attr('curr_id'),_token: "{{ csrf_token() }}" }
            })
                .done(function( res ) {
                   setManagerData(res);
                });
        });
        $(document).on('click', '#sold_btn', function() {
            // alert();
            $.ajax({
                method: "POST",
                url: "/sold",
                dataType: 'json',
                data: { player_id: $(this).attr('player_id'), manager_id: $(this).attr('manager_id') ,_token: "{{ csrf_token() }}" }
            })
                .done(function( res ) {
                   setManagerData(res);
                });
        });

    
        function getAllData () {
            //

            $.ajax({
                method: "GET",
                url: "/allData",
                dataType: 'json'
                // data: { name: "John", location: "Boston" }
            })
                .done(function( res ) {
                   // console.log( res['current']);
                    setCurrentData(res.current, res.manager_all);
                    setManagerData(res.manager.budget);
                    setPlayerData(res.players);
                    setTeamData(res.team);
                    setCurrBiddingData(res.bidding);
                    setBiddingData(res.bidding);
                    setGlobalData(res.manager_all, res.players);
                    setStatsData(res.top_players, res.manager_all);
                    /*$('#increment_btn').bind(click, function () {
                        alert('sdfsd');
                    });*/
                });
        }
        function setCurrentData(current, managers) {
            $('#current_player').html('');
            if("{{ Session::get('rights') }}" == 2) {
            $('#current_player').append('<tr align="center"><td><b><h2>'+current.name+'</h2></b></td></tr><tr align="center"><td><b><h2>'+current.year+' '+current.branch+' '+current.division+'</h2></b></td></tr><tr align="center"><td><b><h2>Role: </b>'+current.player_type+'</h2></td></tr><tr align="center"><td><b><h2>Batting:</b>'+current.info_batting+'</h2></td></tr><tr align="center"><td><b><h2>Bowling:</b>'+current.info_bowling+'</h2></td></tr>');

                $('#current_image').html('<img src="'+current.image+'" style="max-height: 300px" >');
            }

            else {
                $('#current_player').append('<tr align="center"><td><b>'+current.name+'</b></td></tr><tr align="center"><td><b>'+current.year+' '+current.branch+' '+current.division+'</b></td></tr><tr align="center"><td><b>Role: </b>'+current.player_type+'</td></tr><tr align="center"><td><b>Batting:</b>'+current.info_batting+'</td></tr><tr align="center"><td><b>Bowling:</b>'+current.info_bowling+'</td></tr>');
                 $('#current_image').html('<img src="'+current.image+'" style="max-height: 200px" >');   
            }
            {{-- // if("{{ Session::get('rights') }}"==0) {     --}}
            //     $('#current_player').append('<tr><td><button id="increment_btn" curr_id="'+current.id+'"  class="btn btn-block btn-info">Increment</button></td></tr>');
            // }
            if("{{ Session::get('rights') }}"==1) {
            $('#current_player').append('<tr><td><button id="unsold_btn" curr_id="'+current.id+'" class="btn btn-block btn-info">Unsold</button></td></tr>');
            $('#increment_manager').html('');
            $.each( managers, function( key, manager ) {
                if(manager.id <= 8) { 
                $('#increment_manager').append('<td><button id="increment_btn" curr_id="'+current.id+'" manager_id="'+manager.id+'" class="btn btn-block btn-info btn-small">'+manager.man_name+'</button>');   
                }
            });
                

            }

            
        }

        function setPlayerData(players) {
            $('#player_details').html('<tr><th>Name</th><th>Price</th><th>Type</th></tr>');
            $.each( players, function( key, player ) {
                var tmpclass = '';
                if(key == 0){
                    tmpclass='first_player';
                }
                $('#player_details').append('<tr class="'+tmpclass+'"><td>'+player.name+'</td><td>'+player.base_price+'</td><td>'+player.player_type+'</td></tr>');
            });
            
        }
        function setTeamData(team) {
            $('#team_details').html('<tr><th>Type</th><th>Name</th><th>Base Price</th><th>Offered Price</th></tr>');
            $.each( team, function( key, player ) {
                $('#team_details').append('<tr><td>'+player.player_type+'</td><td>'+player.name+'</td><td>'+player.base_price+'</td><td>'+player.sell_price+'</td></tr>');
            });
            
        }
        function setManagerData(balance) {
            $('#purse_balance').html('<h5><b>Purse Balance:'+balance+'</b></h5>')
        }

        function setCurrBiddingData (bidding) {
            // console.log(bidding);
            var top_bid = null;
            if(bidding.length > 0) {
                top_bid = bidding[0];
            }
            if(top_bid) {
                $('#current_bid').html('<div class="thumbnail"><b>Current Bid:'+top_bid.sell_price+'</b></div>');
                $('#bid_manager').html('<div class="thumbnail"><b>Bid Manager:'+top_bid.manager_name+'</b></div>');
            }
            else {
                $('#current_bid').html('<div class="thumbnail"><b>Current Bid: Waiting to start bidding</b></div>');
                $('#bid_manager').html('<div class="thumbnail"><b>Bid Manager:Waiting to start bidding</b></div>');
            }
        }
        function setBiddingData (bidding) {
            $('#bidding_details').html('<tr><th>Player Name</th><th>Base Price</th><th>Offered Price</th><th>Manager</th><th>Status</th></tr>');
            $.each( bidding, function( key, player ) {
                var tmpclass = '';
                if(key == 0){
                    tmpclass='active';
                }
                $('#bidding_details').append('<tr class="'+tmpclass+'"><td>'+player.player_name+'</td><td>'+player.base_price+'</td><td>'+player.sell_price+'</td><td>'+player.manager_name+'</td><td><button id="sold_btn" player_id="'+player.player_id+'" manager_id="'+player.manager_id+'" type="button" class="btn btn-success">Sold</button></td></tr>');
            });
        } 
        function setGlobalData (managers, players) {
            $('#global_display').html('<tr><th width = "35%"><h3><b>Manager Name</b></h3></th><th width = "35%"><h3><b>Budget</b></h3></th><th><h3><b>Team</b></h3></th>');
            $.each( managers, function( key, manager ) {
                if(manager.rights == 0)
                $('#global_display').append('<tr><td><h3>'+manager.man_name+'</h3></td><td><h3>'+manager.budget+'</h3></td><td><a class="btn btn-success" href="/team?id='+manager.id+'" target="_blank">View Team</a></td></tr>');
            });     
        } 

        function setStatsData(players, managers) {
            $('#stats_display').html('<tr><th><h3><b>Player Name</b></h3></th><th><h3><b>Base Price</b></h3></th><th><h3><b>Offered Price</b></h3></th><th><h3><b>Team</b></h3></th></tr>');
            var team = '';
            $.each( players, function(key, player) {
                $.each(managers, function(key, manager) {
                    if(manager.id == player.manager) {
                        team = manager.team_name;
                    }
                })
                $('#stats_display').append('<tr><th><h3>'+player.name+'</h3></th><th><h3>'+player.base_price+'</h3></th><th><h3>'+player.sell_price+'</h3></th><th><h3>'+team+'</h3></th></tr>');
            }) 
        }
        // function setGlobalData(managers, players) {
        //     $.each(managers, function(key, manager) {
        //         $.('#global_display').html('<div class="col-sm-6"><div class="col-sm-6"><table class="table table-bordered"><tr></tr></table></div><div class="col-sm-6"><tr><td>'+manager.man_name+'</td></tr><tr><td>'+manager.budget+'</td></tr></div></div>');
        //     });
        // }
    });
</script>
@stop