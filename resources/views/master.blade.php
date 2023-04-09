<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="stylesheet" href="{{asset('style.css')}}">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Sweetshop</title>
    </head>
    <body>
        <div id="site_content">
            <nav>
                <div class="icon">
                    <img src="{{ asset('img/logo.svg') }}">
                </div>
                <div class="nav_list">
                    <ul>
                        <li><a href="{{route('home')}}">Home</a></li>
                        <li><a href="{{route('categories')}}">Shop page</a></li>
                        <li><a href="{{route('cart')}}">Cart</a></li>
                    </ul>
                </div>
            </nav>
            <main>
                <div class="container">
                    @yield('content')
                </div>
            </main>
        </div>
    </body>
</html>

