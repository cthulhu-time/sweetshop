<div class="category-card">
    <h3>{{$category->name}}</h3>
    <a href="{{route('category', $category->code)}}">Explore category</a>
    <p>{{substr($category->description, 0 , 135) . '...'}}</p>
</div>
