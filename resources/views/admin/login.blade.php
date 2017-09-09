@extends('layouts.master')
@section('content')
<div class="col-sm-8 col-sm-offset-2">
	<form method="post" action="/login">
			<table class="table" align="center">
				<tr>
					<th>
						<label for="name">Manager Name(required)</label>
					</th>
					<td>
						<input type="text" name="name" id="name">
					</td>
				</tr>
				<tr>
					<th>
						<label for="tname">Team name</label>
					</th>
					<td>
						<input type="tname" name="tname" id="tname">
					</td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Submit" name="submit" class="btn btn-primary"></td>
				</tr>
			</table>
			<input type="hidden" name="_token" value="{{ csrf_token() }}">
		</form>	
</div>

@stop