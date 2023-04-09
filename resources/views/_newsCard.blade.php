<div class="news_card">
    <a class="news_link" href="{{$post['link']}}" target="_blank">
        <p class="news_title">{{$post['title']}}</p>
    </a>
    <p class="news_date">{{date('F j, Y', strtotime($post['pubDate']))}}</p>
    <div class="news_content">{{substr(strip_tags($post['description']), 0, 125) . '...'}}</div>
</div>
