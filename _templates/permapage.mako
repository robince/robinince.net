<%inherit file="site.mako" />
<%include file="post.mako" args="post=post" />
<%include file="blogsidebar.mako" />
<div class="clear"></div>
<div id="contentfull">
<div id="disqus_thread"></div>
<script type="text/javascript">
  var disqus_url = "${post.permalink}";
</script>
% if bf.config.blog.disqus.enabled:
<script type="text/javascript" src="http://disqus.com/forums/${bf.config.blog.disqus.name}/embed.js"></script>
<noscript><p><a href="http://${bf.config.blog.disqus.name}.disqus.com/?url=ref">View the discussion thread.</a></p></noscript><a href="http://disqus.com" class="dsq-brlink">blog comments powered by <span class="logo-disqus">Disqus</span></a>
% endif
</div>
