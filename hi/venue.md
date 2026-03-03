---
title: स्थान
lang: hi
permalink: /hi/venue/
alternate:
  en: /venue/
---

<div class="container py-5">

{% assign strings = site.data.strings.hi %}

<h1>{{ strings.venue.heading }}</h1>

<div class="row mb-5">
  <div class="col-lg-6 mb-4 mb-lg-0">
    <h2 class="h4">{{ site.data.site.location.name }}</h2>
    <p>{{ site.data.site.location.address }}</p>
    <p>
      <a href="{{ site.data.site.location.url }}" target="_blank" rel="noopener" class="btn btn-outline-primary btn-sm me-2">
        विश्वविद्यालय वेबसाइट पर जाएं
      </a>
      <a href="{{ site.data.site.location.map_url }}" target="_blank" rel="noopener" class="btn btn-outline-secondary btn-sm">
        Google Maps में खोलें
      </a>
    </p>

    <h3 class="h5 mt-4">{{ strings.venue.directions }}</h3>
    <p>अशोका विश्वविद्यालय राजीव गांधी एजुकेशन सिटी में स्थित है, दिल्ली से लगभग 60 किमी दूर। कैंपस NH-44 (पूर्व में NH-1) के माध्यम से पहुंचा जा सकता है।</p>
    <ul>
      <li><strong>दिल्ली से:</strong> NH-44 से कार द्वारा ~1.5 घंटे</li>
      <li><strong>IGI हवाई अड्डे से:</strong> कार द्वारा ~1.5 घंटे</li>
      <li><strong>निकटतम मेट्रो:</strong> जहांगीरपुरी (रेड लाइन), फिर कैंपस तक टैक्सी/कैब</li>
    </ul>
  </div>

  <div class="col-lg-6">
    {% if site.data.site.location.map_embed_url %}
      <div class="venue-map">
        <iframe
          src="{{ site.data.site.location.map_embed_url }}"
          title="स्थान का नक्शा"
          loading="lazy"
          allowfullscreen>
        </iframe>
      </div>
    {% endif %}
  </div>
</div>

{% if site.data.site.accommodation.available %}
<div class="row">
  <div class="col-lg-8">
    <div class="card border-0 bg-light">
      <div class="card-body">
        <h2 class="h5 mb-3">आवास</h2>
        <p>यदि आपको आवास की आवश्यकता है, तो {{ site.data.site.accommodation.location }} में <strong>{{ site.data.site.accommodation.name }}</strong> शुल्क के आधार पर उपलब्ध है।</p>
        <ul class="mb-0">
          <li><strong>दर:</strong> {{ site.data.site.accommodation.price }}</li>
          <li><strong>नोट:</strong> {{ site.data.site.accommodation.note }}</li>
        </ul>
        <p class="small text-muted mt-3 mb-0">बुकिंग सहायता के लिए आयोजकों से संपर्क करें।</p>
      </div>
    </div>
  </div>
</div>
{% endif %}

</div>
