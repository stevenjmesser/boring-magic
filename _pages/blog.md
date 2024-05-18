---
layout: default
title: Blog
permalink: /blog/
---

<section class="posts">
<ul>

{% for post in site.posts %}
<li><a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%d-%m-%Y" }}</time></li>
{% else %}
No blog posts yet. Check back later.
{% endfor %}
</ul>
</section>