---
title: Articles
layout: splash
permalink: /articles/
entries_layout: grid
classes: wide
---

<div style="margin-top: 2em;" class="grid__wrapper">
    {% for post in site.posts %}
        {% include archive-single.html type="grid" %}
    {% endfor %}
</div>

