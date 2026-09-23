# Core edition validation

Validated 2026-09-23.

## Automated checks

- `npm test`: **42 passing tests** (35 TypeScript / 7 JavaScript). Model and persistence, acrylic side-slope geometry and invalid shapes, entrance-facing rotation, ceiling shoulder geometry / FK consistency and older Core save compatibility, seventeen-channel scene transforms, arm tracking / ownership correction, four-source Max integration, motion replay and real loopback WebSocket-to-UDP routing.
- `npm run build`: strict TypeScript and production Vite build passed. The Three.js bundle is approximately 0.64 MB before gzip; Vite's advisory chunk-size notice is expected.
- `node validate_patch.js`: **18 checks passed**, 508 Max objects and 539 patchcords.
- `npm run validate:max`: companion structure passed, 296 objects / 429 patchcords, no port errors or overlaps.
- `npm run audit:spat`: **24 syntax checks passed** against the locally installed IRCAM Spat 5.3.7 reference material.

## Chrome interaction checks

- Default Core scene rendered with 16 wall speakers, CH17, SUB1, stone, trapezoidal acrylic and left-side light-lock corridor.
- Checked the entrance-facing long edge in the top view and the smaller 10 px object/channel labels. Changed stone yaw 90° → 30°; the entrance-alignment button restored both stone and acrylic to 90°.
- Replaced the fixed name size with a slider and numeric input: default 6 px, range 0.1–18 px. Verified near-invisible names at 0.1 px, persistence after reload, and the slider reaching 18 px. Room dimension text remains unchanged.
- Confirmed the centred vertical ceiling support and downward folded arm in side and close front views. The centring button restores base X/Y to the acrylic centre while retaining 1.85 m attachment height. Slow Orbit ran with changing joints and light position, reporting 0 mm target error in the sampled pose, and paused normally. No browser console errors during these checks.
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
