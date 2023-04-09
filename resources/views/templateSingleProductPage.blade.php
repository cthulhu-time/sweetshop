@extends('master')

@section('content')
    <h1>{{$product->name . ' ' . '(' . $category->name . ')'}}</h1>
    <p class="product_description">{{$product->description}}</p>
    <p class="product_price">{{$product->price}}$ per gram</p>
    <button>Add to cart</button>
@endsection
