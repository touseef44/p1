@extends('admin.layout.master')

@section('content')

<div class="card card-primary">
    <div class="card-header">
      <h4>Slider</h4>
      <div class="card-header-action">
        <a href="#" class="btn btn-primary">
         Create New
        </a>
      </div>
    </div>
    <div class="card-body">
        {{ $dataTable->table() }}
    </div>
  </div>

@endsection

@push('scripts')
    {{ $dataTable->scripts(attributes: ['type' => 'module']) }}
@endpush