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

<p class="lead mb-4">Help us spread the word about {{ site.data.site.event_name }}!</p>

<!-- Flyers Section -->
<div class="share-section">
  <h3>{{ strings.spread_the_word.flyer_section }}</h3>
  <p>Download our event flyers to share with your network:</p>
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
    <pre id="email-subject">Join us at {{ site.data.site.event_name }} on {{ site.data.site.date_display }}</pre>
    <button class="btn btn-sm btn-outline-secondary copy-btn position-absolute top-0 end-0 m-2"
            data-copy-target="email-subject"
            data-copied-text="{{ strings.spread_the_word.copied }}">
      {{ strings.spread_the_word.copy_button }}
    </button>
  </div>

  <h4 class="h6 mt-3">{{ strings.spread_the_word.email_body }}</h4>
  <div class="position-relative">
    <pre id="email-body">Dear colleagues,

I wanted to share an exciting event with you: {{ site.data.site.event_name }}.

Date: {{ site.data.site.date_display }}
Time: {{ site.data.site.time }}
Location: {{ site.data.site.location.name }}

{{ site.data.site.tagline }}

Register now at: {{ site.url }}{{ site.baseurl }}/register/

I hope to see you there!</pre>
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
    <pre id="twitter-post">Excited for {{ site.data.site.event_name }}!

{{ site.data.site.date_display }}
{{ site.data.site.location.name }}

Join educators & researchers for keynotes, workshops, and networking.

Register: {{ site.url }}{{ site.baseurl }}/register/

#ACMCompute #ComputingEducation</pre>
    <button class="btn btn-sm btn-outline-secondary copy-btn position-absolute top-0 end-0 m-2"
            data-copy-target="twitter-post"
            data-copied-text="{{ strings.spread_the_word.copied }}">
      {{ strings.spread_the_word.copy_button }}
    </button>
  </div>

  <h4 class="h6 mt-3">{{ strings.spread_the_word.linkedin_post }}</h4>
  <div class="position-relative">
    <pre id="linkedin-post">I'm excited to share {{ site.data.site.event_name }}, a regional event connecting computing educators and researchers.

{{ site.data.site.date_display }}
{{ site.data.site.location.name }}

The event features:
- Keynote presentations from leading experts
- Interactive educator and researcher workshops
- Networking opportunities

If you're involved in computing education or research, I encourage you to attend!

Learn more and register: {{ site.url }}{{ site.baseurl }}/register/

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
