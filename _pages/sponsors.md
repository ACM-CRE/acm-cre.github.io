---
title: Sponsors
layout: feature-page
feature: sponsors
lang: en
alternate:
  hi: /hi/sponsors/
---

<div class="container py-5">

{% assign lang = page.lang | default: site.lang | default: "en" %}
{% assign strings = site.data.strings[lang] %}

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
        <h2 class="h4 mb-4">Partner With Us</h2>
        <p class="mb-4">
          Help shape the future of CS education in India. Your support enables educators and researchers to connect, learn, and build a stronger computing education community.
        </p>

        <div class="row g-4 mb-4">
          <div class="col-md-6">
            <h3 class="h6 text-primary">Reach Decision Makers</h3>
            <p class="small mb-0">Connect directly with CS faculty and department heads from universities across North India who influence curriculum, tools, and resource decisions.</p>
          </div>
          <div class="col-md-6">
            <h3 class="h6 text-primary">Support CS Education Research</h3>
            <p class="small mb-0">Enable research that improves how computing is taught. Your support helps educators publish experience reports and researchers submit to top venues.</p>
          </div>
          <div class="col-md-6">
            <h3 class="h6 text-primary">Build Brand Recognition</h3>
            <p class="small mb-0">Position your organization as a champion of computing education. Logo visibility across event materials, website, and communications.</p>
          </div>
          <div class="col-md-6">
            <h3 class="h6 text-primary">Recruit Top Talent</h3>
            <p class="small mb-0">Meet educators who train the next generation of developers. Build relationships that can help with campus recruitment and internship programs.</p>
          </div>
        </div>

        <hr class="my-4">

        <div class="row align-items-center">
          <div class="col-md-8">
            <h3 class="h5 mb-2">Interested in sponsoring?</h3>
            <p class="text-muted mb-md-0">We offer flexible sponsorship tiers to match your goals and budget. Let's discuss how we can work together.</p>
          </div>
          <div class="col-md-4 text-md-end">
            <a href="mailto:{{ site.data.content.sponsors.sponsorship_email }}?subject=COMPUTE%20Regional%20Event%20Sponsorship%20Inquiry" class="btn btn-primary">
              Get in Touch
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

</div>
