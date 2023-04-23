@extends('master')

@section('content')
    <h1>Its cart page</h1>

   @if($order)
       <ul class="cart-items">
       @foreach($order->products as $product)
           <li class="cart-item">
               <div>
                   <a href="{{route('product', [$product->getCategory()->code,$product->code])}}">{{$product->name}} x {{$product->pivot->count}}</a>
                   <form action="{{route('cart-add', $product)}}" method="POST">
                       <button type="submit">Add more</button>
                       @csrf
                   </form>
                   <form action="{{route('cart-remove', $product)}}" method="POST">
                       <button type="submit">Remove</button>
                       @csrf
                   </form>
                   <p>{{$product->getPriceForCount()}}$</p>
               </div>
           </li>
       @endforeach
       </ul>
       <div>
           <p>Total: {{$order->calculateTotal()}}$</p>
       </div>
   @endif
@endsection
