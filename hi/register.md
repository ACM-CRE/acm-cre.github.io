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
  <div class="col-lg-10 mx-auto">
    <h1>{{ strings.register.heading }}</h1>

    <div class="alert alert-success mb-4">
      <strong>निःशुल्क पंजीकरण।</strong> इस कार्यक्रम के लिए कोई शुल्क नहीं है। सभी प्रतिभागियों को प्रमाणपत्र मिलेगा।
    </div>

    {% include components/embed-form.html url=site.data.config.site.registration.form_url %}
  </div>
</div>

</div>
