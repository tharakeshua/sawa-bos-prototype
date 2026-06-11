# SAWA BOS · Discovery Sprint — Final Slide Deck (v5.8 · field-validated)

A **29-slide** narrative that walks the problem (1–13), the rebuild (14–24), the live field validation with Hagar (25–28), and closes with a thank-you (29). Built from 30 source documents, 121 evidence items, and a 100-minute live operator test on 11 Jun 2026.

## Open the deck

**Online (one-click):**
- https://tharakeshua.github.io/sawa-bos-prototype/slides/

**Locally:**
- macOS / Linux → double-click `start.sh` (or run `./start.sh` in a terminal)
- Windows → double-click `start.bat`
- Either opens `http://127.0.0.1:8766/` in your default browser.

## Controls

| Key                   | Action                                              |
| --------------------- | --------------------------------------------------- |
| `←` / `→`             | Previous / next slide                               |
| `Space` / `PageDown`  | Next slide                                          |
| `Home` / `End`        | First / last slide                                  |
| Click anywhere        | Next slide (controls, links, sheets skip advance)   |
| `F`                   | Toggle fullscreen                                   |
| `P`                   | Print / export to PDF                               |

Deep-link to any slide with the URL hash, e.g. `slides/index.html#20` jumps to the eight-brand KPI grid.

## The narrative (29 slides)

### Cover

| # | Slide | Purpose |
| - | --- | --- |
| 1 | Cover | Title · sponsor · sprint window · evidence counts · 8 stores · 8 brands |

### Part 1 · the field (problem · slides 2–13)

| # | Slide | Purpose |
| - | --- | --- |
| 2 | Why we're here | The one question Alshaya's stack can't answer |
| 3 | Part 1 divider | Section header |
| 4 | Discovery footprint | 8 stores · 8 brands · MoE + DH + Outlet · validation-depth legend |
| 5 | A morning · Hagar · BBW | 07:30 → 10:30 mental-math timeline |
| 6 | Field evidence · −29.8% | AME W22 · 161,297 vs 229,736 |
| 7 | Three Truths | 3 hrs · 20,000 items · mid-sale logout |
| 8 | Shadow dashboards | All 8 brands rebuild the same Excel by hand |
| 9 | Shadow dashboards (pattern) | "In case the system shuts down" |
| 10 | Best-seller at risk | Men's denim 69 % / 3 weeks cover |
| 11 | The fragmented stack | 15 systems strike-through chip cloud |
| 12 | The receipts | 30 docs · 121 items · 12 pillars |
| 13 | Hagar's equation | The one question that breaks the chain |

### Part 2 · the rebuild (solution · slides 14–24)

| # | Slide | Purpose |
| - | --- | --- |
| 14 | Part 2 divider | One surface · tailored by role |
| 15 | Problem → Solution map | Four field pains → four cockpit answers |
| 16 | Architecture | 1 sign-in · 4 roles · **8 brands** · 5 channels · 9 timeframes · 4 data cornerstones |
| 17 | Solution · One sign-in | Microsoft Entra · login screenshot |
| 18 | Solution · Live pulse | AME mgr screenshot · cream slide |
| 19 | Solution · Four roles | Side-by-side AI brief comparison |
| 20 | Solution · **Eight brands** | Brand-personal KPI strips (AME · BBW · H&M · VS · COS · CT · Primark · **ULTA**) |
| 21 | Solution · Ready target | Hagar's same-promo, last-comparable-week override |
| 22 | Solution · Channels merged | SAWA POS · MPOS · Hadreen · Asst. Ecom · SCO |
| 23 | Outcome | 3 hours → 30 seconds |
| 24 | What ships | Live URL · deep-link · repo · zip |

### Part 3 · field validation (slides 25–28)

| # | Slide | Purpose |
| - | --- | --- |
| 25 | Hagar tested it · live | 100-min session · 5 asks captured · 5/5 shipped same day |
| 26 | Ask → ship · in the room | Five real asks. Five real ships. Same session. |
| 27 | Cursor build loop | 10:34 ask → 17:00 ship → 17:30 thank-you note |
| 28 | Operator testimonial | Hagar's verbatim words · the morning after the test |

### Close

| # | Slide | Purpose |
| - | --- | --- |
| 29 | Thank you | End of deck |

## Print / export to PDF

Press `P` (or `⌘P` / `Ctrl+P`) — every slide is set up as a single A4-landscape page. Save as PDF for a printable 29-page handout.

## Files

```
slides/
├── index.html      ← the deck (single-file, self-contained)
├── img/            ← prototype screenshots used in solution slides
├── README.md       ← this file
├── start.sh        ← macOS / Linux launcher (port 8766)
└── start.bat       ← Windows launcher (port 8766)
```

## Authoring notes

- Designed at **1280 × 800** logical size, auto-scaled to any viewport.
- Type stack: **Fraunces** (display, italic accents) · **Inter** (body) · **JetBrains Mono** (labels, codes, numbers).
- Brand palette echoes the prototype: warm canvas `#F4F2EE`, emerald, **lime `#C7FB55`** accent.
- v5.8 accessibility: `prefers-reduced-motion` honoured, `:focus-visible` outlines wired, click-to-advance skips controls / sheets / legend chips.

> _"Built for the floor. By someone who shadowed it."_
>
> SAWA BOS · v5.8 · Discovery Sprint · 02–12 Jun 2026
