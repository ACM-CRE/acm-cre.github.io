# ACM COMPUTE Regional Event Template

A Jekyll template for ACM COMPUTE Regional Events. Fork this repository to create your own regional event website.

<p>
  <img src="assets/images/home_en.png" alt="Homepage (English)" width="49%">
  <img src="assets/images/home_hi.png" alt="Homepage (Hindi)" width="49%">
</p>

## Features

- **Jekyll + GitHub Pages** compatible (no build step required)
- **Bootstrap 5** with full Sass customisation
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
// Brand colours
$primary: #0072BC;    // Change to your brand colour
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
│   ├── _variables.scss   # Theme customisation
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

## Documentation

- [Internationalization (i18n)](docs/i18n.md) — adding and managing languages
- [Customisation Guide](docs/customisation.md) — colours, schedule, speakers, sponsors, flyers

## License

MIT License — see [LICENSE](LICENSE) for details.

## Credits

Built with:
- [Jekyll](https://jekyllrb.com/)
- [Bootstrap 5](https://getbootstrap.com/)
- [GitHub Pages](https://pages.github.com/)

---

Made with ♥ for the ACM COMPUTE community
