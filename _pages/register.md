---
title: Register
lang: en
alternate:
  hi: /hi/register/
---

<div class="container py-5">

{% assign lang = page.lang | default: site.lang | default: "en" %}
{% assign strings = site.data.strings[lang] %}

<div class="row">
  <div class="col-lg-8 mx-auto">
    <h1>{{ strings.register.heading }}</h1>

    <div class="alert alert-success mb-4">
      <strong>Free Registration</strong> — No registration fees for this event.
    </div>

    {% include components/embed-form.html url=site.data.site.registration.form_url %}
  </div>
</div>

</div>
