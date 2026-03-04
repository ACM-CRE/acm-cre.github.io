---
title: लोग
lang: hi
permalink: /hi/people/
alternate:
  en: /people/
---

<div class="container py-5">

{% assign strings = site.data.strings.hi %}

<h1 class="mb-4">{{ strings.people.heading }}</h1>

{% include components/speaker-list.html %}

</div>
