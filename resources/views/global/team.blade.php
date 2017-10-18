@extends('layouts.master')
@section('content')
<div>
	&nbsp;
</div>
<div class="col-sm-12">
		<div class="col-sm-4 col-sm-push-4 thumbnail" align="center">
	<h4><b>{{ $manager[0]->team_name }}</b></h4>
</div>
</div>
<div class="col-sm-12">
	<div class="col-sm-12 thumbnail">
	<!-- 	<div class="col-sm-6">
			<div class="col-sm-12">
				<p>TEAM NAME</p>
			</div>
			<div class="col-sm-12">
				<p>MANAGER NAME</p>
			</div>
			<div class="col-sm-12">
				<p>ASSISTANT MANAGER NAME</p>
			</div>
			<div class="col-sm-12">
				<p>PURSE BALANCE</p>
			</div>
		</div> -->
		<!-- <div class="col-sm-6"> -->
			<!-- <div class="col-sm-12">
				<h3>{{ $manager[0]->team_name }}</h3>
			</div> -->
			<div class="col-sm-12">
				<h4><b>Manager: </b>{{ $manager[0]->man_name }}</h4>
			</div>
			<div class="col-sm-12">
				<h4><b>Assistant Manager: </b>{{ $manager[0]->asst_name }}</h4>
			</div>
			<div class="col-sm-12">
				<h4><b>Purse Balance: {{ $manager[0]->fix_budget }}</b></h4>
			</div>
		<!-- </div> -->
	</div>
	<div class="col-sm-12">
		<table class="table">
			<tr>
				<th>Player Type</th>
				<th>Player Name</th>
				<th>Base Price</th>
				<th>Offered Price</th>
			</tr>
			@foreach($team as $team)
			<tr>
				<td>{{ $team->player_type }}</td>
				<td>{{ $team->name }}</td>
				<td>{{ $team->base_price }}</td>
				<td>{{ $team->sell_price }}</td>
			</tr>
			@endforeach
		</table>
	</div>	
</div>
@stop