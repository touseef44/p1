@extends('frontend.layouts.master');

@section('content')
<style>
    .card {
  /* Add shadows to create the "card" effect */
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
}

/* On mouse-over, add a deeper shadow */
.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

/* Add some padding inside the card container */
.container {
  padding: 2px 16px;
}
</style>
<br><br><br>
<h1 style="margin-top: 44px">subscription page</h1>


 <div class="card">
    @foreach ($plans as $plan)
        <div class="container">
            {{ $plan->name }}
            <div>Charge {{$plan->amount}}$</div>
            <button class="btn btn-primary">Subscribed</button>
        </div><br><br>
    @endforeach
 </div>


@endsection