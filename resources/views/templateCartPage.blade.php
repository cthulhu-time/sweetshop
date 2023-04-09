@extends('master')

@section('content')
    <h1>Its cart page</h1>

   @if($order)
       <ul class="cart-items">
       @foreach($order->products as $product)
           <li class="cart-item">
               <div>
                   <a href="{{route('product', [$product->getCategory()->code,$product->code])}}">{{$product->name}}</a>
                   <form action="{{route('cart-add', $product)}}" method="POST">
                       <button type="submit">Add more</button>
                       @csrf
                   </form>
               </div>
           </li>
       @endforeach
       </ul>
   @endif
@endsection
