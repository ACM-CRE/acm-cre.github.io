---
title: पंजीकरण
lang: hi
permalink: /hi/register/
alternate:
  en: /register/
---

<div class="container py-5">

{% assign strings = site.data.strings.hi %}

<div class="row">
  <div class="col-lg-8 mx-auto">
    <h1>{{ strings.register.heading }}</h1>

    <div class="alert alert-success mb-4">
      <strong>निःशुल्क पंजीकरण</strong> — इस कार्यक्रम के लिए कोई पंजीकरण शुल्क नहीं है।
    </div>

    {% include components/embed-form.html url=site.data.site.registration.form_url %}
  </div>
</div>

</div>
