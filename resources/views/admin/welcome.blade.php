{{-- <!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">

        <!-- Styles -->
        <style>
            html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Raleway', sans-serif;
                font-weight: 100;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
            }

            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 12px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }
        </style>
    </head>
    <body> --}}
    @extends('layouts.master')
    @section('content')
        <div class="col-sm-12 ongoing">
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
                        <td>{{ $player->base_price }}</td>
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
   {{--  </body>
</html>
 --}}