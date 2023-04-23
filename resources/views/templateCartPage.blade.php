@extends('master')

@section('content')
    <h1>Its cart page</h1>

   @if($order)
       <ul class="cart-items">
       @foreach($order->products as $product)
           <li class="cart-item">
               <div class="item-counters">
                   <a href="{{route('product', [$product->getCategory()->code,$product->code])}}">{{$product->name}} <b>x {{$product->pivot->count}}</b></a>
                   <form action="{{route('cart-remove', $product)}}" method="POST">
                       <button class="counter-btn counter-btn-minus" type="submit">-</button>
                       @csrf
                   </form>
                   <form action="{{route('cart-add', $product)}}" method="POST">
                       <button class="counter-btn counter-btn-plus" type="submit">+</button>
                       @csrf
                   </form>
               </div>
               <p>{{$product->getPriceForCount()}}$</p>
           </li>
       @endforeach
       </ul>
       <div>
           <p>Total: {{$order->calculateTotal()}}$</p>
       </div>
   @endif
@endsection
