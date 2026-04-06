# ACM COMPUTE Regional Events

The main website for ACM COMPUTE Regional Events - a hub for all CRE information, event listings, and archives.

**Live site:** [acm-cre.github.io](https://acm-cre.github.io)

## Related Repositories

| Repository | Purpose |
|------------|---------|
| [website-template](https://github.com/ACM-CRE/website-template) | Template for creating event websites |
| [acm-cre-docs](https://github.com/ACM-CRE/acm-cre-docs) | Documentation site |

## Structure

```
├── index.html          # Main landing page
├── events/             # Archived event sites (static HTML)
│   └── ashoka-2026/    # Ashoka University CRE archive
├── _data/
│   └── events.yml      # Event listings (upcoming + past)
└── assets/             # Images, CSS
```

## Adding Events

Edit `_data/events.yml`:

```yaml
upcoming:
  - name: "University Name CRE"
    date: "2026-04-15"
    date_display: "April 15, 2026"
    location: "City, India"
    url: "https://university-cre.github.io"

past:
  - name: "Previous CRE"
    date: "2026-03-21"
    date_display: "March 21, 2026"
    location: "City, India"
    archive_path: "/events/previous-2026/"
```

## Archiving Events

To archive a past event:

1. Build the event site: `bundle exec jekyll build`
2. Copy `_site/*` to `events/[event-name]/`
3. Add entry to `_data/events.yml` under `past`

## Local Development

```bash
bundle install
bundle exec jekyll serve
```

## License

MIT License
