# De-symmetrical Core: web and local Max setup

Artist: **Keigo Yoshida**. Original spatial audio prototype: **[Guillaume Piccarreta](https://github.com/gllmp)**, [source repository](https://github.com/gllmp/desymmetrical-adaptation).

[Public visual app](https://keigoyoshida7.github.io/desymmetrical-core/) · [Core requirements / assumptions](../CORE_SPEC.md)

## Start

Node.js 22.12+:

```sh
npm ci
npm run dev
```

Open `http://127.0.0.1:5173`. This starts Vite and one OSC bridge. Browser interaction works without Max. The public website is a visual preview and intentionally does not automatically contact localhost. Use the local URL for audio.

## Audio with Max / IRCAM Spat 5

1. Open `../dot_area_spat_explorer.maxpat` in Max 9 with IRCAM Spat 5 installed. Keep its three adjacent JS files alongside it. Use this Core fork's patch and scripts together.
2. Keep hardware monitoring volume low. The patch starts with SOUND off and MASTER zero. The browser cannot change DSP/SOUND/MASTER.
3. In the web app press **Send scene to Max**. **OSC — CONNECTED** requires a recent Max reply, not just a WebSocket connection. A connection does not certify audible output.
4. Enable DSP and SOUND locally in Max; raise MASTER gradually. Check source and output meters and listen on the intended system.
5. Compare **A · Direct binaural** and **B · Virtual speakers**. Path B renders 17 directional feeds into a 17-speaker binaural simulation. SUB1 has no DSP channel or bass management. It must not be counted as an eighteenth directional virtual speaker.
6. Main patch source identities remain the upstream four voices: sine, filtered noise, and two bounded soft-click timbres. CH17 is a moving reproduction speaker, not a seventeenth synthesis voice.

Do not open the earlier `max/dot_area_webgl_bridge.maxpat` companion alongside the main patch: they compete for UDP 9000. The companion retains its eight test voices for comparison. Its speaker count is also 17.

Default ports: browser/bridge WebSocket 8081; bridge → Max UDP 9000; Max → bridge UDP 9001. Shared configuration: `bridge/config.json`. The bridge accepts localhost origins and binds to loopback. It is not an Internet service. Public HTTPS-to-localhost control is not a supported deployment route.

## Editing and persistence

Room, acrylic, stone, driver/baffle and layout parameters are in the side panels. Individual wall speakers can be unlocked and edited by XYZ or drag handles with EDIT ON. CH17 follows the arm; change its offset instead. Room edits preserve individual speaker positions; reset the wall layout explicitly when desired.

Local presets use `desymmetrical.core.presets.v2`. Export/import and recorded automation contain `version:2, edition:"core"`; upstream v1 scenes are not silently migrated. Record captures scene parameters, not sound or video.

Motion studies and shadow mappings remain exploratory. The shadow features are computed proxies, not measurements of the rendered image. The arm, cameras and acrylic do not control hardware or simulate optical physics.

## Validation and publishing

```sh
npm test
npm run build
npm run validate:max
node ../validate_patch.js
npm run publish:pages
```

`publish:pages` prepares `../docs/`. Commit source and docs, then push to the default branch. GitHub Pages must be configured for `main /docs`. See [../VALIDATION_CORE.md](../VALIDATION_CORE.md) for checks actually run and limitations.

Original detailed protocol and historical Adaptation behavior are preserved in [../provenance/UPSTREAM_WEBGL_README.md](../provenance/UPSTREAM_WEBGL_README.md). Its 12-speaker geometry and v1 file format describe the upstream version, not this Core edition.
