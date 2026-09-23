# Core v7: specification and editable assumptions

Source: `De-symmetrical_Core_EN_v7.pdf`, supplied by Keigo Yoshida. Page numbers below are one-based PDF pages. The PDF itself is not included in this public repository.

| Element | Source evidence | Core implementation |
|---|---|---|
| Exhibition enclosure | p.7: 7,000 × 7,000 × 7,000 mm, explicitly provisional | 7 × 7 × 7 m default; each dimension editable |
| Blackout walls | p.6: “WALL hight:5400mm”; p.18 says venue/construction details unconfirmed | Independent 5.4 m wall-height setting; not conflated with the 7 m enclosure height |
| Entrance | p.6: 2,000 mm side corridor, 1,600 mm opening; p.9/p.16: extra light-lock wall | Editable 2 m corridor and 1.6 m opening on the left side |
| Wall channels | pp.7/11: four on each of four walls, 16 total | Two horizontal positions × two height tiers on each wall. CH1–4 rear, CH5–8 front, CH9–12 right, CH13–16 left |
| Arm channel | pp.7/11: CH17 beside the light at the arm end | Follows the computed end effector, with editable XYZ offset |
| Subwoofer | pp.7/14: Genelec 7040A, one | Editable visual cabinet and XYZ metadata. No DSP feed or bass management |
| Main drivers | p.14: Eminence ALPHA4-8, 116.1 mm diameter, custom enclosure TBC | Round driver with cone/surround in a custom-baffle proxy. Diameter and baffle size editable |
| Acrylic | pp.3/16: trapezoidal base and top, 32.5° slope; sizes provisional | Four sloping faces plus top; parallel inward offset derives the top polygon. Model convention measures face slope from the floor. All lengths and orientation editable |
| Floor | pp.9/16: black carpet, white only beneath acrylic | Black floor with white inset matching acrylic base |
| Arm support | pp.7/16: overhead support / suspended arm; fixing and orientation TBC | Artist-directed vertical ceiling support over the acrylic, with a downward shoulder and bent six-joint arm; no measured industrial kinematics |
| Cameras | pp.7/16: two shadow cameras plus Camera 3 | Three visual markers; no real capture or analysis |
| Sound | Original Max prototype and Core p.11 channel plan | Four sources, direct binaural or 17-speaker virtual monitoring, with source/layout OSC exchange |

## Values chosen for visualization

The document does not specify acrylic lengths, the exact stone size, surveyed speaker coordinates, baffle exterior dimensions, or robot joint geometry. The app labels these as provisional. Initial values include:

- Acrylic: front base width 2.70 m, rear base width 1.40 m, depth 1.40 m, height 0.35 m, slope 32.5°, nominal thickness 8 mm. Thickness is represented by nominal panel slabs; joins, fabrication tolerances and optical material behavior are not simulated.
- Stone proxy: 0.512 × 0.354 × 0.319 m, inherited as an illustrative scale from the earlier prototype. It is not a measurement stated by Core v7.
- Entrance orientation: following the artist's 2026-09-23 direction, the acrylic's long front edge and the stone's defined front face the left entrance (world −X; yaw 90°). Both orientations remain editable. Older Core saves preserve their original stone orientation; the entrance-alignment button applies the new orientation to both objects.
- Wall positions: 3.50 m pair spacing, 0.16 m inset, lower height 1.20 m and upper height 4.20 m. These are editable layout assumptions, not installation instructions.
- Baffle: 0.16 × 0.16 × 0.075 m; driver depth 0.055 m. Only the 0.1161 m outside diameter is taken from the supplied driver specification.
- Generic arm suspension base and link lengths are visualization choices. The default ceiling attachment descends to [0, 0, 1.85] m directly above the acrylic; its first arm segment descends 0.16 m and the remaining joints bend toward the stone. Attachment height and position are editable, with a button to re-centre X/Y over the acrylic. Older saves retain their original side-style shoulder and custom base. No collision checks, mounting-load calculations, robot commands or safety functions exist.

The source mentions golden-ratio composition but does not fully dimension it. The app does not invent a uniquely “correct” golden-ratio solid. The current trapezoid is one adjustable interpretation, with impossible/collapsed top faces rejected.

## Coordinates and audio boundary

Metres; **X right, Y toward the front, Z up**. The room-floor centre is the origin. Sources and 17 directional speakers are transformed into listener-relative XYZ before sending to Spat. SUB1 is never included in the 17-directional-feed bundle. Moving CH17 in the viewport or seeing OSC traffic is not proof of actual sound or hardware movement.

The main Max patch remains a four-source study. The historical companion has eight test voices and should not be opened together with the main patch because it uses the same UDP ports. Neither provides the full production synthesis, hardware loudspeaker calibration, subwoofer processing, measured optical feedback or physical robot control.
