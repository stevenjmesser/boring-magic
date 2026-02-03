---
layout: default
title: Blog
permalink: /blog/
description: A journal sharing what we’ve learned, thoughts, useful tools and approaches, plus commentary on digital product design.
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