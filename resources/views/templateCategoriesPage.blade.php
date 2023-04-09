@extends('master')

@section('content')
    <h1>Its categories page</h1>
    @foreach($categories as $category)
        <div class="category-item">
            <h3>{{$category->name}}</h3>
            <a href="{{route('category', $category->code)}}">Explore category</a>
            <p>{{$category->description}}</p>
        </div>
    @endforeach
@endsection
