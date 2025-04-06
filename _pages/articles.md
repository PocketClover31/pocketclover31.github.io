---
title: Articles
layout: archive
permalink: /articles/
entries_layout: grid
classes: wide
---

<div class="grid__wrapper">
  {% for post in site.posts %}
    {% include archive-single.html type="grid" %}
  {% endfor %}
</div>