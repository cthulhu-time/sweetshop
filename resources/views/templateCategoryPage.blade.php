@extends('master')

@section('content')
<h1>Its category '{{$category->name}}'</h1>

<p>{{$category->description}}</p>

@if($products)
    <div class="category_products">
    @foreach($products as $product)
         @include('_productCard', [$product, $category])
    @endforeach
    </div>
@endif
@endsection
