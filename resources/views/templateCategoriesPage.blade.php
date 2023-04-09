@extends('master')

@section('content')
    <h1>Categories</h1>
    @foreach($categories as $category)
       @include('_categoryCard', $category)
    @endforeach
@endsection

