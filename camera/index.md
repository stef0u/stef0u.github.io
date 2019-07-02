---
layout: page
image:
  feature: https://c1.staticflickr.com/3/2824/9927607124_d49ff11ac5_k.jpg
title: Life with a Camera
excerpt: "Trips big or small there's always a story to tell"
search_omit: true
---

> "The new type of artist... puts on the outfit of the bushwhacker and prospector; closes with his environment; paddles, portages and makes camp; sleeps in the out-of-doors under the stars; climbs mountains with his sketchbook on his back."  - F.B. Houser, 1926.

<p align="center">
	<b>VIEW PORTFOLIO</b>
</p>

---
<p align="center">
	I am pretty simple when it comes to gear. I do not a believer that equipment is everything. So I pick up the cheapest thing I can when I can, and make do. This is what I'm currently using:
</p>

|  |  |
|--:|:--|
| Nikon d7100 (2016) - | - Nikon d750 (2019) |
| Nikkor 17-55mm f/2.8 - | - Nikkor 70-200mm f/4 |
| Lensbaby 55mm - | - Nikkor 50mm f/1.8 |
| Yongnuo YN560-III - | - Yongnuo YN560-IV |

---

<ul class="post-list">
{% for post in site.categories.articles %} 
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }} <span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time></span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt | remove: '\[ ... \]' | remove: '\( ... \)' | markdownify | strip_html | strip_newlines | escape_once }}</span>{% endif %}</a></article></li>
{% endfor %}
</ul>
