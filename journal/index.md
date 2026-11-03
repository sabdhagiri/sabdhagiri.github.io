---
layout: default
title: Journal
permalink: /journal/
---

<div class="page-intro">
    <h1>Journal <span class="subtitle">// sabdhagiri logs</span></h1>
    <p class="lead">What I'm thinking, building, breaking, and experiencing.</p>
</div>

{% if site.posts.size > 0 %}
<div class="journal-list">
    {% for post in site.posts %}
    {% assign year = post.date | date: "%Y" %}
    {% if year != current_year %}
        {% assign current_year = year %}
        <h2 class="year-heading">{{ year }}</h2>
    {% endif %}
    <article class="journal-entry">
        <h3 class="entry-title"><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h3>
        <p class="entry-meta">
            <time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%b %-d, %Y" }}</time>
            {% for tag in post.tags %}<span class="tag">#{{ tag }}</span>{% endfor %}
        </p>
        <p class="entry-excerpt">{{ post.excerpt | strip_html | truncatewords: 40 }}</p>
        <a href="{{ post.url | relative_url }}" class="more-link">Read entry &rarr;</a>
    </article>
    {% endfor %}
</div>
{% else %}
<p class="empty-state">No entries yet. Check back soon.</p>
{% endif %}
