@extends('master')

@section('content')
    <h1>{{$product->name . ' ' . '(' . $category->name . ')'}}</h1>
    <p class="product_description">{{$product->description}}</p>
    <p class="product_price">{{$product->price}}$ per gram</p>
    <form action="{{route('cart-add', $product)}}" method="POST">
        <button type="submit">Add to cart</button>
        @csrf
    </form>
@endsection
