<div class="product_card">
    <p class="product_name">{{$product->name}}</p>
    <p class="product_description">{{$product->description}}</p>
    <p class="product_price">{{$product->price}}$ per gram</p>
    <a href="{{route('product', [$category->code, $product->code])}}">View product</a>
</div>
