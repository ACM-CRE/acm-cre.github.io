---
title: कार्यक्रम
lang: hi
permalink: /hi/schedule/
alternate:
  en: /schedule/
---

<div class="container py-5">

{% assign strings = site.data.strings.hi %}

<h1>{{ strings.schedule.heading }}</h1>

<p class="lead mb-4">{{ site.data.config.site.date_display }} · {{ site.data.config.site.time }}</p>

{% include components/schedule-table.html %}

</div>
