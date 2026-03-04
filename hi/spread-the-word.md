---
title: प्रचार करें
lang: hi
permalink: /hi/spread-the-word/
alternate:
  en: /spread-the-word/
---

<div class="container py-5">

{% assign strings = site.data.strings.hi %}

<h1>{{ strings.spread_the_word.heading }}</h1>

<p class="lead mb-4">{{ site.data.site.event_name }} के बारे में प्रचार करने में हमारी मदद करें!</p>

<!-- Flyers Section -->
<div class="share-section">
  <h3>{{ strings.spread_the_word.flyer_section }}</h3>
  <p>अपने नेटवर्क के साथ साझा करने के लिए हमारे इवेंट फ्लायर डाउनलोड करें:</p>
  <div class="flyer-previews">
    <a href="{{ '/flyer/' | relative_url }}" class="flyer-preview">
      <img src="{{ '/assets/images/flyers/preview-en.png' | relative_url }}" alt="English flyer preview">
      <span>English</span>
    </a>
    <a href="{{ '/hi/flyer/' | relative_url }}" class="flyer-preview">
      <img src="{{ '/assets/images/flyers/preview-hi.png' | relative_url }}" alt="Hindi flyer preview">
      <span>हिंदी</span>
    </a>
  </div>
  <div class="d-flex flex-wrap gap-3 mb-3">
    <a href="{{ '/assets/downloads/flyer-en.pdf' | relative_url }}" class="btn btn-primary" download>
      {{ strings.spread_the_word.download_en }} (PDF)
    </a>
    <a href="{{ '/assets/downloads/flyer-hi.pdf' | relative_url }}" class="btn btn-outline-primary" download>
      {{ strings.spread_the_word.download_hi }} (PDF)
    </a>
  </div>
</div>

<!-- Email Template Section -->
<div class="share-section">
  <h3>{{ strings.spread_the_word.email_section }}</h3>

  <h4 class="h6">{{ strings.spread_the_word.email_subject }}</h4>
  <div class="position-relative">
    <pre id="email-subject">{{ site.data.site.date_display }} को {{ site.data.site.event_name }} में शामिल हों</pre>
    <button class="btn btn-sm btn-outline-secondary copy-btn position-absolute top-0 end-0 m-2"
            data-copy-target="email-subject"
            data-copied-text="{{ strings.spread_the_word.copied }}">
      {{ strings.spread_the_word.copy_button }}
    </button>
  </div>

  <h4 class="h6 mt-3">{{ strings.spread_the_word.email_body }}</h4>
  <div class="position-relative">
    <pre id="email-body">प्रिय साथियों,

मैं आपके साथ एक रोमांचक कार्यक्रम साझा करना चाहता/चाहती हूं: {{ site.data.site.event_name }}

तारीख: {{ site.data.site.date_display }}
समय: {{ site.data.site.time }}
स्थान: {{ site.data.site.location.name }}

{{ site.data.site.tagline }}

अभी पंजीकरण करें: {{ site.url }}{{ site.baseurl }}/hi/register/

आशा है वहां मिलेंगे!</pre>
    <button class="btn btn-sm btn-outline-secondary copy-btn position-absolute top-0 end-0 m-2"
            data-copy-target="email-body"
            data-copied-text="{{ strings.spread_the_word.copied }}">
      {{ strings.spread_the_word.copy_button }}
    </button>
  </div>
</div>

<!-- Social Media Section -->
<div class="share-section">
  <h3>{{ strings.spread_the_word.social_section }}</h3>

  <h4 class="h6">{{ strings.spread_the_word.twitter_post }}</h4>
  <div class="position-relative">
    <pre id="twitter-post">{{ site.data.site.event_name }} के लिए उत्साहित!

{{ site.data.site.date_display }}
{{ site.data.site.location.name }}

शिक्षकों और शोधकर्ताओं के लिए मुख्य भाषण, कार्यशालाएं और नेटवर्किंग।

पंजीकरण: {{ site.url }}{{ site.baseurl }}/hi/register/

#ACMCompute #ComputingEducation</pre>
    <button class="btn btn-sm btn-outline-secondary copy-btn position-absolute top-0 end-0 m-2"
            data-copy-target="twitter-post"
            data-copied-text="{{ strings.spread_the_word.copied }}">
      {{ strings.spread_the_word.copy_button }}
    </button>
  </div>

  <h4 class="h6 mt-3">{{ strings.spread_the_word.linkedin_post }}</h4>
  <div class="position-relative">
    <pre id="linkedin-post">मैं {{ site.data.site.event_name }} साझा करने के लिए उत्साहित हूं, कंप्यूटिंग शिक्षकों और शोधकर्ताओं को जोड़ने वाला एक क्षेत्रीय कार्यक्रम।

{{ site.data.site.date_display }}
{{ site.data.site.location.name }}

कार्यक्रम में शामिल हैं:
- प्रमुख विशेषज्ञों के मुख्य भाषण
- इंटरैक्टिव शिक्षक और शोधकर्ता कार्यशालाएं
- नेटवर्किंग के अवसर

यदि आप कंप्यूटिंग शिक्षा या अनुसंधान में शामिल हैं, तो मैं आपको उपस्थित होने के लिए प्रोत्साहित करता/करती हूं!

अधिक जानें और पंजीकरण करें: {{ site.url }}{{ site.baseurl }}/hi/register/

#ComputingEducation #ACM #Research #Networking</pre>
    <button class="btn btn-sm btn-outline-secondary copy-btn position-absolute top-0 end-0 m-2"
            data-copy-target="linkedin-post"
            data-copied-text="{{ strings.spread_the_word.copied }}">
      {{ strings.spread_the_word.copy_button }}
    </button>
  </div>
</div>

</div>

<script>
document.querySelectorAll('.copy-btn').forEach(btn => {
  btn.addEventListener('click', function() {
    const targetId = this.getAttribute('data-copy-target');
    const text = document.getElementById(targetId).textContent;
    navigator.clipboard.writeText(text).then(() => {
      this.classList.add('copied');
      setTimeout(() => this.classList.remove('copied'), 2000);
    });
  });
});
</script>
