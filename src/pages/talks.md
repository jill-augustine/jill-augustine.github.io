---
title: Talks & Interviews
headings: site.data.subnavigation_talks
---

{% assign description = site.data.talks.description %}
{% assign sections = site.data.talks.sections %}

<main class="container my-2 my-md-4">
    <p class="pb-2">
        {% for line in description %}
            {{ line }}
            {% unless forloop.last %}
                <br>
            {% endunless %}
        {% endfor %}
        </p>
    <div class="row">
    {% for section in sections %}
        {% for item in section.items %}
        <div class="col-12 col-xl-6 py-2">
            <div class="card h-100">
        <div class="card-body">
            <span class="text-body-tertiary pe-3">{{ item.date | strip }}</span><br>
            <span>{{ item.host | strip }}</span><br>
            <span class="text-body-secondary">{{ item.title | strip }}</span>
        </div>
        </div>
            </div>
        {% endfor %}
    {% endfor %}
        </div>
</main>
