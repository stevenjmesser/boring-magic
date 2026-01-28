---
layout: default
title: Case studies
permalink: /case-studies/
---

<section class="posts">
<ul>

{% for post in site.case-studies %}
<li><a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%d-%m-%Y" }}</time></li>
{% else %}
No case studies yet. Check back later.
{% endfor %}
</ul>
</section>