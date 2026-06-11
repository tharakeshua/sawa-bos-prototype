# SAWA BOS · v5.8 · field-validated

Single-file, self-contained iPad-grade interactive prototype for Alshaya's **SAWA Back-Office System** — paired with a 29-slide narrative deck and a three-doc reference pack. Boots into an animated SSO → role picker → dual-device cockpit (iPad Pro 11" + iPhone 14 Pro Max). Role-aware UI, brand-personal metrics, live AI brief, scan-stock, segments, Aura split, top-sellers, all wired to the same state engine.

> **Eight brands × four roles × five channels** — all wired to one state engine, all in **one `index.html`** (no build, no backend, no install).

---

## What's new in v5.6 / v5.7 / v5.8

A 100-minute live session with the BBW Store Manager (Hagar M., MoE, 11 Jun 2026) drove an in-session build loop — every ask shipped before the call ended. v5.8 is the post-review polish round:

- **v5.6 / v5.7** · BBW Aura panel (Quick / Full split · daily) · SFA011 segment view · scan-stock by SKU · top-5 best-sellers + top-3 categories per brand · 29-slide deck rebuilt around four field-validation slides + Hagar's verbatim testimonial · three-doc reference pack (role workflows · technical feasibility · evidence wall v3).
- **v5.8** · Eight-brand lock (ULTA KPI card added on slide 20 + every "seven brands" line corrected) · accessibility patch (`prefers-reduced-motion`, `:focus-visible`, ARIA on nav/tabbar/channels) · bottom-sheet target editor (replaces the old `prompt()` / `alert()` flow) · validation-depth legend on slide 4 · persona diversification (every brand gets a distinct Manager + VM) · cornerstones vs research-pillars rename · tightened slide click-handler · fresh release zip with full `docs/` + `slides/`.

---

## Live URLs

| Artifact | URL |
|---|---|
| Prototype | <https://tharakeshua.github.io/sawa-bos-prototype/> |
| Slide deck (29 slides) | <https://tharakeshua.github.io/sawa-bos-prototype/slides/> |
| Docs hub | <https://tharakeshua.github.io/sawa-bos-prototype/docs/> |
| Role workflows | <https://tharakeshua.github.io/sawa-bos-prototype/docs/role-workflows.html> |
| Technical feasibility | <https://tharakeshua.github.io/sawa-bos-prototype/docs/technical-feasibility.html> |
| Evidence wall (v3.1) | <https://tharakeshua.github.io/sawa-bos-prototype/docs/evidence-wall.html> |
| Release zip | <https://tharakeshua.github.io/sawa-bos-prototype/sawa-bos-prototype.zip> |

---

## Repo layout

```
sawa-bos-prototype/                  ← source root (this folder)
├── index.html                       ← the prototype (single-file)
├── slides/                          ← 29-slide narrative deck
├── docs/                            ← role-workflows · tech-feasibility · evidence-wall + pack.css
├── dist/sawa-bos-prototype/         ← published gh-pages mirror (identical files)
└── README.md                        ← this file
```

The `dist/sawa-bos-prototype/` subtree is the GitHub Pages publishing copy. Every source change is mirrored there before commit.

---

## Run locally (any machine, no install)

| Platform | Command |
|---|---|
| macOS / Linux | `./dist/sawa-bos-prototype/start.sh` |
| Windows | double-click `dist/sawa-bos-prototype/start.bat` |
| Already have Python | `python3 -m http.server 8765` from any folder containing `index.html` |
| Already have Node | `npx serve -p 8765` |
| Nothing installed | open `index.html` directly — `file://` works |

---

## Download the release zip

```bash
curl -L -o sawa-bos.zip \
  https://tharakeshua.github.io/sawa-bos-prototype/sawa-bos-prototype.zip
unzip sawa-bos.zip && cd sawa-bos-prototype && open index.html
```

The zip ships `index.html` + `slides/` + `docs/` + `README.md` + `.nojekyll` — everything needed to run the full experience offline (no build, no backend).

---

## Deep-link URLs

| Goal | URL fragment |
|---|---|
| Skip login | `?skipLogin=1` |
| Brand | `?brand=ame` · `bbw` · `hm` · `vs` · `cos` · `ct` · `primark` · `ulta` |
| Role | `&role=mgr` · `asst` · `assoc` · `vm` |
| iPad view | `&pad=today` · `orders` · `stock` · `team` · `me` |
| iPhone view | `&ph=today` · `orders` · `stock` · `team` · `me` |

---

## License

Internal prototype. © Alshaya Group. Distributed for evaluation only.
Built for the v5.8 sprint by the SAWA BOS team.
