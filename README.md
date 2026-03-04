# ACM COMPUTE Regional Event Template

A Jekyll template for ACM COMPUTE Regional Events. Fork this repository to create your own regional event website.

## Features

- **Jekyll + GitHub Pages** compatible (no build step required)
- **Bootstrap 5** with full Sass customization
- **WCAG 2.1 AA** accessible
- **Bilingual support** (English + Hindi) with proper i18n architecture
- **Data-driven** — configure everything via YAML files
- **Mobile-first** responsive design

## Quick Start

### 1. Fork this repository

Click the "Fork" button to create your own copy.

### 2. Deploy to GitHub Pages

Run `./scripts/deploy.sh` — see [Deployment](#deployment) for setup details.

### 3. Configure your event

Edit the files in `_data/` to customize:

| File | Purpose |
|------|---------|
| `_data/site.yml` | Event name, date, location, social links |
| `_data/schedule.yml` | Event schedule and sessions |
| `_data/speakers.yml` | Speaker information |
| `_data/sponsors.yml` | Sponsor tiers and logos |
| `_data/navigation.yml` | Navigation menu items |
| `_data/strings/en.yml` | English UI strings |
| `_data/strings/hi.yml` | Hindi UI strings |

### 4. Add your images

Place images in:

```
assets/images/
├── logo.png              # Site logo (recommended: 200x50px)
├── hero.jpg              # Hero background (recommended: 1920x800px)
├── favicon.png           # Favicon (recommended: 32x32px)
├── apple-touch-icon.png  # iOS icon (recommended: 180x180px)
├── og-default.png        # Social sharing image (recommended: 1200x630px)
├── speakers/             # Speaker photos (recommended: 400x400px)
│   ├── jane-doe.jpg
│   └── john-smith.jpg
└── sponsors/             # Sponsor logos (recommended: max 200px wide)
    ├── techcorp.png
    └── dataco.png
```

### 5. Customize styling

Edit `_sass/_variables.scss` to change:

```scss
// Brand colors
$primary: #0072BC;    // Change to your brand color
$secondary: #6c757d;

// Typography
$font-family-sans-serif: system-ui, -apple-system, "Segoe UI", Roboto, sans-serif;
$headings-font-weight: 600;
```

## Local Development

```bash
# Install dependencies
bundle install

# Run local server
bundle exec jekyll serve

# Visit http://localhost:4000
```

## Deployment

Deploy to GitHub Pages using the provided script:

```bash
./scripts/deploy.sh
```

**First-time setup:**
1. Run the deploy script
2. Go to **GitHub repo → Settings → Pages**
3. Under "Source", select **Deploy from a branch**
4. Select **gh-pages** branch and **/ (root)**
5. Save

The script builds the site and pushes to the `gh-pages` branch. Run it whenever you want to publish changes.

## Project Structure

```
├── _config.yml           # Jekyll configuration
├── _data/
│   ├── site.yml          # Event configuration
│   ├── navigation.yml    # Nav menu items
│   ├── schedule.yml      # Event schedule
│   ├── speakers.yml      # Speaker data
│   ├── sponsors.yml      # Sponsor data
│   └── strings/
│       ├── en.yml        # English UI strings
│       └── hi.yml        # Hindi UI strings
├── _includes/
│   ├── layout/           # Header, footer, head
│   ├── components/       # Schedule, speakers, sponsors
│   └── utilities/        # Language switcher
├── _layouts/
│   ├── default.html      # Base layout
│   ├── home.html         # Home page layout
│   └── flyer.html        # Print-optimized flyer layout
├── _pages/               # English pages
├── _sass/
│   ├── _variables.scss   # Theme customization
│   ├── _bootstrap.scss   # Bootstrap imports
│   └── _custom.scss      # Custom styles
├── assets/
│   ├── css/
│   ├── images/
│   │   └── flyers/       # Flyer preview images
│   └── downloads/        # Downloadable PDFs (flyers)
├── hi/                   # Hindi pages
├── index.md              # English home page
├── 404.html              # Error page
└── robots.txt            # Search engine config
```

## Internationalization (i18n)

The template supports multiple languages using a subdirectory approach.

### Default Language

Set the default language in `_config.yml`:

```yaml
lang: en  # or 'hi' for Hindi
```

### How It Works

- English pages: `/`, `/schedule/`, `/people/`, etc.
- Hindi pages: `/hi/`, `/hi/schedule/`, `/hi/people/`, etc.
- Each page has `lang` and `alternate` in front matter
- Navigation automatically uses the current language
- Language switcher links to equivalent page in other language

### Adding a New Language

1. Create a new strings file:
   ```
   _data/strings/ta.yml  # Tamil example
   ```

2. Copy structure from `en.yml` and translate all strings

3. Create a language subdirectory with all pages:
   ```
   ta/
   ├── index.md
   ├── schedule.md
   ├── speakers.md
   ├── venue.md
   ├── register.md
   ├── sponsors.md
   └── spread-the-word.md
   ```

4. Each page needs front matter:
   ```yaml
   ---
   title: அட்டவணை
   lang: ta
   permalink: /ta/schedule/
   alternate:
     en: /schedule/
     hi: /hi/schedule/
   ---
   ```

5. Update existing pages to include the new language in their `alternate` front matter

## Customization Guide

### Changing Colors

Edit `_sass/_variables.scss`:

```scss
$primary: #your-brand-color;
```

This will automatically update:
- Buttons
- Links
- Hero overlay
- Focus states
- And all Bootstrap components

### Changing Schedule

Edit `_data/schedule.yml`:

```yaml
- time: "09:00"
  end_time: "10:00"
  title: "Your Session Title"
  type: keynote  # keynote, workshop, break, ceremony, discussion
  speaker: speaker-id  # Must match id in speakers.yml
  description: "Optional description"
```

### Adding Speakers

Edit `_data/speakers.yml`:

```yaml
- id: unique-id
  name: "Dr. Name Here"
  affiliation: "University Name"
  role: "Keynote Speaker"
  photo: "/assets/images/speakers/filename.jpg"
```

### Changing Sponsor Tiers

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

### Flyers and Marketing Materials

The template includes a marketing kit for promoting your event:

**Printable Flyer** (`/flyer/`):
- Print-optimized HTML layout (A4 portrait)
- Includes event details, QR code, and organizer logos
- Use your browser's print function to save as PDF

**Spread the Word Page** (`/spread-the-word/`):
- Downloadable flyer PDFs (bilingual)
- Email invitation template with copy button
- Social media post templates (Twitter, LinkedIn)

**Adding Your Flyers**:

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

### Embedding Registration Form

The template supports any embeddable form service. Edit `_data/site.yml`:

```yaml
registration_form_url: "https://tally.so/r/your-form-id"
# or
registration_form_url: "https://docs.google.com/forms/d/e/your-form-id/viewform?embedded=true"
```

## Accessibility

This template follows WCAG 2.1 AA guidelines:

- Skip-to-content link for keyboard users
- Semantic HTML5 landmarks (`<header>`, `<main>`, `<footer>`)
- ARIA labels where needed
- Sufficient color contrast
- Focus visible states
- Keyboard navigable
- Reduced motion support (`prefers-reduced-motion`)
- Alt text placeholders for images

## SEO

Built-in SEO features:

- `jekyll-seo-tag` for meta tags and Open Graph
- `jekyll-sitemap` for automatic sitemap.xml
- Schema.org Event structured data
- Customizable per-page meta descriptions
- Default Open Graph image with per-page override

## Browser Support

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)
- Mobile browsers (iOS Safari, Chrome for Android)

## License

MIT License — see [LICENSE](LICENSE) for details.

## Credits

Built with:
- [Jekyll](https://jekyllrb.com/)
- [Bootstrap 5](https://getbootstrap.com/)
- [GitHub Pages](https://pages.github.com/)

---

Made with ♥ for the ACM COMPUTE community
