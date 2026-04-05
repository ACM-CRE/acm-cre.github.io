---
title: Spread the Word
lang: en
alternate:
  hi: /hi/spread-the-word/
---

<div class="container py-5">

{% assign lang = page.lang | default: site.lang | default: "en" %}
{% assign strings = site.data.strings[lang] %}

<h1>{{ strings.spread_the_word.heading }}</h1>

<p class="lead mb-4">Help us spread the word about {{ site.data.config.site.event_name }}!</p>

{% if site.features.flyer %}
<!-- Flyers Section -->
<div class="share-section">
  <h3>{{ strings.spread_the_word.flyer_section }}</h3>
  <p>Download our event flyers to share with your network:</p>
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
    <pre id="email-subject">Invitation: {{ site.data.config.site.event_name }} – Free Registration Open</pre>
    <button class="btn btn-sm btn-outline-secondary copy-btn position-absolute top-0 end-0 m-2"
            data-copy-target="email-subject"
            data-copied-text="{{ strings.spread_the_word.copied }}">
      {{ strings.spread_the_word.copy_button }}
    </button>
  </div>

  <h4 class="h6 mt-3">{{ strings.spread_the_word.email_body }}</h4>
  <div class="position-relative">
    <pre id="email-body">Dear colleagues,

I am writing to invite you to {{ site.data.config.site.event_name }}, a one-day gathering for CS educators and researchers hosted by Ashoka University and ACM India iSIGCSE.

Date: {{ site.data.config.site.date_display }}
Time: {{ site.data.config.site.time }}
Venue: {{ site.data.config.site.location.name }}

The day includes a keynote, a panel discussion on CS education, hands-on workshops, and time to connect with peers. Registration is free.

Details and registration: {{ site.url }}/register/

Best regards,
[Your name]</pre>
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

A day for CS educators and researchers: keynote, panel discussion, workshops, and peer connections.

Free registration: {{ site.url }}/register/

#CSEducation #ACMIndia</pre>
    <button class="btn btn-sm btn-outline-secondary copy-btn position-absolute top-0 end-0 m-2"
            data-copy-target="twitter-post"
            data-copied-text="{{ strings.spread_the_word.copied }}">
      {{ strings.spread_the_word.copy_button }}
    </button>
  </div>

  <h4 class="h6 mt-3">{{ strings.spread_the_word.linkedin_post }}</h4>
  <div class="position-relative">
    <pre id="linkedin-post">{{ site.data.config.site.event_name }} is a one-day regional gathering for CS educators and researchers.

Hosted by Ashoka University and ACM India iSIGCSE.

{{ site.data.config.site.date_display }}
{{ site.data.config.site.location.name }}

The programme includes:
– Keynote talk
– Panel discussion on CS education
– Hands-on workshops for educators and researchers
– Time to connect with peers from across the region

Registration is free and open now: {{ site.url }}/register/

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
