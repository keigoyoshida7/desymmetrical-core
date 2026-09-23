# De-symmetrical Adaptation — Spatial Audio Prototype

Artist: **Keigo Yoshida**  
Spatial Audio Prototype: **Guillaume Piccarreta**

Use **dot_area_spat_explorer.maxpat** as the main audio engine, optionally driven
by the existing WebGL application in **webgl/**. This finishing pass preserves
the user-saved Max layout, light diagram, seven mappings and five presets; it
does not replace the project. The installed official Spat package is unchanged.

Start with [DEMO_CHECKLIST.md](DEMO_CHECKLIST.md). The detailed web/OSC guide is
[webgl/README.md](webgl/README.md). Actual checks and remaining manual acceptance
are in [VALIDATION.md](VALIDATION.md); recovery findings are in
[RECOVERY_AUDIT.md](RECOVERY_AUDIT.md).

## Max prototype

![Dot Area / De-symmetrical Adaptation Max prototype — installation, shadow mapping and Spat controls](assets/desymmetrical-adaptation-max-prototype-01.png)

![Dot Area / De-symmetrical Adaptation Max prototype — source, monitoring and OSC controls](assets/desymmetrical-adaptation-max-prototype-02.png)

## Launch

Open [dot_area_spat_explorer.maxpat](dot_area_spat_explorer.maxpat) in Max 9.
Keep `dot_area_engine.js`, `dot_area_view.js` and `dot_area_link.js` alongside it.
Reload from disk if Max still has an older version open.

For WebGL:

```sh
cd webgl
nvm use 22.22.2
npm install
npm run dev
```

Open **http://127.0.0.1:5173**. One command starts Vite and the local OSC bridge.
Do not launch a duplicate bridge. Do not open the older
`webgl/max/dot_area_webgl_bridge.maxpat` simultaneously: it is a standalone
comparison companion, not required by the main patch, and competes for UDP9000.

Without Max/OSC, WebGL remains a visual demo: camera, robot, light, speakers,
sources, mappings and presets remain usable. The UI displays
**OSC — DISCONNECTED**. **OSC — CONNECTED** requires a recent Max reply, not
just an open WebSocket. Reconnect attempts are bounded; use Connect after
starting the missing service.

## Master level: diagnosed and corrected

The previous engine capped gain at **0.35 in JavaScript**, independently of the
visible number-box maximum. Every source was also attenuated by
`0.035 × activity × breath`; at default activity this was roughly 0.016 peak,
then attenuated again by the final master. Merely increasing the UI maximum
could not remove the code clamp.

The final architecture is now:

```text
bounded individual sources
  → Spat path A or B
  → complementary 200 ms A/B crossfade
  → ONE stereo master, 0…1 linear, 150 ms ramp
  → final clip~ ±0.95
  → stereo meters / ezdac~ channels 1–2
```

Source envelopes have a deliberate **0.16 maximum peak** before activity and
breathing. Four simultaneous full-scale envelopes sum to at most 0.64 before
Spat; the partial-rich voice keeps its existing 0.65 harmonic normalization.
There is no new post-Spat compensation multiplier, dB conversion or second
master cap. **Unity master gain is available.**

Startup remains SOUND off / MASTER zero. Enable DSP, then SOUND, then increase
MASTER gradually (try 0.15–0.3 with low hardware volume). A numeric amplitude
setting is not a calibrated headphone loudness. Spat room/filter gains affect
level; verify actual headroom on the intended headphones. The final clip is an
emergency bound, not normal loudness processing or a promise of inaudibility.

## Four identifiable sources

| Source | Experimental identity | Implementation |
|---|---|---|
| 1 | TRACE / SINE | Smoothed sine |
| 2 | PENUMBRA / FILTERED NOISE | White noise through onepole~; soft default cutoff |
| 3 | EDGE A / SOFT CLICK | Existing sine + odd partials, gated at 1.4 Hz with smoothed envelope |
| 4 | EDGE B / SOFT CLICK | Lower filtered sine, gated at 0.83 Hz with a longer soft envelope |

Clicks are bounded tonal pulses, not full-scale impulses. BASE Hz affects the
tonal voices; the noise voice is not pitched. ACTIVITY controls source level.
Four individual MUTE switches supplement global SOUND. Resolution 1/4 remains
available for the original Max-only exploration. The WebGL engine can request
1–4 active Max voices; the main patch advertises its four-source capacity.
WebGL retains up to eight visual sources when not connected to this engine.

These labels are provisional hearing aids, not final assignments for the artwork.

## Monitoring

The installed source of truth is **IRCAM Spat 5.3.9**.

**DIRECT BINAURAL**

```text
four mono voices → spat5.spat~ /panning/type binaural → stereo master → headphones
```

**VIRTUAL SPEAKERS**

```text
four voices → spat5.spat~ /panning/type knn → 12 speaker feeds
            → spat5.virtualspeakers~ @speakers 12 → stereo master → headphones
```

One `spat5.oper` supplies both renderers' acoustic controls, with one room and
eight internal reverb channels. A filters physical speaker-layout messages;
B receives the actual layout. KNN is the official arbitrary-3D-layout panner
chosen for this asymmetric prototype, not a production-art decision.

The twelve speaker XYZ coordinates are identical in the web state, Spat
reproduction layout and virtual-speaker simulation. F1–F4 are entrance-plane
corners, W1–W4 partition-plane corners and C1–C4 ceiling positions. SUB1 is only
visual/state metadata; there is no thirteenth directional virtual feed or bass
management. Built-in HRTFs are used, without external media/SOFA requirements.
No additional virtual-speaker room preset is imposed.

A selector exists in Max and WebGL. Its coefficients are complementary: A = 1−B.
A short crossfade briefly blends the paths, but they are never both summed at
full gain. Both DSP branches stay instantiated; check CPU before presenting.

## Mappings and ownership

The existing Max matrix remains visible and editable:

| Mapping | Default |
|---|---|
| Centroid → XYZ | ON |
| Area → spread | ON |
| Penumbra → room presence | ON |
| Density → distance | OFF |
| Contour → edge harmonics | OFF |
| Entropy → envelopment | OFF |
| Light azimuth → additional rotation | OFF |

The original Max-only AREA mapping also opens its four-source angular fan,
making width audible without assuming identical native spread in all renderers.
The web explorer uses native spread without this extra fan. Max OFF restores
the documented baseline; Web OFF releases the current value. These are the
two existing exploration behaviours, not a claim of identical mapping engines.

Penumbra uses verified `/source/i/prer`: late-room energy. Entropy uses
`/source/i/env`: early energy relative to direct sound. ROOM DECAY is shared
room reverberance in perceptual units, not seconds or measured RT60.
The [project notes](PROJECT_NOTES.md) retain the document analysis.

When WebGL or the native Spat inspector changes source parameters, **WEB /
INSPECTOR OWNS POSITION** turns on. The local engine then holds those targets
instead of overwriting them every clock tick. Incoming light/shadow proxies
update the Max diagram/features; source synthesis, local master and mutes
remain available. To use the Max mapping matrix again, first pause web motion,
then click **local**, turn WEB off or choose a Max experiment preset.

The five original presets remain: NEUTRAL, NARROW_SHADOW, WIDE_PENUMBRA,
STRONG_EDGE and UNSTABLE. They preserve local sound/master settings.
No real camera analysis, optical simulation or robot hardware control exists.

## OSC configuration and feedback

One persistent configuration file: [webgl/bridge/config.json](webgl/bridge/config.json).
The web client, bridge and main Max initialization read these defaults.

| Service | Default |
|---|---|
| Vite HTTP | 127.0.0.1:5173 |
| Browser ↔ bridge WebSocket | TCP 8081 |
| Bridge → Max | UDP 9000 |
| Max → bridge | UDP 9001 |

UI port changes are temporary and must be matched in Max. For repeatable setup,
edit the shared JSON, restart the bridge and reopen the patch. The main return
sender targets 127.0.0.1. LAN use needs deliberate return-IP/binding changes;
this prototype is local and unauthenticated, not an Internet service.

Native controls are centralized in `SpatOscAdapter`: source XYZ/spread/dist/
prer/env and speaker XYZ. Max returns source positions, spread, room presence,
envelopment, selected source, monitoring mode, effective master state and the
complete speaker layout. Native inspector feedback is converted to XYZ through
the official `spat5.converter` before returning to the browser.

Custom semantic paths are under `/dotarea/`: robot j1…j6, actual light XYZ,
target/intensity, shadow centroid/area/penumbra/density/entropy, motion
play/stop/speed/preset, listener, monitoring mode, source count/selection and
master-state telemetry. Custom motion data is metadata in Max; the web motion
engine produces the changing actual source/light controls. No network command
can enable DSP, SOUND or raise MASTER.

State comparison, origin tags, four-decimal diff caching and a synchronous
Max feedback guard prevent loops. Native edits disable affected web mappings;
return snapshots do not. UDP is best-effort, with periodic supported-state
requests. The full schema and motion/preset instructions are in the web README.

## Validation and maintenance

```sh
node validate_patch.js
cd webgl
npm test
npm run audit:spat
npm run validate:max
npm run build
node scripts/smoke.mjs
```

The smoke check needs the development server running; it checks HTTP and
WebSocket, not WebGL rendering or Max sound. No deployment was performed.

The original user-saved patch is preserved semantically in
`validation/pre_finishing_main.maxpat`. `finish_patch.js` applies targeted,
idempotent structural updates to the actual current patch and prints JSON.
The old `build_patch.js` is historical: **do not regenerate the main patch
from that older builder**, which predates user edits and this integration.

Official references used include Spat basic/binaural tutorials; oper, pan~,
spat~, viewer, converter, osc.route/ignore/udpreceive/udpsend and
virtualspeakers~ help/reference files. No official package files, preferences,
audio devices, repositories or hosted services were modified.
