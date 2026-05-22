---
title: Interviews
layout: splash
permalink: /interviews/
entries_layout: grid
---

<div style="margin-top: 2em;" class="grid__wrapper">
    {% for post in site.posts %}
        {% if post.path contains 'interviews/' %}
            {% include archive-single.html type="grid" %}
        {% endif %}
    {% endfor %}
</div>

