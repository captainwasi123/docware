<option value="">Select</option>
@foreach($databelt as $key => $data)
	<option value="{{$data['id']}}">{{$data['name']}}</option>
@endforeach