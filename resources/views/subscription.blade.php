@extends('frontend.layouts.master');

@section('content')
    <style>
        .card {
            /* Add shadows to create the "card" effect */
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            transition: 0.3s;
        }

        /* On mouse-over, add a deeper shadow */
        .card:hover {
            box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
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
                <div>Charge {{ $plan->amount }}$</div>
                <button data-id="{{ $plan->id }}" data-bs-toggle="modal" data-bs-target="#exampleModal"
                    class="btn btn-primary subscribedButton">Subscribed</button>
            </div><br><br>
        @endforeach
    </div>



    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <i class="fa fa-spinner fa-spin" style="font-size:44px"></i>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('scripts')
    <script>
        $(document).ready(function() {
            $('.subscribedButton').on('click', function() {
                // Get the value of data-id attribute
                var dataId = $(this).data('id');
                // Get the CSRF token from the meta tag
                var csrfToken = $('meta[name="csrf-token"]').attr('content');

                // Include CSRF token in the headers
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': csrfToken
                    }
                });
                $.ajax({
                    type: "post",
                    url: "{{ url('/get-plan-details') }}",
                    data: {
                        dataId: dataId
                    },
                    success: function(response){
                     if(response.success){

                     }esle{
                        
                     }
                    }
                })
            });
        })
    </script>
@endpush
