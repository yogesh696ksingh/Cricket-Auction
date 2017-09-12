@extends('layouts.master')
@section('content')
<div class="col-sm-4 col-sm-push-4 thumbnail" align="center">
	<h4><b>{{ $manager[0]->team_name }}</b></h4>
</div>
<div class="col-sm-12">
	<div class="col-sm-6 thumbnail">
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
				<h6><b>Manager: </b>{{ $manager[0]->man_name }}</h6>
			</div>
			<div class="col-sm-12">
				<h6><b>Assistant Manager: </b>{{ $manager[0]->asst_name }}</h6>
			</div>
			<div class="col-sm-12">
				<h6><b>Purse Balance: {{ $manager[0]->fix_budget }}</b></h6>
			</div>
		<!-- </div> -->
	</div>
	<div class="col-sm-6">
		
	</div>	
</div>
@stop