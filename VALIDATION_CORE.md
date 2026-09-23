# Core edition validation

Validated 2026-09-23.

## Automated checks

- `npm test`: **35 passing tests** (28 TypeScript / 7 JavaScript). Model and persistence, acrylic side-slope geometry and invalid shapes, seventeen-channel scene transforms, arm tracking / ownership correction, four-source Max integration, motion replay and real loopback WebSocket-to-UDP routing.
- `npm run build`: strict TypeScript and production Vite build passed. The Three.js bundle is approximately 0.64 MB before gzip; Vite's advisory chunk-size notice is expected.
- `node validate_patch.js`: **18 checks passed**, 508 Max objects and 539 patchcords.
- `npm run validate:max`: companion structure passed, 296 objects / 429 patchcords, no port errors or overlaps.
- `npm run audit:spat`: **24 syntax checks passed** against the locally installed IRCAM Spat 5.3.7 reference material.

## Chrome interaction checks

- Default Core scene rendered with 16 wall speakers, CH17, SUB1, stone, trapezoidal acrylic and left-side light-lock corridor.
- Changed room width 7 → 8 m and reset wall placement; CH9 X became **3.84 m**.
- Selected CH9 and focused the view; round driver and custom baffle rendered.
- Changed acrylic front width 2.7 → 3 m; top-envelope readout changed to **1.107 × 0.301 m**, and the acrylic geometry updated.
- Saved a preset with those changes, reset the scene, then loaded it: width 8 m and acrylic width 3 m restored.
- Added a fifth source and reset: inspector correctly returned to source 1.
- Selected Slow Orbit, played and paused; joints/light position and phase changed. The displayed target was reached in that sample.
- Switched to 17-feed virtual-speaker mode and checked INFO credits and links. No application errors were reported by the browser console during these interactions.

## Scope of verification

This verifies browser behavior, model mathematics, OSC transport and Max patch structure/syntax. Actual sound, HRTF rendering, hardware loudspeaker outputs, acoustical calibration, camera inputs and robot hardware were **not** tested. SUB1 has no DSP output. The prototype has four source voices; the artwork's full 257-source synthesis is not implemented.

Dimensions explicitly provisional in Core v7 remain provisional. Unspecified lengths and construction geometry are editable assumptions, as detailed in CORE_SPEC.md.
