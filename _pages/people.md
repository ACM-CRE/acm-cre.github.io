---
title: People
lang: en
permalink: /people/
alternate:
  hi: /hi/people/
---

<div class="container py-5">

{% assign lang = page.lang | default: site.lang | default: "en" %}
{% assign strings = site.data.strings[lang] %}

<h1 class="mb-4">{{ strings.people.heading }}</h1>

{% include components/speaker-list.html %}

</div>
