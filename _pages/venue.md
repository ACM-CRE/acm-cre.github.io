---
title: Venue
lang: en
alternate:
  hi: /hi/venue/
---

<div class="container py-5">

{% assign lang = page.lang | default: site.lang | default: "en" %}
{% assign strings = site.data.strings[lang] %}

<h1>{{ strings.venue.heading }}</h1>

<div class="row mb-5">
  <div class="col-lg-6 mb-4 mb-lg-0">
    <h2 class="h4">{{ site.data.site.location.name }}</h2>
    <p>{{ site.data.site.location.address }}</p>
    <p>
      <a href="{{ site.data.site.location.url }}" target="_blank" rel="noopener" class="btn btn-outline-primary btn-sm me-2">
        Visit University Website
      </a>
      <a href="{{ site.data.site.location.map_url }}" target="_blank" rel="noopener" class="btn btn-outline-secondary btn-sm">
        Open in Google Maps
      </a>
    </p>

    <h3 class="h5 mt-4">{{ strings.venue.directions }}</h3>
    <p>Ashoka University is located in Rajiv Gandhi Education City, approximately 60 km from Delhi. The campus is accessible via NH-44 (formerly NH-1).</p>
    <ul>
      <li><strong>From Delhi:</strong> ~1.5 hours by car via NH-44</li>
      <li><strong>From IGI Airport:</strong> ~1.5 hours by car</li>
      <li><strong>Nearest Metro:</strong> Jahangirpuri (Red Line), then taxi/cab to campus</li>
    </ul>
  </div>

  <div class="col-lg-6">
    {% if site.data.site.location.map_embed_url %}
      <div class="venue-map">
        <iframe
          src="{{ site.data.site.location.map_embed_url }}"
          title="Venue location map"
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
        <h2 class="h5 mb-3">Accommodation</h2>
        <p>If you need accommodation, the <strong>{{ site.data.site.accommodation.name }}</strong> at {{ site.data.site.accommodation.location }} is available on a chargeable basis.</p>
        <ul class="mb-0">
          <li><strong>Rate:</strong> {{ site.data.site.accommodation.price }}</li>
          <li><strong>Note:</strong> {{ site.data.site.accommodation.note }}</li>
        </ul>
        <p class="small text-muted mt-3 mb-0">Contact the organizers for booking assistance.</p>
      </div>
    </div>
  </div>
</div>
{% endif %}

</div>
