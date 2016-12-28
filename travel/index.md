---
layout: page
title: Travel
excerpt: "Trips big or small there's always a story to tell"
search_omit: true
---

> "The new type of artist... puts on the outfit of the bushwhacker and prospector; closes with his environment; paddles, portages and makes camp; sleeps in the out-of-doors under the stars; climbs mountains with his sketchbook on his back."  - F.B. Houser, 1926.

<ul class="post-list">
{% for post in site.categories.articles %} 
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }} <span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time></span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt | remove: '\[ ... \]' | remove: '\( ... \)' | markdownify | strip_html | strip_newlines | escape_once }}</span>{% endif %}</a></article></li>
{% endfor %}
</ul>
