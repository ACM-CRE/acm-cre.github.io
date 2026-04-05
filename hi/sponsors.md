---
title: प्रायोजक
layout: feature-page
feature: sponsors
lang: hi
permalink: /hi/sponsors/
alternate:
  en: /sponsors/
---

<div class="container py-5">

{% assign strings = site.data.strings.hi %}

{% assign has_sponsors = false %}
{% for tier in site.data.content.sponsors.tiers %}
  {% if tier.sponsors.size > 0 %}
    {% assign has_sponsors = true %}
    {% break %}
  {% endif %}
{% endfor %}

{% if has_sponsors %}
<div class="row mb-5">
  <div class="col-12">
    <h1 class="text-center mb-5">{{ strings.sponsors.heading }}</h1>
    {% include components/sponsor-grid.html %}
  </div>
</div>
{% endif %}

<div class="row">
  <div class="col-lg-10 mx-auto">
    <div class="card">
      <div class="card-body p-4 p-md-5">
        <h2 class="h4 mb-4">हमारे साथ जुड़े</h2>
        <p class="mb-4">
          भारत में कंप्यूटर साइंस (CS) शिक्षा के भविष्य को आकार देने में मदद करें। आपका समर्थन शिक्षकों और शोधकर्ताओं के समुदाय को सक्षम बनाता है।
        </p>

        <div class="row g-4 mb-4">
          <div class="col-md-6">
            <h3 class="h6 text-primary">लोगों तक पहुंचें</h3>
            <p class="small mb-0">उत्तर भारत के विश्वविद्यालयों से CS संकाय और विभाग प्रमुखों से सीधे जुड़ें जो पाठ्यक्रम, उपकरण और संसाधन निर्णयों को प्रभावित करते हैं।</p>
          </div>
          <div class="col-md-6">
            <h3 class="h6 text-primary">CS शिक्षा अनुसंधान का समर्थन करें</h3>
            <p class="small mb-0">ऐसे शोध को सक्षम करें जो कंप्यूटिंग के पढ़ाने के तरीके को बेहतर बनाए। आपका समर्थन शिक्षकों को अनुभव रिपोर्ट प्रकाशित करने में मदद करता है।</p>
          </div>
          <div class="col-md-6">
            <h3 class="h6 text-primary">ब्रांड पहचान बनाएं</h3>
            <p class="small mb-0">अपने संगठन को कंप्यूटिंग शिक्षा के एक अग्रणी समर्थक के रूप में स्थापित करें। कार्यक्रम सामग्री, वेबसाइट और संचार माध्यमों में आपके लोगो की दृश्यता होगी।</p>
          </div>
          <div class="col-md-6">
            <h3 class="h6 text-primary">शीर्ष प्रतिभा की भर्ती करें</h3>
            <p class="small mb-0">उन शिक्षकों से मिलें जो डेवलपर्स की अगली पीढ़ी को प्रशिक्षित करते हैं। कैंपस भर्ती और इंटर्नशिप कार्यक्रमों में मदद करने वाले संबंध बनाएं।</p>
          </div>
        </div>

        <hr class="my-4">

        <div class="row align-items-center">
          <div class="col-md-8">
            <h3 class="h5 mb-2">प्रायोजन में रुचि है?</h3>
            <p class="text-muted mb-md-0">हम आपके लक्ष्यों और बजट के अनुरूप लचीले प्रायोजन स्तर प्रदान करते हैं। आइए चर्चा करें कि हम एक साथ कैसे काम कर सकते हैं।</p>
          </div>
          <div class="col-md-4 text-md-end">
            <a href="mailto:{{ site.data.content.sponsors.sponsorship_email }}?subject=COMPUTE%20Regional%20Event%20Sponsorship%20Inquiry" class="btn btn-primary">
              संपर्क करें
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

</div>
