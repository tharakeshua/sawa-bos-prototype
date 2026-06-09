# SAWA BOS · Discovery Sprint — Final Slide Deck (v5.3)

A 21-slide narrative deck that reconciles the **Three Truths** found in the field
with the **production-ready prototype**. Built from 30 source documents and
112 evidence items shadowed in store.

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
| Click anywhere        | Next slide (links still work)                       |
| `F`                   | Toggle fullscreen                                   |
| `P`                   | Print / export to PDF                               |

Deep-link to any slide with the URL hash, e.g.
`slides/index.html#12` jumps to the Problem → Solution map.

## The narrative (21 slides)

| # | Slide                          | Purpose                                                                 |
| - | ------------------------------ | ----------------------------------------------------------------------- |
| 1 | Cover                          | Title · sponsor · sprint window · evidence counts                       |
| 2 | Why we're here                 | The one question Alshaya's stack can't answer                            |
| 3 | Part 1 · The field             | Section divider                                                          |
| 4 | A day in the life · Sara · AME | 07:30 → 10:30 mental-math timeline                                       |
| 5 | The Three Truths               | 3 hrs · 20,000 items · mid-sale logout                                   |
| 6 | Field evidence · −29.8 %       | AME W22 · AED 161,297 vs 229,736                                         |
| 7 | Best seller at risk            | Men's denim 69 % / 3 weeks cover                                         |
| 8 | The fragmented stack           | 15 systems strike-through chip cloud                                     |
| 9 | The receipts                   | 30 docs · 112 items · 237 features · 12 pillars                          |
| 10 | Transcripts speak             | EZ101–EZ102 quotes (cream)                                               |
| 11 | Part 2 · The rebuild          | Section divider                                                          |
| 12 | Problem → Solution map        | Four field pains → four cockpit answers                                  |
| 13 | Architecture                  | 1 sign-in · 4 roles · 6 brands · 5 channels · 9 timeframes              |
| 14 | Solution · One sign-in        | Microsoft Entra · login screenshot                                       |
| 15 | Solution · Live pulse         | AME mgr screenshot · cream slide                                         |
| 16 | Solution · Four roles         | Side-by-side AI brief comparison                                         |
| 17 | Solution · Six brands         | Brand-personal KPI strips (Aura · Signature · SCO · Pink · Quiet · CT)  |
| 18 | Solution · Channels merged    | Endless Aisle → Assisted Ecom · cream slide                              |
| 19 | The outcome                   | 3 hrs → 30 seconds                                                       |
| 20 | What ships                    | Live URL · deep-link · repo · zip                                        |
| 21 | Thank you                     | Owner · sponsor · CTA                                                    |

## Print / export to PDF

Press `P` (or `⌘P` / `Ctrl+P`) — every slide is set up as a single
A4-landscape page. Save as PDF for a printable 21-page handout.

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
- Number tokens (`pos` · `neg` · `pct` · `aed` · `t`) come from the same
  `decorateMsg` decorators used in the prototype's AI brief — visual continuity
  between deck and product is intentional.

> _"Built for the floor. By someone who shadowed it."_
>
> SAWA BOS · v5.3 · Discovery Sprint · 02–12 Jun 2026
