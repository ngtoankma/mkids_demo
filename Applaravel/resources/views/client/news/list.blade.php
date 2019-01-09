


<div id="sidebar">
    <h3>Tin tức mới</h3>
    <ul>
      @foreach ($list as $item)
          
     
      <li id="vision"><a  href="home/news/{{$item->id}}"> <b style="color: blue ;font-size: 15px">{{$item->title}}</b></a>
        <p>{{ substr($item->content,0,100)}}</p>

      </li>
      @endforeach
    </ul>
    <div id="paging">
        <ul>
          
        </ul>
        
    </div>
  </div>