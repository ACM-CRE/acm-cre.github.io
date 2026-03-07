# Customisation Guide

## Changing Colours

Edit `_sass/_variables.scss`:

```scss
$primary: #your-brand-colour;
```

This will automatically update:
- Buttons
- Links
- Hero overlay
- Focus states
- And all Bootstrap components

## Changing Schedule

Edit `_data/schedule.yml`:

```yaml
- time: "09:00"
  end_time: "10:00"
  title: "Your Session Title"
  type: keynote  # keynote, workshop, break, ceremony, discussion
  speaker: speaker-id  # Must match id in speakers.yml
  description: "Optional description"
```

## Adding Speakers

Edit `_data/speakers.yml`:

```yaml
- id: unique-id
  name: "Dr. Name Here"
  affiliation: "University Name"
  role: "Keynote Speaker"
  photo: "/assets/images/speakers/filename.jpg"
```

## Changing Sponsor Tiers

Edit `_data/sponsors.yml`:

```yaml
tiers:
  - name: Platinum
    sponsors:
      - name: "Sponsor Name"
        logo: "/assets/images/sponsors/logo.png"
        url: "https://sponsor-website.com"
  - name: Gold
    sponsors: [...]
```

## Flyers and Marketing Materials

The template includes a marketing kit for promoting your event:

Printable Flyer (`/flyer/`):
- Print-optimized HTML layout (A4 portrait)
- Includes event details, QR code, and organiser logos
- Use your browser's print function to save as PDF

Spread the Word Page (`/spread-the-word/`):
- Downloadable flyer PDFs (bilingual)
- Email invitation template with copy button
- Social media post templates (Twitter, LinkedIn)

Adding Your Flyers:

1. Create your flyer PDFs and place them in `assets/downloads/`:
   ```
   assets/downloads/
   ├── flyer-en.pdf
   └── flyer-hi.pdf
   ```

2. Add preview images in `assets/images/flyers/`:
   ```
   assets/images/flyers/
   ├── flyer-en.png
   └── flyer-hi.png
   ```

3. The spread-the-word page will automatically display them with download links.

## Embedding Registration Form

The template supports any embeddable form service. Edit `_data/site.yml`:

```yaml
registration_form_url: "https://tally.so/r/your-form-id"
# or
registration_form_url: "https://docs.google.com/forms/d/e/your-form-id/viewform?embedded=true"
```
