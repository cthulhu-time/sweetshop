@extends('master')

@section('content')
<h1>Welcome to Sweetshop!</h1>
        @php
           $xml = simplexml_load_file('https://cannabisindustryjournal.com/feed/', 'SimpleXMLElement', LIBXML_NOCDATA);
           $news = json_decode(json_encode($xml), true);
        @endphp

        @if(!empty($news))
            <h3>Actual news</h3>
            <div class="news_section">
                @foreach($news['channel']['item'] as $post)
                    @include('_newsCard', $post)
                @endforeach
            </div>
        @endif
@endsection
