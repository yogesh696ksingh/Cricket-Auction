
    @extends('layouts.master')
    @section('content')
        <div class="col-sm-12 ongoing">
        <form method="post">
                                <input type="hidden" name="_token" value="{{ csrf_token() }}">
                            </form>
            <div class="col-sm-2 thumbnail">
                Purse Balance: 100000000
            </div>
            <div class="col-sm-3">
                <img src="img/Yogesh.jpg" style="max-width: 160px; max-height: 180px" >
            </div>
            <div class="col-sm-6">
                <table class="table">
                    <tr>
                        <td>Player Name</td>
                    </tr>
                    <tr>
                        <td>Year Branch Division</td>
                    </tr>
                    <tr>
                        <td>Player info batting</td>
                    </tr>
                    <tr>
                        <td>Player info bowling</td>
                    </tr>
                    <tr>
                        <td>Achievements</td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="list">
            <div class="col-sm-6">
                <table class="table table-bordered">
                    <tr>
                        <th>Name</th>
                        <th>Base Price</th>
                        <th>Type</th>
                        <th>Status</th>
                    </tr>
                    @foreach($players as $player)
                    <tr>
                        <td>{{ $player->name }}</td>
                        <td>{{ $player->base_price }}
                            <form method="post">
                                <input type="hidden" name="_token" value="{{ csrf_token() }}">
                                <a href="{{ action('AdminController@increment') }}" class="glyphicon glyphicon-plus btn" name="increment" id="increment" value="RUN" aria-hidden="true"></a>
                            </form>
                        <td>
                        <td>{{ $player->player_type }}</td>
                        <td><button type="button" class="btn btn-primary">Sold</button>&emsp;<button type="button" class="btn btn-primary">Unsold</button></td>
                    </tr>
                    @endforeach
                </table>
            </div>
            <div class="col-sm-1">
                
            </div>
            <div class="col-sm-5">
                <table class="table">
                    <tr>
                        <th>Type</th>
                        <th>Name</th>
                        <th>Price</th>
                    </tr>
                    <tr>
                        <td>All-Rounder</td>
                        <td>Yogesh Singh</td>
                        <td>5000000</td>
                    </tr>
                </table>
            </div>
        </div>
@stop