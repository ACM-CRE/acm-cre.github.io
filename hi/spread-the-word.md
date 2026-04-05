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

<p class="lead mb-4">{{ site.data.config.site.event_name }} के बारे में प्रचार करने में हमारी मदद करें!</p>

{% if site.features.flyer %}
<!-- Flyers Section -->
<div class="share-section">
  <h3>{{ strings.spread_the_word.flyer_section }}</h3>
  <p>अपने परिचितों के साथ साझा करने के लिए हमारे आमंत्रण-पत्र डाउनलोड करें:</p>
  <div class="flyer-cards">
    <div class="flyer-card">
      <div class="flyer-card-preview">
        <img src="{{ '/assets/images/flyers/preview-en.png' | relative_url }}" alt="English flyer preview">
      </div>
      <a href="{{ '/assets/downloads/flyer-en.pdf' | relative_url }}" class="btn btn-outline-primary" download>
        Download English (PDF)
      </a>
      <a href="{{ '/flyer/' | relative_url }}" class="flyer-card-link">{{ strings.spread_the_word.view_browser }}</a>
    </div>
    <div class="flyer-card">
      <div class="flyer-card-preview">
        <img src="{{ '/assets/images/flyers/preview-hi.png' | relative_url }}" alt="Hindi flyer preview">
      </div>
      <a href="{{ '/assets/downloads/flyer-hi.pdf' | relative_url }}" class="btn btn-outline-primary" download>
        Download हिंदी (PDF)
      </a>
      <a href="{{ '/hi/flyer/' | relative_url }}" class="flyer-card-link">{{ strings.spread_the_word.view_browser }}</a>
    </div>
  </div>
</div>
{% endif %}

<!-- Email Template Section -->
<div class="share-section">
  <h3>{{ strings.spread_the_word.email_section }}</h3>

  <h4 class="h6">{{ strings.spread_the_word.email_subject }}</h4>
  <div class="position-relative">
    <pre id="email-subject">निमंत्रण: {{ site.data.config.site.event_name }} – मुफ़्त रजिस्ट्रेशन शुरू</pre>
    <button class="btn btn-sm btn-outline-secondary copy-btn position-absolute top-0 end-0 m-2"
            data-copy-target="email-subject"
            data-copied-text="{{ strings.spread_the_word.copied }}">
      {{ strings.spread_the_word.copy_button }}
    </button>
  </div>

  <h4 class="h6 mt-3">{{ strings.spread_the_word.email_body }}</h4>
  <div class="position-relative">
    <pre id="email-body">प्रिय साथियों,

आपको {{ site.data.config.site.event_name }} के लिए आमंत्रित करते हुए खुशी हो रही है। यह CS शिक्षकों और रिसर्चर्स के लिए एक दिन का कार्यक्रम है, जिसे अशोका विश्वविद्यालय और ACM India iSIGCSE मिलकर आयोजित कर रहे हैं।

तारीख़: {{ site.data.config.site.date_display }}
समय: {{ site.data.config.site.time }}
जगह: {{ site.data.config.site.location.name }}

कार्यक्रम में विशेष व्याख्यान, CS शिक्षा पर चर्चा, हैंड्स-ऑन वर्कशॉप, और समान रुचि वाले संभावित सहयोगियों से मिलने का अवसर होगा। रजिस्ट्रेशन मुफ़्त है।

अधिक जानकारी और रजिस्ट्रेशन: {{ site.url }}/register/

[आपका नाम]</pre>
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
    <pre id="twitter-post">{{ site.data.config.site.event_name }}

{{ site.data.config.site.date_display }}
{{ site.data.config.site.location.name }}

CS शिक्षकों और शोधकर्ताओं के लिए एक दिन—विशेष व्याख्यान, CS शिक्षा पर चर्चा, हैंड्स-ऑन वर्कशॉप और समान रुचि वाले संभावित सहयोगियों से मिलने का अवसर।

मुफ़्त रजिस्ट्रेशन: {{ site.url }}/register/

#CSEducation #ACMIndia</pre>
    <button class="btn btn-sm btn-outline-secondary copy-btn position-absolute top-0 end-0 m-2"
            data-copy-target="twitter-post"
            data-copied-text="{{ strings.spread_the_word.copied }}">
      {{ strings.spread_the_word.copy_button }}
    </button>
  </div>

  <h4 class="h6 mt-3">{{ strings.spread_the_word.linkedin_post }}</h4>
  <div class="position-relative">
    <pre id="linkedin-post">{{ site.data.config.site.event_name }} CS शिक्षकों और रिसर्चर्स के लिए एक दिन का रीजनल कार्यक्रम है।

आयोजक: अशोका विश्वविद्यालय और ACM India iSIGCSE

{{ site.data.config.site.date_display }}
{{ site.data.config.site.location.name }}

कार्यक्रम में:
– मुख्य भाषण
– CS शिक्षा पर पैनल चर्चा
– शिक्षकों और रिसर्चर्स के लिए हैंड्स-ऑन वर्कशॉप
– पूरे क्षेत्र से आए साथियों से मिलने का मौक़ा

रजिस्ट्रेशन मुफ़्त है, अभी रजिस्टर करें: {{ site.url }}/register/

#CSEducation #ACMIndia</pre>
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
