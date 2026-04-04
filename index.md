---
layout: home
title: Home
lang: en
alternate:
  hi: /hi/
---

<section>
  <div class="container">
    <div class="row">
      <div class="col-lg-10 mx-auto">
        <h2 class="text-center mb-4">Why Attend?</h2>
        <p class="lead text-center mb-5 prose mx-auto">
          A COMPUTE Regional Event brings together CS educators and researchers to strengthen the community, share experiences, and tackle regional challenges in computing education.
        </p>

        <div class="row g-4">
          <div class="col-md-6">
            <h3 class="h5">For Educators</h3>
            <p>Turn your classroom innovations into experience reports. Whether you've tried creative teaching methods or have ideas you want to polish, our hands-on workshop will help you structure your work for publication.</p>
          </div>
          <div class="col-md-6">
            <h3 class="h5">For Researchers</h3>
            <p>Get feedback on your CSEd research—whether you're revising a rejected paper, designing a new study, or just have an idea that needs input. We'll help you prepare for submission to COMPUTE and similar venues.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<section class="bg-subtle">
  <div class="container">
    <h2 class="text-center mb-4">What to Expect</h2>
    <div class="row g-4">
      <div class="col-md-4">
        <div class="card h-100">
          <div class="card-body">
            <h3 class="h5">Keynote & Discussions</h3>
            <p class="mb-0">Hear from COMPUTE community experts, then dive into group discussions on pertinent topics—framing problems, suggesting solutions, building collaborations.</p>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card h-100">
          <div class="card-body">
            <h3 class="h5">Hands-on Workshops</h3>
            <p class="mb-0">Two dedicated sessions—one for educators, one for researchers. Group-based, practical work on your own ideas with guidance from experienced facilitators.</p>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card h-100">
          <div class="card-body">
            <h3 class="h5">Community Building</h3>
            <p class="mb-0">Connect with faculty and researchers from institutes across the region. All sessions are group-based so these connections sustain post-event.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<section>
  <div class="container">
    <div class="row align-items-center">
      <div class="col-lg-6 mb-4 mb-lg-0">
        <h2>Event Details</h2>
        <ul class="list-unstyled">
          <li class="mb-2"><strong>Date:</strong> {{ site.data.config.site.date_display }}</li>
          <li class="mb-2"><strong>Time:</strong> {{ site.data.config.site.time }}</li>
          <li class="mb-2"><strong>Venue:</strong> <a href="{{ site.data.config.site.location.url }}" target="_blank" rel="noopener">{{ site.data.config.site.location.name }}</a></li>
          <li class="mb-2"><strong>Registration:</strong> Free</li>
        </ul>
        <a href="{{ '/register/' | relative_url }}" class="btn btn-primary btn-lg">Register Now</a>
      </div>
      <div class="col-lg-6">
        <div class="card bg-subtle">
          <div class="card-body">
            <h3 class="h5">A Tight, Focused Day</h3>
            <p>This is a packed 8-hour program. There are no formal tea breaks—tea and snacks will be available during sessions, grab and head back. Networking happens before the start, during lunch, and after closing.</p>
            <p class="mb-0"><a href="{{ '/schedule/' | relative_url }}">View full schedule →</a></p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
