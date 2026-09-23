# De-symmetrical Core

An interactive installation study for **De-symmetrical Core**, by **Keigo Yoshida**. Adapted from the original spatial audio prototype by **[Guillaume Piccarreta](https://github.com/gllmp)**, [gllmp/desymmetrical-adaptation](https://github.com/gllmp/desymmetrical-adaptation). This fork preserves the upstream Git history and attribution.

**[Open the web app](https://keigoyoshida7.github.io/desymmetrical-core/)** · [Core specification and assumptions](CORE_SPEC.md) · [Local audio setup](webgl/README.md)

## Core edition

- Provisional **7 × 7 × 7 m** room, independently editable **5.4 m blackout walls**, **2 m entrance corridor** and **1.6 m opening**.
- **16 wall speakers**, arranged in two horizontal positions and two height tiers on each wall, plus **CH17 attached to the moving arm** and a separate subwoofer placeholder.
- Round **Eminence ALPHA4-8, Ø116.1 mm** driver representation in editable custom baffles, replacing the original generic rectangular speaker symbols.
- An acrylic form with **trapezoidal base and top, with a 32.5° face slope**, replacing the upstream arched shell. Widths, depth, height, angle, position and orientation are editable. The white carpet inset follows the base footprint.
- Suspended arm visualization, three camera placeholders, source editing, motion studies, shadow-feature mappings, recording and JSON presets.
- Isolated Core v2 presets and recordings. Upstream scene files are rejected rather than silently changing the Core installation.
- Core Max/Spat headphone comparison uses **17 directional speaker feeds**. The main engine retains four source voices. The subwoofer is visual/state metadata, without an audio feed or bass management.

The source is `De-symmetrical_Core_EN_v7.pdf`. That document explicitly leaves several construction details provisional. Acrylic lengths, custom baffle dimensions, mounting heights, exact speaker XYZ and generic arm dimensions in this app are **working assumptions**, editable in the interface. The procedural stone is an illustrative proxy, not a scan. See [CORE_SPEC.md](CORE_SPEC.md) for the source-to-implementation mapping.

## Use the web app

1. Open the [public app](https://keigoyoshida7.github.io/desymmetrical-core/) in Chrome. The complete visual study works without a login, Max, or a server on your computer.
2. Orbit or zoom the scene, or choose **3D / TOP / FRONT / SIDE / LISTENER**.
3. Edit **Exhibition space**, **Acrylic**, and **Speaker construction**. Changing wall-layout parameters recalculates the wall speaker arrangement. Room dimensions preserve manual positions; use **Reset 16 wall speakers to room** to fit them to the new room.
4. Select **CH1–CH17 / SUB1** in **Loudspeakers & listener**. Unlock speakers for XYZ editing. Enable **EDIT ON** for drag handles. CH17 follows the arm; edit its relative offset in Speaker construction.
5. Choose a **Motion study** and press **Play**. Pause and Stop are available. Presets save to this browser; **Export JSON** provides a portable copy.

The public website is a **visual study**. It does not produce browser audio, measure shadows from cameras, simulate acrylic optics, or control robot hardware. For audio, run this repository locally with Max and IRCAM Spat 5. The four-voice prototype is not the full 257-source production synthesis described by the artwork proposal.

## Run locally

Use Node.js 22.12 or newer.

```sh
cd webgl
npm ci
npm run dev
```

Open `http://127.0.0.1:5173`. One command starts the Vite application and local OSC bridge. Open `dot_area_spat_explorer.maxpat` in Max 9, with `dot_area_engine.js`, `dot_area_view.js`, and `dot_area_link.js` beside it. See [webgl/README.md](webgl/README.md) for the audio workflow. Keep hardware output low, enable sound locally in Max and raise master gradually. The browser cannot enable DSP, enable SOUND or raise MASTER.

The public HTTPS site does not connect to your local bridge automatically. Use the localhost app for audio; the bridge accepts localhost origins only. Do not expose the OSC bridge to the Internet.

## Build and publish

```sh
cd webgl
npm test
npm run build
npm run publish:pages
```

`publish:pages` builds the web app and copies only the static distribution to `docs/`. Commit the matching source and `docs/` together, then push to `main`. GitHub Pages serves `main /docs`. Relative asset URLs allow the app to work under the repository path. No paid hosting or hosted backend is required.

## Credits and provenance

- **Artist / De-symmetrical Core:** Keigo Yoshida.
- **Original spatial audio prototype:** **Guillaume Piccarreta — https://github.com/gllmp**.
- **Original repository:** https://github.com/gllmp/desymmetrical-adaptation.
- **Upstream starting commit:** `5cbc4d4689eeca34cdbb48cc28555e62ee1e52a2`.
- **Spatial audio:** Max / IRCAM Spat 5; **3D rendering:** Three.js.

Original documentation is preserved in [provenance/](provenance/); it describes the earlier Adaptation version and does not override Core settings. No new license is asserted for upstream work; existing authorship is retained.
