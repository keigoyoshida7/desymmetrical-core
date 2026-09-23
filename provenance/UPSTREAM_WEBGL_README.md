# φ / De-symmetrical Adaptation — WebGL spatial prototype

The browser visualizes and edits an installation; **Max + IRCAM Spat 5 produce all audio**. No browser audio engine, robot hardware connection, optical analysis or production-control claim is included. Existing Dot Area Max patches and the installed Spat package have not been changed by this web implementation.

## Start here

Use Node **22.12 or newer**. This machine already has 22.22.2; `.nvmrc` selects it.
The default Node 20.10 on this machine is too old for the selected Vite version.

```sh
cd webgl
nvm use 22.22.2
npm install
npm run dev
```

Open **http://127.0.0.1:5173** in desktop Chrome. `npm run dev` starts both Vite
and the OSC bridge; Ctrl-C stops both. Dependencies are local, with a lockfile.
If `nvm` is unavailable in your shell, use your already installed compatible
Node; do not install anything globally for this application.

Other commands:

| Command | Purpose |
|---|---|
| `npm run web` | Web development server only |
| `npm run osc` | OSC bridge only |
| `npm run typecheck` | Strict TypeScript checks |
| `npm run build` | Typecheck and production bundle in `dist/` |
| `npm run preview` | Serve the build, normally port 4173; run the bridge separately |
| `npm test` | Model, automation, Max-controller and real UDP/WebSocket tests |
| `npm run validate:max` | Recursive Max geometry, patchcord and portability validation |
| `npm run audit:spat` | Read-only syntax audit against the installed Spat package |

## Connect Max safely

1. Connect headphones and lower the hardware output volume. Stop other test
   patches that might compete for OSC ports or generate audio.
2. Open [../dot_area_spat_explorer.maxpat](../dot_area_spat_explorer.maxpat)
   in Max 9 with the installed Spat **5.3.9**. Keep its JS file beside it.
3. Check Max Console for missing objects, JS errors or UDP bind errors. The
   companion starts with SOUND off and MASTER at zero. Max DSP is global and
   may already be running; a zero final master keeps this patch silent. Two master meters are before DAC.
4. In the browser, press **Send scene to Max**. **OSC — CONNECTED** requires return OSC from Max. Otherwise **OSC — DISCONNECTED**
   is shown and the visual tool stays usable in DEMO MODE. Neither a network
   acknowledgement nor a moving marker certifies functioning audio/HRTFs.
5. In Max, enable DSP, then SOUND, then raise MASTER slowly (try 0.15 with low hardware volume; unity is available).
   The browser cannot enable DSP, enable SOUND or change MASTER.
6. Open the detailed Spat inspector using `/window/open`. Move a source in
   either interface and check the other. Native edits release the corresponding
   web mappings, so an active animation does not immediately overwrite them.
7. Compare A and B at low volume. Max crossfades them over 200 ms. MASTER is
   ramped over 150 ms **after both paths**, including their reverb tails.

The main patch keeps four distinct references: sine, filtered noise and two
bounded soft-click timbres. It reports a four-source capacity to the web client.
WebGL still supports up to eight visual sources in disconnected mode. These are
experimental assignments, not final artwork synthesis. No media is required.
The final `clip~ -0.95 0.95` is a bound, **not** a calibrated headphone limiter.

## Architecture and files

```text
UI / motion / automation ──→ authoritative SceneState ──→ Three.js
                                      ↕
                               SpatOscAdapter
                                      ↕ JSON / WebSocket
                               Node OSC bridge
                                      ↕ UDP / OSC
                         new Max companion / spat5.oper
                                      ↓
                             two Spat audio paths
```

- `src/model.ts`: one scene state, dimensions, coordinate transforms and validation.
- `src/scene.ts`: room, procedural stone, shell, articulated robot, labels,
  source/spread markers, ray, shadow proxy, OrbitControls and drag gizmos.
- `src/robot.ts`, `motion.ts`: shared forward kinematics, bounded target solver,
  deterministic trajectories and six initial motion studies.
- `src/mappings.ts`: explicit shadow proxy and seven optional relationships.
- `src/osc/adapter.ts`: centralized native/custom OSC schema and state translation.
- `src/osc/client.ts`: connection, diffs, 20 Hz transmission and bounded monitor.
- `src/main.ts`, `style.css`: lightweight custom UI; React is unnecessary here.
- `src/storage.ts`: validated presets and timestamped full-scene automation.
- `bridge/`: configurable Node `ws` + `osc-js` UDP bridge.
- `max/`: earlier standalone eight-sine comparison companion. The finished
  **main patch in the parent directory is now the demo engine**; do not open
  both, because they compete for UDP9000.
- `scripts/`, `tests/`: launcher, reproducible Max builder, validation and tests.
- `PLAN.md`, `VALIDATION.md`: implementation decisions and actual test status.

Installed dependency versions at validation: Three.js 0.180.0, TypeScript 5.9.3,
Vite 7.3.6, osc-js 2.4.1, ws 8.21.3. The lockfile pins the resolved installation.

## Physical assumptions

The three supplied PDFs and the prior Dot Area prototype were inspected before
coding. The venue rider resolves the initially uncertain depth:

- Room **3.30 W × 1.70 D × 2.60 H m**, editable. The partition is at X = 0.75 m,
  separating 2.40 m exhibition width from a 0.90 m service/display bay.
- Stone **512 W × 354 D × 319 H mm**, a normalized irregular procedural mesh,
  centred at X = −0.45 m. It is not a scan of the actual Asama stone.
- Acrylic **1900 W × 500 D × 715 H mm**, a transparent surface with a 319 mm
  straight section and a 396 mm half-ellipse rise. No optical refraction model.
- Robot on the rear wall, using a deliberately generic six-axis hierarchy.
  Link dimensions, joint limits and wall attachment are **visual assumptions**,
  not measured UR12e geometry or industrial kinematics.

F1–F4 occupy upper/lower corners of the entrance plane; W1–W4 occupy upper/lower
corners of the partition plane; C1–C4 occupy ceiling corners of the exhibition
zone. This follows the later Cotec arrangement, not three horizontal rows
inferred from the earlier screenshot. Exact inset positions are editable
prototype choices, not surveyed speaker coordinates. SUB1 is shown and saved
but **has no DSP feed or bass management** in this headphone comparison.

## Coordinates and editing

World units are metres: **X right, Y front/entrance, Z up**. The floor centre is
the origin. Three.js receives `[X, Z, -Y]`. UI azimuth and listener yaw are
clockwise, with zero facing +Y. Only native Spat **XYZ** coordinates are sent;
the UI does not assume that its azimuth convention is Spat's convention.

The adapter subtracts the listener position and rotates by listener yaw for
**both sources and all twelve speakers**. Incoming Spat XYZ uses the inverse
transform. Moving the listener therefore changes the relative acoustic scene.
The native inspector's listener is locked at the relative origin: edit the
world reference in the web interface to avoid applying the transform twice.

- Orbit or zoom the central view. 3D resets the camera; TOP, FRONT, SIDE and
  LISTENER choose oriented perspective views. Focus selection changes the target.
- Select sources by clicking their markers or S1…S8. Drag the XYZ gizmo or edit
  world/polar coordinates. Direct spatial edits disable position-related mappings.
- Add up to eight visual sources offline; the connected main engine permits four.
  Removing a source renumbers the remaining IDs sequentially.
- Open Loudspeakers & listener, uncheck **Lock speakers**, select F/W/C/SUB and
  drag or edit XYZ. Reset speakers to room recalculates the proposal layout.
  Speakers visually aim at the reference listener. Changing room dimensions
  does not silently erase edited speaker positions: reset explicitly if wanted.
- Select the listener to edit XYZ/yaw. Listener view is a camera snapshot, not
  head tracking. Source halo size is a schematic spread indicator, not metres. The UI is greyscale;
  restrained red/green/blue differentiate objects in the scene. INFO opens the
  concise credits, navigation, mapping and audio explanation.

## Robot, light and motion

`base → J1 → J2 → J3 → J4 → J5 → J6 → end effector → point light` is a real
hierarchical transform chain. Manual joint sliders move the attached light.
J6 is a wrist roll; a point light has no physical beam orientation, but the
end-effector arrow makes the joint orientation visible.

Target mode uses a small iterative CCD visualization solver. Target XYZ or
light azimuth/elevation/distance is measured relative to the stone reference
`[-0.45, 0, 0.16]`. The gold target is distinct from the **actual attached light**.
The readout reports actual XYZ and target error. Unreachable targets remain
visible; the light is never detached or falsely snapped to them. The solver
limits visual joint changes to 35°/s; this is **not a safety limit**.

Modes: MANUAL, CIRCLE, ELLIPSE, ORBIT, FIGURE 8, SLOW SCAN, PENDULUM,
RANDOM SMOOTH and KEYFRAMES. Random Smooth is a deterministic periodic Fourier
curve, so it is repeatable. Controls include play/pause/stop, phase, speed,
duration, amplitude, radius, height, XYZ centre, smoothing, easing, direction
and loop/once/pingpong. Pause holds the actual joints; Stop resets phase and
the target to the start. Target mode may settle toward a new target even when
the trajectory is not playing. Joint controls return to manual operation.

Initial motion studies:

| Study | Duration | Character |
|---|---:|---|
| 01 SLOW ORBIT | 80 s | Small, gently modulated orbit |
| 02 LOW ELLIPSE | 70 s | Lower light target, 0.65 m nominal height |
| 03 HIGH ELLIPSE | 90 s | Higher target, 1.25 m nominal height |
| 04 FRONT BACK SCAN | 55 s | Predominantly front/back movement |
| 05 SLOW FIGURE 8 | 100 s | Two-lobe path |
| 06 DISSYMMETRIC ORBIT | 85 s | Deliberately perturbed radial symmetry |

Parameters are editable while playing. Keyframes are 2–64 world XYZ points;
add the current target or edit the JSON textarea and Apply points. They use
piecewise interpolation plus the selected easing, target smoothing and joint
rate bound. Nonmatching loop endpoints can create a target discontinuity;
use pingpong or matching endpoints for continuous loops. No collision checking,
reachability planner or hardware commands exist.

## Shadow / Spat mapping

The fixed camera/TouchDesigner analysis is **not connected**. The viewport has
real-time shadow mapping plus a separate light-to-stone ray, opposite shadow
arrow and translucent footprint. These schematic features are **not measured
from rendered pixels** and are not physical optics.

CURRENT PROPOSAL mappings are enabled initially:

| Input | Output | Default range |
|---|---|---|
| Centroid | Source world XYZ, small regional X offsets | −1…1 → −1…1 m per axis |
| Area | Native Spat spread | 0…100% |
| Penumbra | Per-source room presence `/prer` | 15…75 perceptual units |

EXPERIMENTAL mappings start off:

| Input | Output | Default range |
|---|---|---|
| Density | Source/listener distance | 0.5…4 m |
| Entropy | Envelopment `/env` | 10…75 perceptual units |
| Light azimuth | Global position-angle bias | 0…360° additional range |
| Light distance, normalized by 3 m | Source/listener distance | 0.5…4 m |

Each row has an enable switch, editable output minimum/maximum and a live
input → result readout (S1 for multi-source results). Reversing endpoints
inverts the mapping. OFF **releases the current value**, rather than restoring
a hidden baseline. Light-distance mapping overrides density-distance mapping
if both are enabled. Final distance is bounded to 0.35…8 m; spread to 0…100,
room/envelopment to 0…85. Direct source parameter edits release that mapping.
Native spread depends on the rendering algorithm; there is no extra hidden
multi-source width fan in this web companion. Compare its effect in A and B.

For transparency, derived features use actual light position `(x,y,z)`, intensity
`I`, distance `d` from the stone and `a = atan2(x + 0.45, y)`:

```text
centroid = (−0.45 − 0.6 sin(a), −0.45 cos(a), 0.55)
area     = clamp01(0.2 + 0.25 / (d + 0.2))
penumbra = clamp01(0.15 + 0.25 z)
density  = 0.2 + 0.7 I
entropy  = 0.2 + 0.3 (0.5 + 0.5 sin(3a))
```

Editing a feature switches to manual, retaining the current other features.
Room presence changes late-reflection/reverberant **energy**, not RT60.
Envelopment changes early room energy relative to direct sound. Shared room
reverberance and other expert settings remain in the native Spat inspector.

## OSC configuration and schema

Defaults in `bridge/config.json`, editable during a session in OSC connection:

| Endpoint | Default |
|---|---|
| Browser → bridge | `ws://127.0.0.1:8081` |
| Max host | `127.0.0.1` |
| Max receives / bridge sends | UDP **9000** |
| Max sends / bridge receives | UDP **9001** |

UI port changes are in memory; edit the config file for persistent defaults.
Match both ports in Max. This is a local, unauthenticated development bridge;
do not expose it to the Internet. It binds loopback and accepts local browser
origins. A remote Max host can be configured, but return binding/firewalls and
the companion sender IP must also be adjusted deliberately for that topology.
Multiple active browsers can contend for the same scene: use one controller.

Browser JSON:

```json
{"type":"osc","messages":[{"address":"/source/1/xyz","args":[0.4,1.0,0.2]}]}
```

Native Spat messages, verified against installed help/reference files:

| Address | Arguments | Behaviour |
|---|---|---|
| `/source/i/xyz` | 3 floats, metres | Bidirectional, listener-relative; i = 1…4 in the main engine (adapter supports eight) |
| `/source/i/dist` | 1 float, metres | Accepted from Max; UI distance normally sends resulting XYZ |
| `/source/i/spread` | 1 number, percent | Bidirectional |
| `/source/i/prer` | 1 number, perceptual scale | Bidirectional room presence |
| `/source/i/env` | 1 number, perceptual scale | Bidirectional envelopment |
| `/speaker/i/xyz` | 3 floats, metres | Accepted from Max; i = 1…12 |
| `/speakers/xyz` | 36 floats | Bidirectional complete listener-relative speaker layout |

Custom installation namespace (world coordinates, not native Spat messages):

| Address | Arguments | Role |
|---|---|---|
| `/dotarea/robot/j1` … `/j6` | degrees | Joint state; incoming edits select manual joints |
| `/dotarea/light/xyz` | X Y Z | Actual attached-light telemetry; not a position command |
| `/dotarea/light/target/xyz` | X Y Z | Target state / incoming visualization target command |
| `/dotarea/light/intensity` | 0…1 | Bidirectional visual intensity |
| `/dotarea/shadow/centroid` | X Y Z | Proxy/manual feature; incoming edit selects manual |
| `/dotarea/shadow/area`, `/penumbra`, `/density`, `/entropy` | 0…1 | Proxy/manual features |
| `/dotarea/listener/xyz`, `/dotarea/listener/yaw` | XYZ / degrees CW | World reference |
| `/dotarea/subwoofer/xyz` | X Y Z | SUB1 metadata only |
| `/dotarea/source/count` | integer 1…4 for main | Activate the corresponding fixed Max sources |
| `/dotarea/monitoring/mode` | `direct` or `virtualspeakers` | Crossfade request and return acknowledgement |
| `/dotarea/state/request` | none | Request current supported state |
| `/dotarea/motion/play`, `/stop`, `/speed`, `/preset` | bool / trigger / multiplier / name | Motion intent metadata; the browser generates changing poses |
| `/dotarea/source/selected` | integer | Bidirectional selected source |
| `/dotarea/master/state` | SOUND, gain, effective gain | Read-only local Max master telemetry |
| `/dotarea/capabilities/sources` | integer | Main Max reports 4 |
| `/dotarea/status` | `ready` | Companion control-path heartbeat, not DSP certification |

The companion receives FullPacket OSC using `spat5.osc.udpreceive`, routes
**explicit addresses** through `spat5.osc.route` and restores their names with
`prepend`. Custom robot/light/shadow messages are stored/echoed as metadata;
they never reach a physical robot. The web mapping layer generates the native
source controls. Incoming custom feature edits recompute those derived controls.

`spat5.oper` outlet 0 controls audio. Outlet 1 → `spat5.converter /format xyz`
→ explicit supported-state router → UDP returns native inspector changes.
All twelve actual state speaker positions feed both the multichannel renderer
and `spat5.virtualspeakers~`; no fixed circle is substituted.

The main Max patch displays WEB ownership while native spatial targets are held.
Pause web motion and click **local** in Max to resume its original mapping matrix.
Its original standalone area-to-fan mapping remains distinct from native web spread.

Change origin tags, four-decimal diff caching, recent-message echo tags and a
synchronous Max feedback guard prevent control loops. Identical returned
snapshots do not disable mappings. A 3 s state request recovers supported state
after packet loss/reconnect. The web scene is sent on connection and on explicit
Send scene; native edits after that are authoritative for the supported fields.
UDP has no transactional guarantee. Native advanced parameters outside the
listed schema are not mirrored to web presets.

## Two different headphone approaches

**DIRECT BINAURAL — A**

Sound sources are rendered directly to binaural using HRTFs:

```text
4 mono test inputs → spat5.spat~ /panning/type binaural → L/R
```

**VIRTUAL SPEAKERS — B**

Spat first renders the scene for the intended multichannel loudspeaker setup.
The resulting loudspeaker feeds are then passed to `spat5.virtualspeakers~`,
which binaurally simulates each loudspeaker position over headphones:

```text
4 inputs → spat5.spat~ /panning/type knn → 12 speaker feeds
         → spat5.virtualspeakers~ @speakers 12 → L/R
```

These are conceptually different: B includes the chosen loudspeaker rendering
stage and layout before headphone simulation. KNN is used because the verified
Spat implementation supports arbitrary 3D layouts, including this asymmetric
front/partition/ceiling arrangement. It is a prototype choice, not the final
production panner. Neither mode simulates surveyed room acoustics.

Both paths use one shared-room control model with eight internal channels;
both stay instantiated during switching. The direct branch filters physical
speaker-coordinate messages before its two-output renderer. Built-in HRTFs
are used; no SOFA file is required. SUB1 is excluded from the twelve virtual
speakers. The UI highlights the twelve speakers in mode B and displays the
signal-flow distinction; an acknowledgement confirms Max received the mode.

## Save discussion experiments

Presets store robot joints/control/target, motion parameters, light, room,
speakers, listener, sources, mappings and monitoring mode. Give an experiment
a name and Save; an existing name is replaced. Load/Delete use the library.
Up to 40 scenes are stored in this browser's localStorage. Export JSON creates
a portable backup; Import replaces the library after validation. Imported or
loaded motion is paused. Max audio enable/master are never part of a web preset.

Record captures the full scene at approximately 10 Hz, up to 3000 frames.
Playback interpolates numeric parameters and replays them through the same
state/OSC path. Source-count changes are discrete. Export/import uses versioned
timestamped JSON, with a 25 MB import limit. Recording is session memory until
exported; it contains parameters, not sound or images. Native Max expert settings
outside the supported OSC schema are not recorded.

## Suggested meeting demonstration

1. Start at very low headphone level, select A, and show the stone/shell dimensions.
2. Choose 01 SLOW ORBIT, then Play. Show target versus actual light, the opposite
   shadow vector, moving source markers, and the corresponding Spat inspector.
3. Pause. Switch Shadow features to manual; vary AREA, then PENUMBRA separately.
4. Disable/re-enable a mapping; edit endpoints to invert or reduce the relation.
5. Try density-distance and entropy-envelopment one at a time.
6. Compare A/B. Unlock and move one speaker in B; explain that A does not render
   through the twelve-speaker layout. Move listener/yaw to change the reference.
7. Try the dissymmetric orbit and a figure 8. Record a short study, replay it,
   and export its parameter history or save a named preset.
8. Ask which relationships sound meaningful before committing to voice count,
   robot paths, the production panner, real camera features or synthesis design.

## References and limitations

Project material reviewed: `Dot-Area_Keigo-Yoshida-v2.pdf`,
`De-symmetrical_Adaptation_Sónar_KNOWCASE_2027_v24.pdf`,
`Dossier Técnico KNOWCASE_Cotec.pdf`, the supplied screenshot, the existing
`../dot_area_spat_explorer.maxpat` and the six user patches in `../../examples`.
The earlier analysis is in [../PROJECT_NOTES.md](../PROJECT_NOTES.md).

Installed official source of truth: `/Users/guillaume/Documents/Max 9/Packages/spat5`,
version **5.3.9**. Relevant paths within that package:

- `examples/tutorials/spat5.tuto-basic-1.maxpat`
- `examples/tutorials/spat5.tuto-binaural-1.maxpat`
- `help/spat5.oper.maxhelp`
- `help/spat5.pan~.maxhelp` (spread, including KNN discussion)
- `help/spat5.virtualspeakers~.maxhelp` (six-channel example adapted to twelve)
- `help/spat5.converter.maxhelp`
- `help/spat5.osc.udpreceive.maxhelp`, `help/spat5.osc.udpsend.maxhelp`
- `help/spat5.osc.route.maxhelp`, `help/spat5.osc.ignore.maxhelp`
- Corresponding `docs/ref/refpages/spat5-ref/*.maxref.xml`, especially oper,
  spat~, pan~, virtualspeakers~, converter and OSC objects.

Web APIs were checked in the [official Three.js TransformControls documentation](https://threejs.org/docs/pages/TransformControls.html),
[Vite guide](https://vite.dev/guide/) and [osc-js repository](https://github.com/adzialocha/osc-js).

Known limits: generic robot with no collisions or hardware safety; synthetic
shadow features; 1–8 sine references rather than 64–128 voices; no subwoofer
DSP; no head tracking; no final speaker calibration, RT60 measurement or accurate
material optics; UDP is best-effort; A/B runs both renderers and needs a CPU check
in Max. Desktop layout is the target. **Browser visual/runtime QA and Max DSP
listening must still be performed manually; see VALIDATION.md for exact status.**

## Finishing-pass handoff

See [../DEMO_CHECKLIST.md](../DEMO_CHECKLIST.md) for the live meeting sequence,
OSC/port/no-audio troubleshooting and Google Meet audio-capture check. The
previous standalone companion in `max/` remains a historical alternative and
retains its older sine palette / lower master cap; **use the finished parent
patch for this meeting**. No deployment, publishing or global installation occurred.
