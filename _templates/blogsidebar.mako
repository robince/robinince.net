  <div id="subcontent">
  <div class="blog_menu">
    <ul>
      <li><b>Categories</b>
      <ul>
% for category, num_posts in bf.config.blog.all_categories:
        <li><a href="${category.path}">${category}</a> (<a href="${category.path}/feed">rss</a>) (${num_posts})</li>
% endfor
      </ul></li>
    </ul>
  </div>
  </div> 

