# SAWA BOS · v5.3 — Live iPad + iPhone Prototype

Single-file, self-contained interactive prototype for the Alshaya **SAWA Back-Office System**.
Boots into a full-screen animated SSO → role picker → dual-device cockpit (iPad Pro 11" + iPhone 14 Pro Max), with role-aware UI, brand-personal metrics, and a live AI brief.

> Six brands × four roles × nine timeframes × five channels — all wired to the same state engine, all in **one `index.html`** (no build, no backend, no install).

---

## Run it (any machine, no install)

### macOS / Linux
```bash
./start.sh
```
Then open <http://127.0.0.1:8765/index.html> (it should open automatically).

### Windows
Double-click `start.bat` → it'll boot a local server and open the prototype in your default browser.

### Already have Python?
```bash
python3 -m http.server 8765
# then visit http://127.0.0.1:8765/index.html
```

### Already have Node?
```bash
npx serve -p 8765
```

### "I have nothing installed"
You can open `index.html` directly by **double-clicking** the file — it works from `file://` too. The Google Fonts will require an internet connection on first load (they cache afterward).

---

## What's inside (one file)

| Element | Notes |
|---|---|
| **Full-screen login** | Animated HTML5 Canvas particle network + drifting orbs · Continue with Microsoft → role picker |
| **iPad Pro 11" (1180 × 820)** | Sidebar nav · Live Pulse · KPI grid · brand-personal strip · orders · hourly chart · colour-coded AI brief · real-time stock |
| **iPhone 14 Pro Max (430 × 880)** | Real Dynamic Island · iOS status bar · live revenue card (dark) · common KPIs · brand-personal strip · hourly · AI brief · iOS home indicator |
| **Auto-fit** | Both devices scale-to-fit your browser width via JS `transform: scale()` (no overflow, smooth resize) |

---

## Deep-link URLs (no clicks needed)

| Goal | URL fragment |
|---|---|
| Skip login | `?skipLogin=1` |
| Brand | `?brand=ame` · `bbw` · `hm` · `vs` · `cos` · `ct` |
| Role | `&role=mgr` · `asst` · `assoc` · `vm` |
| iPad view | `&pad=today` · `orders` · `stock` · `team` · `me` |
| iPhone view | `&ph=today` · `orders` · `stock` · `team` · `me` |

**Example — Diana (Sales Assoc) on VS, iPhone Stock view:**
`index.html?brand=vs&role=assoc&ph=stock`

---

## Customising

All sample data sits inside the `<script>` block in `index.html`:

| Object | What it controls |
|---|---|
| `brands` | 6 brands, each with `rev`, `target`, `delta`, `pace`, `atv`, brand-personal KPIs (`bp`), channels, hourly bars, brief items, team roster |
| `roles` | 4 roles (mgr / asst / assoc / vm) with greet name, ai-brief variant key, edit-target permission |
| `decorateMsg(html)` | The AI brief auto-decorator — adds colour pills to percentages, AED amounts, `HH:MM` times |
| `tagClass(lab)` | Maps brief label keywords (priority / channel / attach / your day / team …) to coloured tag chips |

To tune a brand's metrics, edit its entry in `brands` and reload. To add a brand, copy any existing brand block and update the key + name.

---

## Browser support

Tested on Chrome 121+, Safari 17+, Edge 121+, Firefox 124+.
Requires modern browser (Canvas + CSS Grid + `backdrop-filter`).

---

## License

Internal prototype. © Alshaya Group. Distributed for evaluation only.
Built for the v5.3 sprint by the SAWA BOS team.
